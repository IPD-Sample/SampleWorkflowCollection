{
	"contents": {
		"2a532092-4177-4a16-bd5f-966068c2f037": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "documentreview",
			"subject": "${context.subject}",
			"businessKey": "${context.businessKey}",
			"name": "DocumentReview",
			"lastIds": "3fe525d3-a5b3-401c-83fd-e120f0b9c408",
			"events": {
				"aa88ff0b-0e68-4421-ba14-9f5db0725abb": {
					"name": "StartEvent1"
				},
				"9c130f3b-70cb-4379-8f45-8c7ec3a99b67": {
					"name": "EndEvent2"
				},
				"81de7123-8147-49c3-9328-02bf34627d5f": {
					"name": "EndEvent4"
				}
			},
			"activities": {
				"48f613c3-b6c2-48fd-94b2-8e0f024ff510": {
					"name": "ValidateWFInitiatorForCollaboration"
				},
				"bb69edf4-67af-443a-83b0-d2f4753df592": {
					"name": "SetReqObjForWFValidation"
				},
				"1cadeebe-e094-4270-bfd3-ac78b0ee5a8d": {
					"name": "IsInitiatorValidForCollaboration"
				},
				"f4728a25-98b8-485a-b305-12cb084e4f66": {
					"name": "deleteInstance"
				},
				"600a1819-18cd-4426-b6bd-210e7fa4c827": {
					"name": "SetInstanceLevelPermission"
				},
				"569945bb-4c41-4a3a-bdf1-fdebd407384d": {
					"name": "Update Document"
				},
				"fe34c605-e516-42c9-a359-bc6b0c424f0d": {
					"name": "Approve Updated Document"
				}
			},
			"sequenceFlows": {
				"91ae275e-712a-4010-97b7-c1f660d96c3c": {
					"name": "SequenceFlow2"
				},
				"855c5d79-70fa-4931-ac22-716b2ad0fd5e": {
					"name": "SequenceFlow3"
				},
				"909e654d-1a27-48a2-95db-5f184f09e156": {
					"name": "SequenceFlow6"
				},
				"3bcbc059-bfef-4f19-85b6-5c29bad09b78": {
					"name": "InValidInitiatorSequence"
				},
				"0dc16a19-d6a1-45df-8f54-8febfd864292": {
					"name": "ValidInitiatorSequence"
				},
				"855ccae5-8ade-46ec-bc6a-64af5f3faeb3": {
					"name": "SequenceFlow10"
				},
				"5cc55adb-4692-4b85-98dc-0ed5067b0994": {
					"name": "SequenceFlow24"
				},
				"ddf3fad5-d559-4f47-8cf3-75a9927d0acf": {
					"name": "SequenceFlow25"
				},
				"afd59e5d-2b3c-4bff-b86a-a235dc8261df": {
					"name": "SequenceFlow26"
				}
			},
			"diagrams": {
				"7c6509c4-413c-4235-881b-9f68eaf809ec": {}
			}
		},
		"aa88ff0b-0e68-4421-ba14-9f5db0725abb": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"9c130f3b-70cb-4379-8f45-8c7ec3a99b67": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2",
			"eventDefinitions": {
				"9a3dee6d-0ba3-4b8b-9739-03a3607df6da": {}
			}
		},
		"81de7123-8147-49c3-9328-02bf34627d5f": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent4",
			"name": "EndEvent4",
			"eventDefinitions": {
				"1c157cc6-24dc-4c6f-a4f1-12d6fa4a28d5": {}
			}
		},
		"48f613c3-b6c2-48fd-94b2-8e0f024ff510": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "cpdcWF",
			"path": "/service/validate/int/WorkflowValidation",
			"httpMethod": "POST",
			"requestVariable": "${context.reqBody}",
			"responseVariable": "${context.WorkflowValidationResponse}",
			"id": "servicetask1",
			"name": "ValidateWFInitiatorForCollaboration",
			"principalPropagationRef": "aa88ff0b-0e68-4421-ba14-9f5db0725abb"
		},
		"bb69edf4-67af-443a-83b0-d2f4753df592": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DocumentReview/SetReqObjForWFValidation.js",
			"id": "scripttask1",
			"name": "SetReqObjForWFValidation"
		},
		"1cadeebe-e094-4270-bfd3-ac78b0ee5a8d": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "IsInitiatorValidForCollaboration",
			"default": "0dc16a19-d6a1-45df-8f54-8febfd864292"
		},
		"f4728a25-98b8-485a-b305-12cb084e4f66": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DocumentReview/deleteInstance.js",
			"id": "scripttask2",
			"name": "deleteInstance"
		},
		"600a1819-18cd-4426-b6bd-210e7fa4c827": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DocumentReview/SetInstanceLevelPermission.js",
			"id": "scripttask3",
			"name": "SetInstanceLevelPermission"
		},
		"569945bb-4c41-4a3a-bdf1-fdebd407384d": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Review and Update:${context.sName}",
			"description": "This task has been created for Review and Update Document:\n:${context.sName}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/cpdctask/com.sap.s4idea.cpdc.ui.task",
			"recipientUsers": "${context.sContributor}",
			"id": "usertask3",
			"name": "Update Document"
		},
		"fe34c605-e516-42c9-a359-bc6b0c424f0d": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Updated Document :${context.sName}",
			"description": "Task for Approval of updated document\n:${context.sName}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/cpdctask/com.sap.s4idea.cpdc.ui.task",
			"recipientUsers": "${context.sAdministrator}",
			"id": "usertask4",
			"name": "Approve Updated Document"
		},
		"91ae275e-712a-4010-97b7-c1f660d96c3c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "48f613c3-b6c2-48fd-94b2-8e0f024ff510",
			"targetRef": "1cadeebe-e094-4270-bfd3-ac78b0ee5a8d"
		},
		"855c5d79-70fa-4931-ac22-716b2ad0fd5e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "bb69edf4-67af-443a-83b0-d2f4753df592",
			"targetRef": "48f613c3-b6c2-48fd-94b2-8e0f024ff510"
		},
		"909e654d-1a27-48a2-95db-5f184f09e156": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "f4728a25-98b8-485a-b305-12cb084e4f66",
			"targetRef": "9c130f3b-70cb-4379-8f45-8c7ec3a99b67"
		},
		"3bcbc059-bfef-4f19-85b6-5c29bad09b78": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.WorkflowValidationResponse.workflow.status == \"DELETE\"}",
			"id": "sequenceflow7",
			"name": "InValidInitiatorSequence",
			"sourceRef": "1cadeebe-e094-4270-bfd3-ac78b0ee5a8d",
			"targetRef": "f4728a25-98b8-485a-b305-12cb084e4f66"
		},
		"0dc16a19-d6a1-45df-8f54-8febfd864292": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "ValidInitiatorSequence",
			"sourceRef": "1cadeebe-e094-4270-bfd3-ac78b0ee5a8d",
			"targetRef": "600a1819-18cd-4426-b6bd-210e7fa4c827"
		},
		"855ccae5-8ade-46ec-bc6a-64af5f3faeb3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "aa88ff0b-0e68-4421-ba14-9f5db0725abb",
			"targetRef": "bb69edf4-67af-443a-83b0-d2f4753df592"
		},
		"5cc55adb-4692-4b85-98dc-0ed5067b0994": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "600a1819-18cd-4426-b6bd-210e7fa4c827",
			"targetRef": "569945bb-4c41-4a3a-bdf1-fdebd407384d"
		},
		"ddf3fad5-d559-4f47-8cf3-75a9927d0acf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "SequenceFlow25",
			"sourceRef": "569945bb-4c41-4a3a-bdf1-fdebd407384d",
			"targetRef": "fe34c605-e516-42c9-a359-bc6b0c424f0d"
		},
		"afd59e5d-2b3c-4bff-b86a-a235dc8261df": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "fe34c605-e516-42c9-a359-bc6b0c424f0d",
			"targetRef": "81de7123-8147-49c3-9328-02bf34627d5f"
		},
		"7c6509c4-413c-4235-881b-9f68eaf809ec": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"5521ba4b-9165-48a0-b400-f3370a1e37f8": {},
				"c810d8c3-97d8-4bcc-b5d0-09379f16f338": {},
				"51a4b402-03a9-4311-be5f-205eb49a04ab": {},
				"86b8281c-7aa7-4a65-b8c4-7b7944109fe9": {},
				"f4d93769-5df5-4939-baa2-6aedc34530ae": {},
				"9cc42767-9c61-40fc-9649-1a6af44c518c": {},
				"05a8ee63-4d9b-4903-9cd3-1a69dd7186d6": {},
				"6cd8cf51-1a5a-45c5-8d55-fe552a990a1f": {},
				"ca17fa37-33b3-40aa-82a6-190fa60e4b95": {},
				"f73f16f4-2849-4c43-bd0b-4de78ebdcb46": {},
				"21062bb4-b46f-43c4-8fe0-99ad704ad32d": {},
				"e05e8199-70e7-4260-9352-a0190b701a6b": {},
				"da536216-5f21-470a-b36b-f5456d804578": {},
				"c2eb1870-de40-40e0-91ee-970c47e42f19": {},
				"827b0541-7a0c-4167-a456-f8cd676534dc": {},
				"d515e84f-0db8-4af7-8f22-c652e13276c6": {},
				"59a47af7-02c2-4e4d-a6c5-0f67d52bad35": {},
				"d6d3b2d5-7189-476d-a3f9-4ffe6d878b63": {},
				"b2ac8a16-ee34-475d-b566-4a767d2455d7": {}
			}
		},
		"9a3dee6d-0ba3-4b8b-9739-03a3607df6da": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition2"
		},
		"1c157cc6-24dc-4c6f-a4f1-12d6fa4a28d5": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"5521ba4b-9165-48a0-b400-f3370a1e37f8": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 81,
			"width": 32,
			"height": 32,
			"object": "aa88ff0b-0e68-4421-ba14-9f5db0725abb"
		},
		"c810d8c3-97d8-4bcc-b5d0-09379f16f338": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 301,
			"y": 67,
			"width": 128,
			"height": 60,
			"object": "48f613c3-b6c2-48fd-94b2-8e0f024ff510"
		},
		"51a4b402-03a9-4311-be5f-205eb49a04ab": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "429,97 479,97",
			"sourceSymbol": "c810d8c3-97d8-4bcc-b5d0-09379f16f338",
			"targetSymbol": "9cc42767-9c61-40fc-9649-1a6af44c518c",
			"object": "91ae275e-712a-4010-97b7-c1f660d96c3c"
		},
		"86b8281c-7aa7-4a65-b8c4-7b7944109fe9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 67,
			"width": 157,
			"height": 60,
			"object": "bb69edf4-67af-443a-83b0-d2f4753df592"
		},
		"f4d93769-5df5-4939-baa2-6aedc34530ae": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "251,97 301,97",
			"sourceSymbol": "86b8281c-7aa7-4a65-b8c4-7b7944109fe9",
			"targetSymbol": "c810d8c3-97d8-4bcc-b5d0-09379f16f338",
			"object": "855c5d79-70fa-4931-ac22-716b2ad0fd5e"
		},
		"9cc42767-9c61-40fc-9649-1a6af44c518c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 479,
			"y": 76,
			"object": "1cadeebe-e094-4270-bfd3-ac78b0ee5a8d"
		},
		"05a8ee63-4d9b-4903-9cd3-1a69dd7186d6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 590.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "f4728a25-98b8-485a-b305-12cb084e4f66"
		},
		"6cd8cf51-1a5a-45c5-8d55-fe552a990a1f": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 760.9999976158142,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "9c130f3b-70cb-4379-8f45-8c7ec3a99b67"
		},
		"ca17fa37-33b3-40aa-82a6-190fa60e4b95": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "690.9999988079071,42 760.9999976158142,42",
			"sourceSymbol": "05a8ee63-4d9b-4903-9cd3-1a69dd7186d6",
			"targetSymbol": "6cd8cf51-1a5a-45c5-8d55-fe552a990a1f",
			"object": "909e654d-1a27-48a2-95db-5f184f09e156"
		},
		"f73f16f4-2849-4c43-bd0b-4de78ebdcb46": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "521,97 555.9999994039536,97 555.9999994039536,42 590.9999988079071,42",
			"sourceSymbol": "9cc42767-9c61-40fc-9649-1a6af44c518c",
			"targetSymbol": "05a8ee63-4d9b-4903-9cd3-1a69dd7186d6",
			"object": "3bcbc059-bfef-4f19-85b6-5c29bad09b78"
		},
		"21062bb4-b46f-43c4-8fe0-99ad704ad32d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 590.9999988079071,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "600a1819-18cd-4426-b6bd-210e7fa4c827"
		},
		"e05e8199-70e7-4260-9352-a0190b701a6b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "521,97 555.9999994039536,97 555.9999994039536,152 590.9999988079071,152",
			"sourceSymbol": "9cc42767-9c61-40fc-9649-1a6af44c518c",
			"targetSymbol": "21062bb4-b46f-43c4-8fe0-99ad704ad32d",
			"object": "0dc16a19-d6a1-45df-8f54-8febfd864292"
		},
		"da536216-5f21-470a-b36b-f5456d804578": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,97 94,97",
			"sourceSymbol": "5521ba4b-9165-48a0-b400-f3370a1e37f8",
			"targetSymbol": "86b8281c-7aa7-4a65-b8c4-7b7944109fe9",
			"object": "855ccae5-8ade-46ec-bc6a-64af5f3faeb3"
		},
		"c2eb1870-de40-40e0-91ee-970c47e42f19": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1080.9999964237213,
			"y": 81,
			"width": 32,
			"height": 32,
			"object": "81de7123-8147-49c3-9328-02bf34627d5f"
		},
		"827b0541-7a0c-4167-a456-f8cd676534dc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "690.9999988079071,152 725.9999982118607,152 725.9999982118607,138 760.9999976158142,138",
			"sourceSymbol": "21062bb4-b46f-43c4-8fe0-99ad704ad32d",
			"targetSymbol": "d515e84f-0db8-4af7-8f22-c652e13276c6",
			"object": "5cc55adb-4692-4b85-98dc-0ed5067b0994"
		},
		"d515e84f-0db8-4af7-8f22-c652e13276c6": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 760.9999976158142,
			"y": 108,
			"width": 100,
			"height": 60,
			"object": "569945bb-4c41-4a3a-bdf1-fdebd407384d"
		},
		"59a47af7-02c2-4e4d-a6c5-0f67d52bad35": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "860.9999976158142,138 895.9999970197678,138 895.9999970197678,97 930.9999964237213,97",
			"sourceSymbol": "d515e84f-0db8-4af7-8f22-c652e13276c6",
			"targetSymbol": "d6d3b2d5-7189-476d-a3f9-4ffe6d878b63",
			"object": "ddf3fad5-d559-4f47-8cf3-75a9927d0acf"
		},
		"d6d3b2d5-7189-476d-a3f9-4ffe6d878b63": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 930.9999964237213,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "fe34c605-e516-42c9-a359-bc6b0c424f0d"
		},
		"b2ac8a16-ee34-475d-b566-4a767d2455d7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1030.9999964237213,97 1080.9999964237213,97",
			"sourceSymbol": "d6d3b2d5-7189-476d-a3f9-4ffe6d878b63",
			"targetSymbol": "c2eb1870-de40-40e0-91ee-970c47e42f19",
			"object": "afd59e5d-2b3c-4bff-b86a-a235dc8261df"
		},
		"3fe525d3-a5b3-401c-83fd-e120f0b9c408": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 2,
			"messageeventdefinition": 1,
			"message": 2,
			"timereventdefinition": 1,
			"sequenceflow": 26,
			"startevent": 1,
			"intermediatemessageevent": 1,
			"endevent": 4,
			"usertask": 4,
			"servicetask": 3,
			"scripttask": 6,
			"exclusivegateway": 1,
			"parallelgateway": 2
		},
		"7e692de7-29cb-4825-98c4-bb6c1401a46c": {
			"classDefinition": "com.sap.bpm.wfs.Message",
			"name": "testMessage",
			"id": "message1"
		},
		"43f049d0-4984-46e3-8643-d85de93b633c": {
			"classDefinition": "com.sap.bpm.wfs.Message",
			"name": "updatePermissionMessage",
			"id": "message2"
		}
	}
}