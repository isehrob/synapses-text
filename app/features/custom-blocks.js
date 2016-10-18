// custom-block-compoenents


import React from 'react';
import { Entity } from 'draft-js'


export const Link = (props) => {
    const {url} = Entity.get(props.entityKey).getData();
    return (
        <a href={url} style={{textDecoration: 'underline', color: 'blue'}}>
            {props.children}
        </a>
    );
};

const Image = (props) => {
    return <img src={props.src} />;
};

const Video = (props) => {
    return <video controls src={props.src} style={{width: "100%", padding: "20px 50px"}}/>;
};


export const Media = (props) => {
    const entity = Entity.get(props.block.getEntityAt(0));
    const {src} = entity.getData();
    const type = entity.getType();

    let media = null;

    if (type === 'image') media = <Image src={src} />;
    else if (type === 'video') media = <Video src={src} />;

    return media;
}


export const CustomCodeBlock = (props) => {
    return (
        <code style={{display: "block", padding: "20px"}}>
            {props.children}
        </code>
    );
}
