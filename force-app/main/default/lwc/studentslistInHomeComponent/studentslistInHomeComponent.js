import { LightningElement, track, wire } from 'lwc';
import getStudents from '@salesforce/apex/StudentslistClass.getStudents';
export default class StudentslistInHomeComponent extends LightningElement {
    @track columns = [
        { label: 'Name', fieldName: 'Name' },
        { label: 'Id', fieldName: 'Id'}
    ];
   @track studlist;    
    error;
    @wire(getStudents) 
    students({data,error}){
        if (data) {
            console.log('got DATA');
            this.studlist = data; 
            } else if (error) {
            console.log(error);
            this.error = error;
            }
       } 

}