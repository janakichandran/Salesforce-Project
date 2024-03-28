import { LightningElement, api } from 'lwc';
export default class ChildForParentTochild extends LightningElement {
@api name;
@api department;
renderedCallback() {
    console.log('Hello this is in render');
    console.log(this.name);   
    
}
}