// editor globals

import React from 'react';


export const INLINE_STYLES = [
    {label: () => <span className="flaticon-bold"></span>, style: 'BOLD', tooltip: 'Qalin'},
    {label: () => <span className="flaticon-italic"></span>, style: 'ITALIC', tooltip: 'Qiya'},
    {label: () => <span className="flaticon-underline"></span>, style: 'UNDERLINE', tooltip: 'Tagiga chizilgan'},
    {label: () => <span className="flaticon-text-option"></span>, style: 'CODE', tooltip: 'Monospeys'},
];


export const BLOCK_TYPES = [
    {label: () => <span className="flaticon-inverted-commas"></span>, style: 'blockquote', tooltip: 'Sitata'},
    {label: () => <span className="flaticon-bullets"></span>, style: 'unordered-list-item', tooltip: 'Raqamsiz ro`yxat'},
    {label: () => <span className="flaticon-text-align"></span>, style: 'ordered-list-item', tooltip: 'Raqamli ro`yxat'},
    {label: () => <span className="flaticon-braces"></span>, style: 'code-block', tooltip: 'Kod'},
];


export const HEADER_TYPES = [
    {label: "Heading", style: 'header-one'},
    {label: "Heading", style: 'header-two'},
    {label: "Heading", style: 'header-three'},
    {label: "Heading", style: 'header-four'},
    {label: "Heading", style: 'header-five'},
    {label: "Heading", style: 'header-six'},
]