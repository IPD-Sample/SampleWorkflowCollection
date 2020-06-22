{
	"contents": {
		"ac762ffa-f75e-4d53-9bba-fd168929e161": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "workflowwithmail",
			"subject": "${context.subject}",
			"businessKey": "${context.businessKey}",
			"name": "WorkflowWithMail",
			"documentation": "",
			"lastIds": "886a6145-d8c4-4604-8454-c51e316fc900",
			"events": {
				"722ce1f5-15b2-472d-b66b-00d1809ab033": {
					"name": "WFStartEvent"
				},
				"315fe5dc-2b6e-4b82-8a97-bd5b20188f09": {
					"name": "WFEndEvent"
				},
				"922045a2-7e52-4695-b99e-522fe88bfb8b": {
					"name": "WFDEndEvent"
				},
				"da43a584-1c94-4cad-9760-cf414bbc1322": {
					"name": "WFMEndEvent"
				}
			},
			"activities": {
				"0063b0c4-0c46-4298-97ef-ccc194dd6e55": {
					"name": "setReqObjForWFValidation"
				},
				"1f401791-eb37-43a4-be5e-d524d83be3fe": {
					"name": "validateWFInitiatorForCollaboration"
				},
				"2a26d9b5-bcff-420d-9668-e35396929f64": {
					"name": "IsInitiatorValidForCollaboration"
				},
				"370167de-ad3b-496f-bf6a-0fc7a75991df": {
					"name": "setInstanceLevelPermission"
				},
				"b372278f-ec20-4b9b-aa3f-209fe2e64ded": {
					"name": "ParallelGateway_Validate"
				},
				"f5d6e677-114d-44f3-90f4-41733a94af29": {
					"name": "Work Item"
				},
				"8cc7feda-4338-4950-8fec-a769406c0f6d": {
					"name": "deleteInstance"
				},
				"c4c04307-88be-4c9f-8c37-6c4073d55451": {
					"name": "sendMail"
				},
				"c9da2e92-1dee-4894-80f6-ac2913ea6342": {
					"name": "getParticipantEmail"
				},
				"422e0bf1-dbb0-4249-a2e4-f1fad0d159c5": {
					"name": "prepareEmailList"
				}
			},
			"sequenceFlows": {
				"3d627029-4e53-4e88-a852-ac72752e7074": {
					"name": "WFSequenceFlow1"
				},
				"5a4232ca-480e-42e5-bbe5-2e4d7c736de4": {
					"name": "WFSequenceFlow3"
				},
				"799cc83c-061f-4a78-bc15-3cc1d3169e7f": {
					"name": "WFSequenceFlow4"
				},
				"62f193f8-3e3e-4edc-ba87-bf100f873695": {
					"name": "ValidInitiatorSequence"
				},
				"627697b9-a564-4882-a32c-3bfe84c5501f": {
					"name": "WFSequenceFlow6"
				},
				"8e452eba-bcc6-4bee-a270-8b6d4a7bb8b7": {
					"name": "WFSequenceFlow7"
				},
				"ab2e6b90-45c7-48a4-b098-8de033c90d5e": {
					"name": "WFSequenceFlow8"
				},
				"ea728311-ff39-434a-931a-0fb7b8a7e15b": {
					"name": "InValidInitiatorSequence"
				},
				"8cad71b1-6f44-4953-8fd0-be92062cf684": {
					"name": "WFSequenceFlow15"
				},
				"9ff773d8-7dd6-4d09-ade7-88afe6f0e48b": {
					"name": "WFSequenceFlow19"
				},
				"4a3fcbee-521c-440d-b46c-e1e5faf4a26c": {
					"name": "SequenceFlow21"
				},
				"83842994-45cc-45e7-b404-65689dc77c9f": {
					"name": "SequenceFlow24"
				},
				"c43ac032-87aa-4bc7-b7b0-e631c03aa6d2": {
					"name": "SequenceFlow30"
				}
			},
			"diagrams": {
				"aa2e99f4-8207-4c58-a081-8e90dec93996": {}
			}
		},
		"722ce1f5-15b2-472d-b66b-00d1809ab033": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "wfstartevent",
			"name": "WFStartEvent"
		},
		"315fe5dc-2b6e-4b82-8a97-bd5b20188f09": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "wfendevent",
			"name": "WFEndEvent",
			"eventDefinitions": {
				"a9a27429-14d6-46ab-aed7-ca64a6aed5b9": {}
			}
		},
		"922045a2-7e52-4695-b99e-522fe88bfb8b": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "wfdendevent2",
			"name": "WFDEndEvent",
			"eventDefinitions": {
				"e58eeb44-2cdf-468e-8bfa-2dc73f28cce4": {}
			}
		},
		"da43a584-1c94-4cad-9760-cf414bbc1322": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "wfmendevent",
			"name": "WFMEndEvent"
		},
		"0063b0c4-0c46-4298-97ef-ccc194dd6e55": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WorkflowWithMail/setReqObjForWFValidation.js",
			"id": "scripttask_setReqObjForWFValidation",
			"name": "setReqObjForWFValidation"
		},
		"1f401791-eb37-43a4-be5e-d524d83be3fe": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "cpdcWF",
			"path": "/service/validate/int/WorkflowValidation",
			"httpMethod": "POST",
			"requestVariable": "${context.reqBody}",
			"responseVariable": "${context.workflow.status}",
			"id": "servicetask_validateWFInitiatorForCollaboration",
			"name": "validateWFInitiatorForCollaboration",
			"principalPropagationRef": "722ce1f5-15b2-472d-b66b-00d1809ab033"
		},
		"2a26d9b5-bcff-420d-9668-e35396929f64": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway_IsInitiatorValidForCollaboration",
			"name": "IsInitiatorValidForCollaboration",
			"default": "62f193f8-3e3e-4edc-ba87-bf100f873695"
		},
		"370167de-ad3b-496f-bf6a-0fc7a75991df": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WorkflowWithMail/setInstanceLevelPermission.js",
			"id": "scripttask_setInstanceLevelPermission",
			"name": "setInstanceLevelPermission"
		},
		"b372278f-ec20-4b9b-aa3f-209fe2e64ded": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway_validate",
			"name": "ParallelGateway_Validate"
		},
		"f5d6e677-114d-44f3-90f4-41733a94af29": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "${context.subject}",
			"description": "${context.subject}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/cpdctask/com.sap.s4idea.cpdc.ui.task.Component",
			"recipientUsers": "${context.sContributor}",
			"recipientGroups": "",
			"id": "usertask1",
			"name": "Work Item"
		},
		"8cc7feda-4338-4950-8fec-a769406c0f6d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WorkflowWithMail/deleteInstance.js",
			"id": "scripttask_deleteInstance",
			"name": "deleteInstance"
		},
		"c4c04307-88be-4c9f-8c37-6c4073d55451": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask_sendMail",
			"name": "sendMail",
			"mailDefinitionRef": "64786887-fbfb-4463-b888-97b8d5f16484"
		},
		"c9da2e92-1dee-4894-80f6-ac2913ea6342": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "cpdcWF",
			"path": "/odata/v1/CollaborationSet('${context.sObjectId}')/Contributors?$select=Id,Email&$format=json",
			"httpMethod": "GET",
			"responseVariable": "${context.emailList}",
			"id": "servicetask_getParticipantEmail",
			"name": "getParticipantEmail",
			"principalPropagationRef": "722ce1f5-15b2-472d-b66b-00d1809ab033"
		},
		"422e0bf1-dbb0-4249-a2e4-f1fad0d159c5": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WorkflowWithMail/prepareEmailList.js",
			"id": "scripttask_prepareEmailList",
			"name": "prepareEmailList"
		},
		"3d627029-4e53-4e88-a852-ac72752e7074": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow1",
			"name": "WFSequenceFlow1",
			"sourceRef": "722ce1f5-15b2-472d-b66b-00d1809ab033",
			"targetRef": "0063b0c4-0c46-4298-97ef-ccc194dd6e55"
		},
		"5a4232ca-480e-42e5-bbe5-2e4d7c736de4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow3",
			"name": "WFSequenceFlow3",
			"sourceRef": "0063b0c4-0c46-4298-97ef-ccc194dd6e55",
			"targetRef": "1f401791-eb37-43a4-be5e-d524d83be3fe"
		},
		"799cc83c-061f-4a78-bc15-3cc1d3169e7f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow4",
			"name": "WFSequenceFlow4",
			"sourceRef": "1f401791-eb37-43a4-be5e-d524d83be3fe",
			"targetRef": "2a26d9b5-bcff-420d-9668-e35396929f64"
		},
		"62f193f8-3e3e-4edc-ba87-bf100f873695": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow5",
			"name": "ValidInitiatorSequence",
			"sourceRef": "2a26d9b5-bcff-420d-9668-e35396929f64",
			"targetRef": "370167de-ad3b-496f-bf6a-0fc7a75991df"
		},
		"627697b9-a564-4882-a32c-3bfe84c5501f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow6",
			"name": "WFSequenceFlow6",
			"sourceRef": "370167de-ad3b-496f-bf6a-0fc7a75991df",
			"targetRef": "b372278f-ec20-4b9b-aa3f-209fe2e64ded"
		},
		"8e452eba-bcc6-4bee-a270-8b6d4a7bb8b7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow7",
			"name": "WFSequenceFlow7",
			"sourceRef": "b372278f-ec20-4b9b-aa3f-209fe2e64ded",
			"targetRef": "f5d6e677-114d-44f3-90f4-41733a94af29"
		},
		"ab2e6b90-45c7-48a4-b098-8de033c90d5e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow8",
			"name": "WFSequenceFlow8",
			"sourceRef": "f5d6e677-114d-44f3-90f4-41733a94af29",
			"targetRef": "315fe5dc-2b6e-4b82-8a97-bd5b20188f09"
		},
		"ea728311-ff39-434a-931a-0fb7b8a7e15b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.workflow.status == \"DELETE\"}",
			"id": "wfsequenceflow14",
			"name": "InValidInitiatorSequence",
			"sourceRef": "2a26d9b5-bcff-420d-9668-e35396929f64",
			"targetRef": "8cc7feda-4338-4950-8fec-a769406c0f6d"
		},
		"8cad71b1-6f44-4953-8fd0-be92062cf684": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow15",
			"name": "WFSequenceFlow15",
			"sourceRef": "8cc7feda-4338-4950-8fec-a769406c0f6d",
			"targetRef": "922045a2-7e52-4695-b99e-522fe88bfb8b"
		},
		"9ff773d8-7dd6-4d09-ade7-88afe6f0e48b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "wfsequenceflow19",
			"name": "WFSequenceFlow19",
			"sourceRef": "b372278f-ec20-4b9b-aa3f-209fe2e64ded",
			"targetRef": "c9da2e92-1dee-4894-80f6-ac2913ea6342"
		},
		"4a3fcbee-521c-440d-b46c-e1e5faf4a26c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "SequenceFlow21",
			"sourceRef": "c4c04307-88be-4c9f-8c37-6c4073d55451",
			"targetRef": "da43a584-1c94-4cad-9760-cf414bbc1322"
		},
		"83842994-45cc-45e7-b404-65689dc77c9f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "422e0bf1-dbb0-4249-a2e4-f1fad0d159c5",
			"targetRef": "c4c04307-88be-4c9f-8c37-6c4073d55451"
		},
		"c43ac032-87aa-4bc7-b7b0-e631c03aa6d2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow30",
			"name": "SequenceFlow30",
			"sourceRef": "c9da2e92-1dee-4894-80f6-ac2913ea6342",
			"targetRef": "422e0bf1-dbb0-4249-a2e4-f1fad0d159c5"
		},
		"aa2e99f4-8207-4c58-a081-8e90dec93996": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"2c4784c7-edd3-47b3-84b9-007f0dee7841": {},
				"f97e3618-7a2f-47b3-8e98-4cd3591f5e73": {},
				"2c6dd0ca-f047-40a3-9ad1-bbe69f0372c1": {},
				"36cc877b-9afd-402d-8b84-96f0af8e891e": {},
				"dd7ea39e-5fb0-41db-bb76-e98eeaa4a7c3": {},
				"b2ff0582-7af4-42f4-9924-f30ada7229fb": {},
				"584f4e88-e800-4333-b3b3-928369ce495b": {},
				"6f8a91a1-c0db-43cf-a1c4-877826adf5e6": {},
				"14960239-426e-4a06-ab96-9a9c8a11002b": {},
				"215485da-da5b-4d1a-a447-05b3c16a1a3f": {},
				"430bc2dc-9bcd-4415-a369-1a3e78050e07": {},
				"499cd887-b058-4104-9654-c75fd4487e59": {},
				"0c37b855-649f-406b-8f81-b35a7a459152": {},
				"5e150a05-7857-41cb-86c3-81912d9f3bef": {},
				"aa12213b-ee50-4605-a3f2-5a375158e712": {},
				"323429f4-7d73-4961-b99c-560246e5a199": {},
				"cd13e4a0-5857-4895-bda1-4261b40666c2": {},
				"897ee676-eb85-4449-aadb-a749373e0190": {},
				"66d845ec-cf67-46e8-a33c-5471edb496d1": {},
				"55ac99a5-7843-434b-9e1d-40b318415dce": {},
				"54c49e8a-77fe-4bae-a56f-e887b87a9551": {},
				"6f54ed54-52f0-4cf7-a8ce-d54580f8b8f5": {},
				"ac5fd354-a8c6-4d5e-a9ac-4c781814bd99": {},
				"483f7fce-fc5c-42a4-94fe-d876141122c0": {},
				"0f15d1e6-f757-4898-9956-8088563185ca": {},
				"f1e0cd87-deb5-4ca6-b908-a8742c28f140": {},
				"ad1175cf-3fd5-4679-a858-68aa7e2bc906": {}
			}
		},
		"a9a27429-14d6-46ab-aed7-ca64a6aed5b9": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"e58eeb44-2cdf-468e-8bfa-2dc73f28cce4": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition2"
		},
		"2c4784c7-edd3-47b3-84b9-007f0dee7841": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "722ce1f5-15b2-472d-b66b-00d1809ab033"
		},
		"f97e3618-7a2f-47b3-8e98-4cd3591f5e73": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1319,
			"y": 101,
			"width": 35,
			"height": 35,
			"object": "315fe5dc-2b6e-4b82-8a97-bd5b20188f09"
		},
		"2c6dd0ca-f047-40a3-9ad1-bbe69f0372c1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,118.5625 251.30823643296924,118.5625",
			"sourceSymbol": "2c4784c7-edd3-47b3-84b9-007f0dee7841",
			"targetSymbol": "36cc877b-9afd-402d-8b84-96f0af8e891e",
			"object": "3d627029-4e53-4e88-a852-ac72752e7074"
		},
		"36cc877b-9afd-402d-8b84-96f0af8e891e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 201.30823643296924,
			"y": 91.125,
			"width": 100,
			"height": 60,
			"object": "0063b0c4-0c46-4298-97ef-ccc194dd6e55"
		},
		"dd7ea39e-5fb0-41db-bb76-e98eeaa4a7c3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "251.30824279785156,123 388.40411376953125,123",
			"sourceSymbol": "36cc877b-9afd-402d-8b84-96f0af8e891e",
			"targetSymbol": "b2ff0582-7af4-42f4-9924-f30ada7229fb",
			"object": "5a4232ca-480e-42e5-bbe5-2e4d7c736de4"
		},
		"b2ff0582-7af4-42f4-9924-f30ada7229fb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 338.4041182164847,
			"y": 91.3125,
			"width": 100,
			"height": 60,
			"object": "1f401791-eb37-43a4-be5e-d524d83be3fe"
		},
		"584f4e88-e800-4333-b3b3-928369ce495b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "388.4041182164847,120.359375 524.4520591082423,120.359375",
			"sourceSymbol": "b2ff0582-7af4-42f4-9924-f30ada7229fb",
			"targetSymbol": "6f8a91a1-c0db-43cf-a1c4-877826adf5e6",
			"object": "799cc83c-061f-4a78-bc15-3cc1d3169e7f"
		},
		"6f8a91a1-c0db-43cf-a1c4-877826adf5e6": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 503.45205910824234,
			"y": 98.40625,
			"object": "2a26d9b5-bcff-420d-9668-e35396929f64"
		},
		"14960239-426e-4a06-ab96-9a9c8a11002b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "524.4520591082423,119.1796875 808.4994670541212,119.1796875",
			"sourceSymbol": "6f8a91a1-c0db-43cf-a1c4-877826adf5e6",
			"targetSymbol": "215485da-da5b-4d1a-a447-05b3c16a1a3f",
			"object": "62f193f8-3e3e-4edc-ba87-bf100f873695"
		},
		"215485da-da5b-4d1a-a447-05b3c16a1a3f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 758.4994670541212,
			"y": 88.953125,
			"width": 100,
			"height": 60,
			"object": "370167de-ad3b-496f-bf6a-0fc7a75991df"
		},
		"430bc2dc-9bcd-4415-a369-1a3e78050e07": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "808.4994670541212,118.83984375 933.9997335270605,118.83984375",
			"sourceSymbol": "215485da-da5b-4d1a-a447-05b3c16a1a3f",
			"targetSymbol": "499cd887-b058-4104-9654-c75fd4487e59",
			"object": "627697b9-a564-4882-a32c-3bfe84c5501f"
		},
		"499cd887-b058-4104-9654-c75fd4487e59": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 912.9997335270605,
			"y": 97.7265625,
			"object": "b372278f-ec20-4b9b-aa3f-209fe2e64ded"
		},
		"0c37b855-649f-406b-8f81-b35a7a459152": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "933.9997335270605,118.919921875 1155.8065073885302,118.919921875",
			"sourceSymbol": "499cd887-b058-4104-9654-c75fd4487e59",
			"targetSymbol": "5e150a05-7857-41cb-86c3-81912d9f3bef",
			"object": "8e452eba-bcc6-4bee-a270-8b6d4a7bb8b7"
		},
		"5e150a05-7857-41cb-86c3-81912d9f3bef": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 1105.8065073885302,
			"y": 89.11328125,
			"width": 100,
			"height": 60,
			"object": "f5d6e677-114d-44f3-90f4-41733a94af29"
		},
		"aa12213b-ee50-4605-a3f2-5a375158e712": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1155.8065073885302,118.806640625 1336.5,118.806640625",
			"sourceSymbol": "5e150a05-7857-41cb-86c3-81912d9f3bef",
			"targetSymbol": "f97e3618-7a2f-47b3-8e98-4cd3591f5e73",
			"object": "ab2e6b90-45c7-48a4-b098-8de033c90d5e"
		},
		"323429f4-7d73-4961-b99c-560246e5a199": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 474,
			"y": 217,
			"width": 100,
			"height": 60,
			"object": "8cc7feda-4338-4950-8fec-a769406c0f6d"
		},
		"cd13e4a0-5857-4895-bda1-4261b40666c2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "521,119.40625 521,247",
			"sourceSymbol": "6f8a91a1-c0db-43cf-a1c4-877826adf5e6",
			"targetSymbol": "323429f4-7d73-4961-b99c-560246e5a199",
			"object": "ea728311-ff39-434a-931a-0fb7b8a7e15b"
		},
		"897ee676-eb85-4449-aadb-a749373e0190": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 601,
			"y": 229.5,
			"width": 35,
			"height": 35,
			"object": "922045a2-7e52-4695-b99e-522fe88bfb8b"
		},
		"66d845ec-cf67-46e8-a33c-5471edb496d1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "524,247 618.5,247",
			"sourceSymbol": "323429f4-7d73-4961-b99c-560246e5a199",
			"targetSymbol": "897ee676-eb85-4449-aadb-a749373e0190",
			"object": "8cad71b1-6f44-4953-8fd0-be92062cf684"
		},
		"55ac99a5-7843-434b-9e1d-40b318415dce": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "933.4998667635302,118.7265625 933.4998667635302,259",
			"sourceSymbol": "499cd887-b058-4104-9654-c75fd4487e59",
			"targetSymbol": "483f7fce-fc5c-42a4-94fe-d876141122c0",
			"object": "9ff773d8-7dd6-4d09-ade7-88afe6f0e48b"
		},
		"54c49e8a-77fe-4bae-a56f-e887b87a9551": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1397.5,
			"y": 242.5,
			"width": 35,
			"height": 35,
			"object": "da43a584-1c94-4cad-9760-cf414bbc1322"
		},
		"6f54ed54-52f0-4cf7-a8ce-d54580f8b8f5": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1248,
			"y": 230,
			"width": 100,
			"height": 60,
			"object": "c4c04307-88be-4c9f-8c37-6c4073d55451"
		},
		"ac5fd354-a8c6-4d5e-a9ac-4c781814bd99": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1298,260 1415,260",
			"sourceSymbol": "6f54ed54-52f0-4cf7-a8ce-d54580f8b8f5",
			"targetSymbol": "54c49e8a-77fe-4bae-a56f-e887b87a9551",
			"object": "4a3fcbee-521c-440d-b46c-e1e5faf4a26c"
		},
		"483f7fce-fc5c-42a4-94fe-d876141122c0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 884,
			"y": 229.75,
			"width": 100,
			"height": 60,
			"object": "c9da2e92-1dee-4894-80f6-ac2913ea6342"
		},
		"0f15d1e6-f757-4898-9956-8088563185ca": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 1050,
			"y": 230.125,
			"width": 100,
			"height": 60,
			"object": "422e0bf1-dbb0-4249-a2e4-f1fad0d159c5"
		},
		"f1e0cd87-deb5-4ca6-b908-a8742c28f140": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1102.5,260.0625 1295.5,260.0625",
			"sourceSymbol": "0f15d1e6-f757-4898-9956-8088563185ca",
			"targetSymbol": "6f54ed54-52f0-4cf7-a8ce-d54580f8b8f5",
			"object": "83842994-45cc-45e7-b404-65689dc77c9f"
		},
		"ad1175cf-3fd5-4679-a858-68aa7e2bc906": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "934,259.9375 1100,259.9375",
			"sourceSymbol": "483f7fce-fc5c-42a4-94fe-d876141122c0",
			"targetSymbol": "0f15d1e6-f757-4898-9956-8088563185ca",
			"object": "c43ac032-87aa-4bc7-b7b0-e631c03aa6d2"
		},
		"886a6145-d8c4-4604-8454-c51e316fc900": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 2,
			"messageeventdefinition": 1,
			"message": 1,
			"timereventdefinition": 2,
			"maildefinition": 1,
			"sequenceflow": 40,
			"startevent": 1,
			"intermediatemessageevent": 1,
			"endevent": 3,
			"usertask": 1,
			"servicetask": 7,
			"scripttask": 12,
			"mailtask": 1,
			"exclusivegateway": 5,
			"parallelgateway": 2
		},
		"b6ed5232-9b08-4489-8c2b-910692335d40": {
			"classDefinition": "com.sap.bpm.wfs.Message",
			"name": "updatePermissionMessage",
			"id": "message1"
		},
		"64786887-fbfb-4463-b888-97b8d5f16484": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "sapintelligentproductdesignnotification@sap.com",
			"cc": "",
			"bcc": "${context.emailList}",
			"subject": "SAP Intelligent Product Design: You have been assigned a work item",
			"reference": "/webcontent/WorkflowWithMail/mailContent.html",
			"ignoreInvalidRecipients": true,
			"id": "maildefinition1"
		}
	}
}