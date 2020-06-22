var YOUR_FLP_URL = "<YOUR_FLP_URL>";
$.context.url = YOUR_FLP_URL + "/sites#WorkflowTask-DisplayMyInbox?InstanceID=" + $.usertasks.usertask1.last.id + "&SAP__Origin=NA";
var arrayToPush = $.context.emailList.d.results;
var emailList = "";

for(var i = 0; i < arrayToPush.length; i++){
	if(($.context.recipientUsers).contains(arrayToPush[i].Id)){
		emailList += arrayToPush[i].Email + ",";
	}
}

$.context.emailList = emailList.substring(0, emailList.length - 1);