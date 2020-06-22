{
	"contents": {
		"66c5e03e-1167-4f3b-a31e-b298b641a3fa": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "workflowwithemailnotification",
			"subject": "${context.subject}",
			"businessKey": "${context.businessKey}",
			"name": "WorkflowWithEmailNotification",
			"documentation": "",
			"lastIds": "ec2d4866-442b-4a27-ba9c-fc2d45db415a",
			"events": {
				"264e0486-a42e-4aa5-bd31-407707313a9f": {
					"name": "StartEvent1"
				},
				"ac45f11e-d515-40de-a3c5-571839cf56c4": {
					"name": "EndEvent1"
				},
				"b119a340-4217-451e-827f-03cd571777c6": {
					"name": "EndEvent2"
				},
				"72cc4672-1127-4df9-bd66-1a7b26c587e5": {
					"name": "EndEvent3"
				}
			},
			"activities": {
				"e47db5e4-97c5-44f7-8f9a-1ac075df8bb1": {
					"name": "setReqObjForWFValidation"
				},
				"8878f4fa-fc92-4c84-be56-e7960959d1c3": {
					"name": "validateWFInitiatorForCollaboration"
				},
				"2b555273-509c-4650-9b9a-6ee5b2d8f2bc": {
					"name": "IsInitiatorValidForCollaboration"
				},
				"f02bacbb-383f-4a85-bc22-53b0c89caf9b": {
					"name": "setInstanceLevelPermission"
				},
				"1fcd178d-376e-481b-b3fa-12978610438e": {
					"name": "deleteInstance"
				},
				"cb320182-626f-434d-b4b0-d5499276c584": {
					"name": "ParallelGateway1"
				},
				"93770db8-94e7-408b-a21d-db784e9e2e0f": {
					"name": "UserTask1"
				},
				"2a840079-9757-4a9b-b487-c4c0ecc33f40": {
					"name": "prepareEmailScript"
				},
				"3ae7ccdf-d76b-4a12-8f0a-1807cedca6cb": {
					"name": "SendMailService"
				}
			},
			"sequenceFlows": {
				"71850948-baae-47e3-8c52-de42fc7b2ef9": {
					"name": "SequenceFlow1"
				},
				"5582da56-8d52-475e-bb30-5bd77e49e1d1": {
					"name": "SequenceFlow2"
				},
				"5975d2a8-41cd-4a3b-b1b3-16477f26c141": {
					"name": "SequenceFlow3"
				},
				"ea774f15-5aa4-46e1-81f8-a74d739bd0ad": {
					"name": "SequenceFlow4"
				},
				"ab71099d-251a-4689-988f-1c5def0b3a2e": {
					"name": "SequenceFlow5"
				},
				"73c116a3-4409-4bed-91ba-e97a571b54d7": {
					"name": "SequenceFlow6"
				},
				"4e0ebda8-856e-484e-bb77-b2c64801de38": {
					"name": "SequenceFlow7"
				},
				"eb78b6ee-7d8f-42c8-a0e9-a105d05dc626": {
					"name": "SequenceFlow8"
				},
				"0ccde222-b643-4db4-b8e0-33a82246d08f": {
					"name": "SequenceFlow9"
				},
				"83d81ad5-5eba-4241-9e9a-217bf72052db": {
					"name": "SequenceFlow10"
				},
				"eb95d57f-eaf3-4eef-84bb-0230e41f109f": {
					"name": "SequenceFlow11"
				},
				"e5418c4d-bb9e-4a1a-a2c0-cf0c386e318a": {
					"name": "SequenceFlow12"
				}
			},
			"diagrams": {
				"54710173-b31e-45c9-bea1-c2fc31dc1b34": {}
			}
		},
		"264e0486-a42e-4aa5-bd31-407707313a9f": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"ac45f11e-d515-40de-a3c5-571839cf56c4": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1",
			"eventDefinitions": {
				"ebc7aa91-1edb-4950-9483-6fab95752e01": {}
			}
		},
		"71850948-baae-47e3-8c52-de42fc7b2ef9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "264e0486-a42e-4aa5-bd31-407707313a9f",
			"targetRef": "e47db5e4-97c5-44f7-8f9a-1ac075df8bb1"
		},
		"54710173-b31e-45c9-bea1-c2fc31dc1b34": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"4c5eb590-e629-4895-af1e-6d92c14c5685": {},
				"a05a488f-a7c6-4fbe-8e1e-9d27bd460710": {},
				"406c0781-c4d5-43a5-b14a-85dfb7e14c0c": {},
				"659e781c-1888-47f6-9ca9-69c8f163ff83": {},
				"f3b4886d-db1e-47b6-91ca-30ded5884374": {},
				"94b1646c-038f-4b49-a32e-59f36064b172": {},
				"9842e372-3f85-475f-9572-07493494ad8c": {},
				"d4ceeec9-b524-40c5-b9c9-fba3f43cd78d": {},
				"c6694432-45d9-4e12-a252-adf8ca1345a2": {},
				"52b63478-4f69-4df0-96b4-ed8137ca9b14": {},
				"88cb2926-45c3-4dd4-87fa-408ab8364f4d": {},
				"34b6f2a0-2895-470e-8651-13c3bc4e9a0d": {},
				"b173a018-daaf-4605-baf7-653145c0d6d9": {},
				"ef757daa-308d-4f9d-a26e-b7ac7ee20b0d": {},
				"615b1754-6e51-4d9b-bf4c-0b61d9edf519": {},
				"e5f25489-a582-4ec6-a6bd-6370fa2a4ba0": {},
				"4914c45e-ce53-4151-a1b5-01fe4a792fe9": {},
				"861c158d-ea29-48c7-b54c-1840eaf3c00c": {},
				"543a3261-dbcb-457e-82f2-8ed23ebcd38b": {},
				"ad2b6397-7fde-4f07-acc5-d4cf6f41d9ce": {},
				"824a1f9b-c7b0-45d2-afb1-592d27240112": {},
				"be8167fe-711a-40db-8172-9618f3b2860a": {},
				"364e390b-790c-4a6b-974d-8a4c1111c6f6": {},
				"736a53de-3204-4672-8064-d9923ea611f2": {},
				"2d55e4c9-51b9-41b2-af18-92e9c1b70984": {}
			}
		},
		"4c5eb590-e629-4895-af1e-6d92c14c5685": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "264e0486-a42e-4aa5-bd31-407707313a9f"
		},
		"a05a488f-a7c6-4fbe-8e1e-9d27bd460710": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1174,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "ac45f11e-d515-40de-a3c5-571839cf56c4"
		},
		"406c0781-c4d5-43a5-b14a-85dfb7e14c0c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,119.375 267.2414728659385,119.375",
			"sourceSymbol": "4c5eb590-e629-4895-af1e-6d92c14c5685",
			"targetSymbol": "659e781c-1888-47f6-9ca9-69c8f163ff83",
			"object": "71850948-baae-47e3-8c52-de42fc7b2ef9"
		},
		"ec2d4866-442b-4a27-ba9c-fc2d45db415a": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 2,
			"sequenceflow": 12,
			"startevent": 1,
			"endevent": 3,
			"usertask": 1,
			"servicetask": 2,
			"scripttask": 4,
			"exclusivegateway": 1,
			"parallelgateway": 1
		},
		"e47db5e4-97c5-44f7-8f9a-1ac075df8bb1": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WorkflowWithEmailNotification/setReqObjForWFValidation.js",
			"id": "scripttask1",
			"name": "setReqObjForWFValidation"
		},
		"659e781c-1888-47f6-9ca9-69c8f163ff83": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 217.24147286593848,
			"y": 92.75,
			"width": 100,
			"height": 60,
			"object": "e47db5e4-97c5-44f7-8f9a-1ac075df8bb1"
		},
		"5582da56-8d52-475e-bb30-5bd77e49e1d1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "e47db5e4-97c5-44f7-8f9a-1ac075df8bb1",
			"targetRef": "8878f4fa-fc92-4c84-be56-e7960959d1c3"
		},
		"f3b4886d-db1e-47b6-91ca-30ded5884374": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "267.2414728659385,122.9375 403.87073643296924,122.9375",
			"sourceSymbol": "659e781c-1888-47f6-9ca9-69c8f163ff83",
			"targetSymbol": "94b1646c-038f-4b49-a32e-59f36064b172",
			"object": "5582da56-8d52-475e-bb30-5bd77e49e1d1"
		},
		"8878f4fa-fc92-4c84-be56-e7960959d1c3": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "cpdcWF",
			"path": "/service/validate/int/WorkflowValidation",
			"httpMethod": "POST",
			"requestVariable": "${context.reqBody}",
			"responseVariable": "${context.workflow.status}",
			"id": "servicetask1",
			"name": "validateWFInitiatorForCollaboration",
			"principalPropagationRef": "264e0486-a42e-4aa5-bd31-407707313a9f"
		},
		"94b1646c-038f-4b49-a32e-59f36064b172": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 353.87073643296924,
			"y": 93.125,
			"width": 100,
			"height": 60,
			"object": "8878f4fa-fc92-4c84-be56-e7960959d1c3"
		},
		"5975d2a8-41cd-4a3b-b1b3-16477f26c141": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "8878f4fa-fc92-4c84-be56-e7960959d1c3",
			"targetRef": "2b555273-509c-4650-9b9a-6ee5b2d8f2bc"
		},
		"9842e372-3f85-475f-9572-07493494ad8c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "403.87073643296924,123.21875 536.1853682164847,123.21875",
			"sourceSymbol": "94b1646c-038f-4b49-a32e-59f36064b172",
			"targetSymbol": "d4ceeec9-b524-40c5-b9c9-fba3f43cd78d",
			"object": "5975d2a8-41cd-4a3b-b1b3-16477f26c141"
		},
		"2b555273-509c-4650-9b9a-6ee5b2d8f2bc": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "IsInitiatorValidForCollaboration",
			"default": "ea774f15-5aa4-46e1-81f8-a74d739bd0ad"
		},
		"d4ceeec9-b524-40c5-b9c9-fba3f43cd78d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 515.1853682164847,
			"y": 102.3125,
			"object": "2b555273-509c-4650-9b9a-6ee5b2d8f2bc"
		},
		"ea774f15-5aa4-46e1-81f8-a74d739bd0ad": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "2b555273-509c-4650-9b9a-6ee5b2d8f2bc",
			"targetRef": "f02bacbb-383f-4a85-bc22-53b0c89caf9b"
		},
		"c6694432-45d9-4e12-a252-adf8ca1345a2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "536.1853682164847,123.359375 730.5926841082423,123.359375",
			"sourceSymbol": "d4ceeec9-b524-40c5-b9c9-fba3f43cd78d",
			"targetSymbol": "52b63478-4f69-4df0-96b4-ed8137ca9b14",
			"object": "ea774f15-5aa4-46e1-81f8-a74d739bd0ad"
		},
		"f02bacbb-383f-4a85-bc22-53b0c89caf9b": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WorkflowWithEmailNotification/setInstanceLevelPermission.js",
			"id": "scripttask2",
			"name": "setInstanceLevelPermission"
		},
		"52b63478-4f69-4df0-96b4-ed8137ca9b14": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 680.5926841082423,
			"y": 93.40625,
			"width": 100,
			"height": 60,
			"object": "f02bacbb-383f-4a85-bc22-53b0c89caf9b"
		},
		"ab71099d-251a-4689-988f-1c5def0b3a2e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "f02bacbb-383f-4a85-bc22-53b0c89caf9b",
			"targetRef": "cb320182-626f-434d-b4b0-d5499276c584"
		},
		"88cb2926-45c3-4dd4-87fa-408ab8364f4d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "730.5926841082423,123.4296875 856.5463420541212,123.4296875",
			"sourceSymbol": "52b63478-4f69-4df0-96b4-ed8137ca9b14",
			"targetSymbol": "e5f25489-a582-4ec6-a6bd-6370fa2a4ba0",
			"object": "ab71099d-251a-4689-988f-1c5def0b3a2e"
		},
		"1fcd178d-376e-481b-b3fa-12978610438e": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WorkflowWithEmailNotification/deleteInstance.js",
			"id": "scripttask3",
			"name": "deleteInstance"
		},
		"34b6f2a0-2895-470e-8651-13c3bc4e9a0d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 486,
			"y": 223,
			"width": 100,
			"height": 60,
			"object": "1fcd178d-376e-481b-b3fa-12978610438e"
		},
		"b119a340-4217-451e-827f-03cd571777c6": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2",
			"eventDefinitions": {
				"1aef151c-9887-4403-91e5-26bb84fd64f3": {}
			}
		},
		"b173a018-daaf-4605-baf7-653145c0d6d9": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 636,
			"y": 235.5,
			"width": 35,
			"height": 35,
			"object": "b119a340-4217-451e-827f-03cd571777c6"
		},
		"73c116a3-4409-4bed-91ba-e97a571b54d7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "1fcd178d-376e-481b-b3fa-12978610438e",
			"targetRef": "b119a340-4217-451e-827f-03cd571777c6"
		},
		"ef757daa-308d-4f9d-a26e-b7ac7ee20b0d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "536,253 653.5,253",
			"sourceSymbol": "34b6f2a0-2895-470e-8651-13c3bc4e9a0d",
			"targetSymbol": "b173a018-daaf-4605-baf7-653145c0d6d9",
			"object": "73c116a3-4409-4bed-91ba-e97a571b54d7"
		},
		"1aef151c-9887-4403-91e5-26bb84fd64f3": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"4e0ebda8-856e-484e-bb77-b2c64801de38": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.workflow.status == \"DELETE\"}",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "2b555273-509c-4650-9b9a-6ee5b2d8f2bc",
			"targetRef": "1fcd178d-376e-481b-b3fa-12978610438e"
		},
		"615b1754-6e51-4d9b-bf4c-0b61d9edf519": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "536.1853682164847,123.3125 536.1853682164847,245",
			"sourceSymbol": "d4ceeec9-b524-40c5-b9c9-fba3f43cd78d",
			"targetSymbol": "34b6f2a0-2895-470e-8651-13c3bc4e9a0d",
			"object": "4e0ebda8-856e-484e-bb77-b2c64801de38"
		},
		"cb320182-626f-434d-b4b0-d5499276c584": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "ParallelGateway1"
		},
		"e5f25489-a582-4ec6-a6bd-6370fa2a4ba0": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 835.5463420541212,
			"y": 102.453125,
			"object": "cb320182-626f-434d-b4b0-d5499276c584"
		},
		"eb78b6ee-7d8f-42c8-a0e9-a105d05dc626": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "cb320182-626f-434d-b4b0-d5499276c584",
			"targetRef": "93770db8-94e7-408b-a21d-db784e9e2e0f"
		},
		"4914c45e-ce53-4151-a1b5-01fe4a792fe9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "856.5463420541212,121.96484375 1025.7731710270605,121.96484375",
			"sourceSymbol": "e5f25489-a582-4ec6-a6bd-6370fa2a4ba0",
			"targetSymbol": "861c158d-ea29-48c7-b54c-1840eaf3c00c",
			"object": "eb78b6ee-7d8f-42c8-a0e9-a105d05dc626"
		},
		"93770db8-94e7-408b-a21d-db784e9e2e0f": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "${context.subject}",
			"description": "${context.subject}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/cpdctask/com.sap.s4idea.cpdc.ui.task.Component",
			"recipientUsers": "${context.sContributor}",
			"id": "usertask1",
			"name": "UserTask1"
		},
		"861c158d-ea29-48c7-b54c-1840eaf3c00c": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 975.7731710270605,
			"y": 90.4765625,
			"width": 100,
			"height": 60,
			"object": "93770db8-94e7-408b-a21d-db784e9e2e0f"
		},
		"0ccde222-b643-4db4-b8e0-33a82246d08f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "93770db8-94e7-408b-a21d-db784e9e2e0f",
			"targetRef": "ac45f11e-d515-40de-a3c5-571839cf56c4"
		},
		"543a3261-dbcb-457e-82f2-8ed23ebcd38b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1025.7731710270605,118.98828125 1191.5,118.98828125",
			"sourceSymbol": "861c158d-ea29-48c7-b54c-1840eaf3c00c",
			"targetSymbol": "a05a488f-a7c6-4fbe-8e1e-9d27bd460710",
			"object": "0ccde222-b643-4db4-b8e0-33a82246d08f"
		},
		"ebc7aa91-1edb-4950-9483-6fab95752e01": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition2"
		},
		"2a840079-9757-4a9b-b487-c4c0ecc33f40": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/WorkflowWithEmailNotification/prepareEmailScript.js",
			"id": "scripttask4",
			"name": "prepareEmailScript"
		},
		"ad2b6397-7fde-4f07-acc5-d4cf6f41d9ce": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 807,
			"y": 218,
			"width": 100,
			"height": 60,
			"object": "2a840079-9757-4a9b-b487-c4c0ecc33f40"
		},
		"83d81ad5-5eba-4241-9e9a-217bf72052db": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "cb320182-626f-434d-b4b0-d5499276c584",
			"targetRef": "2a840079-9757-4a9b-b487-c4c0ecc33f40"
		},
		"824a1f9b-c7b0-45d2-afb1-592d27240112": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "856.5463420541212,123.453125 856.5463420541212,241",
			"sourceSymbol": "e5f25489-a582-4ec6-a6bd-6370fa2a4ba0",
			"targetSymbol": "ad2b6397-7fde-4f07-acc5-d4cf6f41d9ce",
			"object": "83d81ad5-5eba-4241-9e9a-217bf72052db"
		},
		"3ae7ccdf-d76b-4a12-8f0a-1807cedca6cb": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "cpdcmail",
			"path": "/service/v1/Mail",
			"httpMethod": "POST",
			"requestVariable": "${context.reqMailBody}",
			"id": "servicetask2",
			"name": "SendMailService"
		},
		"be8167fe-711a-40db-8172-9618f3b2860a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 957,
			"y": 218,
			"width": 100,
			"height": 60,
			"object": "3ae7ccdf-d76b-4a12-8f0a-1807cedca6cb"
		},
		"eb95d57f-eaf3-4eef-84bb-0230e41f109f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "2a840079-9757-4a9b-b487-c4c0ecc33f40",
			"targetRef": "3ae7ccdf-d76b-4a12-8f0a-1807cedca6cb"
		},
		"364e390b-790c-4a6b-974d-8a4c1111c6f6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "857,248 1007,248",
			"sourceSymbol": "ad2b6397-7fde-4f07-acc5-d4cf6f41d9ce",
			"targetSymbol": "be8167fe-711a-40db-8172-9618f3b2860a",
			"object": "eb95d57f-eaf3-4eef-84bb-0230e41f109f"
		},
		"72cc4672-1127-4df9-bd66-1a7b26c587e5": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "EndEvent3"
		},
		"736a53de-3204-4672-8064-d9923ea611f2": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1107,
			"y": 230.5,
			"width": 35,
			"height": 35,
			"object": "72cc4672-1127-4df9-bd66-1a7b26c587e5"
		},
		"e5418c4d-bb9e-4a1a-a2c0-cf0c386e318a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "3ae7ccdf-d76b-4a12-8f0a-1807cedca6cb",
			"targetRef": "72cc4672-1127-4df9-bd66-1a7b26c587e5"
		},
		"2d55e4c9-51b9-41b2-af18-92e9c1b70984": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1007,248 1124.5,248",
			"sourceSymbol": "be8167fe-711a-40db-8172-9618f3b2860a",
			"targetSymbol": "736a53de-3204-4672-8064-d9923ea611f2",
			"object": "e5418c4d-bb9e-4a1a-a2c0-cf0c386e318a"
		}
	}
}