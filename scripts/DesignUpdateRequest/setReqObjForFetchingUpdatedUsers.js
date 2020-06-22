/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/
/*var workflowInstanceId = $.info.workflowInstanceId ; // for example, "336963b0-3726-49fa-bf0c-87a8f7aabaf8"
var workflowDefinitionId= $.info.workflowDefinitionId; // for example, "scripttaskprocess"*/
var startedByUserId = $.info.startedBy; // for example, "John"
var businessKey = $.context.businessKey;
var entityIdIndex = businessKey.indexOf("Collaboration");
var entityId = businessKey.substring(0, entityIdIndex);

$.context.reqBody = {
	"entityId":entityId,
	"entityName":"Collaboration",
	"userId":startedByUserId
};
