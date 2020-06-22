var workflowObject = $.context.WorkflowValidationResponse.workflow;
var arrayToPush = [];
// set viewer Users
if(workflowObject.viewerUsers){
	arrayToPush = workflowObject.viewerUsers.split(",");
	$.roles.viewerUsers = arrayToPush;
}
if(workflowObject.viewerGroups){
	arrayToPush = workflowObject.viewerGroups.split(",");
	$.roles.viewerGroups = arrayToPush;
}
// set context viewer users
if(workflowObject.contextViewerUsers){
	arrayToPush = workflowObject.contextViewerUsers.split(",");
	$.roles.contextViewerUsers = arrayToPush;
}
if(workflowObject.contextViewerGroups){
	arrayToPush = workflowObject.contextViewerGroups.split(",");
	$.roles.contextViewerGroups = arrayToPush;
}
// set admin users*/
if(workflowObject.adminUsers){
	arrayToPush = workflowObject.adminUsers.split(",");
	$.roles.adminUsers = arrayToPush;
}
if(workflowObject.adminGroups){
	arrayToPush = workflowObject.adminGroups.split(",");
	$.roles.adminGroups = arrayToPush;
}
// set context admin users
if(workflowObject.contextAdminUsers){
	arrayToPush = workflowObject.contextAdminUsers.split(",");
	$.roles.contextAdminUsers = arrayToPush;
}
if(workflowObject.contextAdminGroups){
	arrayToPush = workflowObject.contextAdminGroups.split(",");
	$.roles.contextAdminGroups = arrayToPush;
}