import { LightningElement, api, wire } from 'lwc';
import getStudentslist from '@salesforce/apex/StudentNameForParentToChildClass.getStudentslist'; 
export default class DemoForParentToChild extends LightningElement {
    @api recordId;
    studlist;
    @wire(getStudentslist, {stId :'$recordId'})
    studentList({data, error}){
        if (data) {
            console.log('++data++'+JSON.stringify(data));
            this.studlist = data; 
            } else if (error) {
            console.log('++error++'+JSON.stringify(error));
            this.error = error;
            }
    }


    get name(){
        return this.studlist[0] ? this.studlist[0].Name : "novalue";

    }
    get department(){
        return this.studentList.data ? this.studentList.data.Department__c : "novalue";

    }
}