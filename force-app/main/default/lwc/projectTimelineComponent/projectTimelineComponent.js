import { LightningElement, api, wire } from 'lwc';
import getprojectNewList from '@salesforce/apex/GetProjectDetailsClass.getprojectNewList';
export default class ProjectTimelineComponent extends LightningElement {
    @api recordId;
    @wire(getprojectNewList, {projectId :'$recordId'})
    projectDetails;
}