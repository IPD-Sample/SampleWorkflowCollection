var YOUR_FLP_URL = "<YOUR_FLP_URL>";
var user = $.context.recipientUsers;
var groups = $.context.recipientGroups;
var text = "This is an email notification for an ad hoc work item with priority - " + $.context.adhocTaskPriority;
var taskInstanceId = $.usertasks.usertask1.last.id;

$.context.reqMailBody = {
	"mail": {
		"body": {
			"customText": text
		},
		"task": {
			"name": $.context.adhocTaskSubject,
			"description": $.context.adhocTaskDescription,
			"url": YOUR_FLP_URL + "/sites#WorkflowTask-DisplayMyInbox?InstanceID=" + taskInstanceId + "&SAP__Origin=NA"
		},
		"recipientList": user,
		"recipientGroup": groups
	}
};