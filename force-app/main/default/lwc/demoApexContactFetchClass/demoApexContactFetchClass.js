import { LightningElement, api, wire } from 'lwc';
import getContacts from '@salesforce/apex/ContactFetchClass.getContacts';
export default class DemoApexContactFetchClass extends LightningElement {
    @api recordId;
    @wire(getContacts, {projectId :'$recordId'})
    projectDetails;
     

}