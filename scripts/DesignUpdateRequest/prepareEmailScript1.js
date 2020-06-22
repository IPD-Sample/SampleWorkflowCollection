var YOUR_FLP_URL = "https://flpsandbox-p1xio9w0if.dispatcher.int.sap.eu2.hana.ondemand.com";

var user = $.usertasks.usertask1.last.recipientUsers;
var text = "This is a Work Item Email notification.";
var taskInstanceId = $.usertasks.usertask1.last.id;

$.context.reqMailBody = {
	"mail": {
		"body": {
			"customText": text
		},
		"task": {
			"name": $.usertasks.usertask1.last.subject,
			"description": $.usertasks.usertask1.last.description,
			"url": YOUR_FLP_URL + "/sites#WorkflowTask-DisplayMyInbox?InstanceID=" + taskInstanceId +  "&SAP__Origin=NA"
		},
		"recipientList": user
	}
};