var startedByUserId = $.info.startedBy;
var businessKey = $.context.businessKey;
var entityIdIndex = businessKey.indexOf("Collaboration");
var entityId = businessKey.substring(0, entityIdIndex);

$.context.reqBody = {
	"entityId":entityId,
	"entityName":"Collaboration",
	"userId":startedByUserId
};
