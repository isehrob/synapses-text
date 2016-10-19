
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

// link decoration
export function findLinkEntities(contentBlock, callback) {
    contentBlock.findEntityRanges(
        (character) => {
            const entityKey = character.getEntity();
            return (
                entityKey !== null &&
                Entity.get(entityKey).getType() === 'LINK'
               );
            }, callback
    );
}



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
