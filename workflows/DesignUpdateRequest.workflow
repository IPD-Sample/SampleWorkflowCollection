{
	"contents": {
		"4a5e03a4-2038-49d2-8480-f45027181d61": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "designupdaterequest",
			"subject": "${context.subject}",
			"businessKey": "${context.businessKey}",
			"name": "DesignUpdateRequest",
			"lastIds": "a7999eb9-2613-4bde-950f-26dc0b9da79d",
			"events": {
				"f881cde9-cf86-488a-afe7-9ed7bcd4e79c": {
					"name": "Start"
				},
				"54a100f8-ef1c-4c68-8eeb-d297510917b5": {
					"name": "End"
				},
				"be4e5aa3-8ea3-4848-9256-a8979cd59fd3": {
					"name": "EndEvent2"
				},
				"3a03326c-199a-497e-8ed9-e806d0c8b494": {
					"name": "updatePermissionEvent"
				},
				"c6ad00a8-3731-419e-b544-bfcbb7f392d3": {
					"name": "EndEvent3"
				},
				"c6d580cf-1fa8-466a-b4bb-5c1be1afaa54": {
					"name": "EndEvent4"
				}
			},
			"activities": {
				"b04f521c-879a-4375-8cd3-aee67960b2c7": {
					"name": "Request for Design Update (Internal)"
				},
				"2330b384-6ecb-43d4-9b06-59ab0c7408b7": {
					"name": "Update Design based on Request (Partner)"
				},
				"4f1745a7-b621-4359-bfc2-cc82ec79b32e": {
					"name": "Accept Design Update (Internal)"
				},
				"295c1b48-e088-4ecb-8dc2-da3d275d8e4e": {
					"name": "Preparation1"
				},
				"c0ac5c99-849b-4dc0-8e10-84b2dcaea653": {
					"name": "Preparation2"
				},
				"3769918f-e869-4369-bd6e-52636aca38bd": {
					"name": "ScriptTask3"
				},
				"ee984a07-d9b5-42d0-bf63-85616b4da006": {
					"name": "ScriptTask4"
				},
				"3371bfcb-dad2-4374-afd9-236f874fb920": {
					"name": "ParallelGateway1"
				},
				"ab9f507e-95ea-4d5e-93ab-e2747e9f4abc": {
					"name": "SetReqObjForWFValidation"
				},
				"ca2595a4-736d-459b-94be-e483c03fc72d": {
					"name": "ValidateWFInitiatorForCollaboration"
				},
				"50ebfeb5-fa29-4991-af0a-98ceb6734899": {
					"name": "IsInitiatorValidForCollaboration"
				},
				"b7bb47df-7d9e-49e8-ad59-63b27c0461ae": {
					"name": "deleteInstance"
				},
				"67a6dc5d-1bd9-438d-951d-500fbe70dc93": {
					"name": "setReqObjForFetchingUpdatedUsers"
				},
				"e8581d23-5dd4-4c54-87d9-48d2147e3348": {
					"name": "GetUpdatedUsersService"
				},
				"cc930d21-81a4-4f04-81ab-4d1dff3c3499": {
					"name": "setUpdatedPermissions"
				},
				"01113114-9a6c-40e5-8044-881bf6f98ff1": {
					"name": "SetInstanceLevelPermission"
				},
				"3e6d012a-f889-404a-b9f9-51bbcf3e826d": {
					"name": "ParallelGateway2"
				},
				"31241341-d206-4a08-b4c2-9d06582042bd": {
					"name": "prepareEmailScript1"
				},
				"53c2f020-faf9-46c5-b174-4800e2f049ef": {
					"name": "ServiceTask3"
				},
				"de9f1d90-c460-48a6-bbf7-db4a14f18281": {
					"name": "ParallelGateway3"
				},
				"d882e992-ac9e-440c-983c-f2114a79adf0": {
					"name": "ParallelGateway4"
				},
				"668d1e20-3c2d-49b9-97be-0f33e0ff2c80": {
					"name": "prepareEmailScript2"
				},
				"29099fdd-9b63-4048-bc7f-b9b78ab4ceed": {
					"name": "ServiceTask4"
				},
				"b834803c-be86-4b91-a1ab-9f29505f60bc": {
					"name": "ParallelGateway5"
				},
				"eb9543c0-1b85-48c6-87f8-33a6e514e90e": {
					"name": "prepareEmailScript3"
				},
				"a7429cb9-c64b-4a59-8dfa-5173f8680cc3": {
					"name": "ParallelGateway6"
				}
			},
			"gateways": {
				"9b8c6bbb-a08f-499d-8007-9c3ebed1713a": {
					"name": "Accept Request?"
				},
				"0faba3b6-8a5c-4d5a-b2d3-25f86e4b0974": {
					"name": "Accept Update"
				}
			},
			"sequenceFlows": {
				"e22a14bf-f116-48d5-bbd6-1ba367979bdf": {
					"name": "SequenceFlow1"
				},
				"fe76b65b-9023-475d-a3d4-3e9c221cd503": {
					"name": "SequenceFlow2"
				},
				"40d622d4-60eb-4206-b841-546b937b9a1b": {
					"name": "SequenceFlow3"
				},
				"4f1cef45-8620-472e-b520-0a2ade31e7c9": {
					"name": "Ok"
				},
				"64108afe-c20c-4edd-8f06-2b71cb853b0a": {
					"name": "Ok"
				},
				"455ef69b-d73b-4356-a2d2-cd12d4018839": {
					"name": "Rework Requested"
				},
				"e8db2d72-e9df-4fb5-8336-9c359d7e3f4c": {
					"name": "Request Update Requested"
				},
				"8e6dfcb7-99fd-438c-a726-bca01716af46": {
					"name": "SequenceFlow8"
				},
				"78f5ae2f-dd61-40ea-95e6-aaf102198300": {
					"name": "SequenceFlow9"
				},
				"b5b931d8-abb4-43af-ace5-935d8c10e6b4": {
					"name": "SequenceFlow10"
				},
				"c8adc771-882e-4b54-9b75-3e45ca126a2a": {
					"name": "SequenceFlow12"
				},
				"7d6a6cd0-c1a7-4c03-801d-3e106b4b52c3": {
					"name": "SequenceFlow13"
				},
				"3ad119d3-cb39-43f6-9047-8835091c908f": {
					"name": "SequenceFlow14"
				},
				"953f1041-e08d-43c3-af57-0557265ba7fa": {
					"name": "SequenceFlow15"
				},
				"7017911e-b4f2-4f41-b675-6f065a13658b": {
					"name": "SequenceFlow17"
				},
				"fdc616e7-96b6-4709-90a6-bc53d1657ce5": {
					"name": "SequenceFlow18"
				},
				"c2906db9-d7dc-4f46-b8a5-0297b69920ec": {
					"name": "SequenceFlow19"
				},
				"f387314a-ffac-4d86-a13a-70cc2fdfc6c7": {
					"name": "SequenceFlow20"
				},
				"1a0476d5-1ad8-4e77-9fde-0a100ef66ff6": {
					"name": "SequenceFlow21"
				},
				"87e5e759-88c6-4d33-b084-54215268313c": {
					"name": "SequenceFlow22"
				},
				"b82a39df-29c8-4676-812f-c72f9fbd02d3": {
					"name": "SequenceFlow24"
				},
				"fe7229d2-aadd-4cac-8884-1c4c82ff3f89": {
					"name": "SequenceFlow25"
				},
				"7e3d4a2d-787b-4cfd-abcb-1602f160d535": {
					"name": "SequenceFlow26"
				},
				"5008fba6-c261-4bd8-9fad-68f342a57ac3": {
					"name": "SequenceFlow27"
				},
				"37b4f9a6-0517-4795-b11c-e9b9377d1793": {
					"name": "SequenceFlow28"
				},
				"e6051b14-c54e-4a74-82dd-574efb5f46d4": {
					"name": "SequenceFlow29"
				},
				"ecf68718-a26a-4104-a9a6-23287d31bd54": {
					"name": "SequenceFlow30"
				},
				"771dee5a-d0fd-4bb7-8e76-315ffec401b8": {
					"name": "SequenceFlow31"
				},
				"f4a6a451-0729-4a2a-906f-8faf2ad5abc7": {
					"name": "SequenceFlow32"
				},
				"0af46b10-a4d1-4c09-a373-019814398a28": {
					"name": "SequenceFlow33"
				},
				"434954b7-340d-4d9a-b6c9-78b6c6382d27": {
					"name": "SequenceFlow34"
				},
				"b47ec3f9-9f44-4fbe-bcd3-b08c31847eb5": {
					"name": "SequenceFlow35"
				},
				"98c1ec3f-3846-4f11-9371-eaf7bb2e77b2": {
					"name": "SequenceFlow36"
				},
				"6e2e6422-48d7-480a-87d8-fb94d1956ef0": {
					"name": "SequenceFlow37"
				},
				"64269b48-63a6-41e8-ad64-5ed9a0578226": {
					"name": "SequenceFlow38"
				},
				"92ec1b6a-7107-4590-8602-94d6d5a9f9c0": {
					"name": "SequenceFlow39"
				},
				"1dd02e66-ba80-4bfb-95ea-8d3815655e48": {
					"name": "SequenceFlow40"
				},
				"8f2f6e3f-bdbc-4429-a959-6361123ff4a9": {
					"name": "SequenceFlow41"
				},
				"6d292c92-54d0-42fb-a512-4f74aebbab07": {
					"name": "SequenceFlow42"
				}
			},
			"diagrams": {
				"2a9bfcad-0b8e-47c5-9e92-d146d41271b4": {}
			}
		},
		"f881cde9-cf86-488a-afe7-9ed7bcd4e79c": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start"
		},
		"54a100f8-ef1c-4c68-8eeb-d297510917b5": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "End",
			"eventDefinitions": {
				"63490ecd-4b34-40aa-9e28-9767bcb282a5": {}
			}
		},
		"be4e5aa3-8ea3-4848-9256-a8979cd59fd3": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2",
			"eventDefinitions": {
				"8a986a33-7e4c-4583-8c56-32cc66da159b": {}
			}
		},
		"3a03326c-199a-497e-8ed9-e806d0c8b494": {
			"classDefinition": "com.sap.bpm.wfs.IntermediateCatchEvent",
			"id": "intermediatemessageevent1",
			"name": "updatePermissionEvent",
			"eventDefinitions": {
				"092212b4-f2ff-433f-9ac3-76640ddfa83d": {}
			}
		},
		"c6ad00a8-3731-419e-b544-bfcbb7f392d3": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "EndEvent3"
		},
		"b04f521c-879a-4375-8cd3-aee67960b2c7": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Request for Design Update (Internal)",
			"description": "Create a request for design update for the partner. \nInclude the existing design document and the updated specification document, as well.\nUpload all materials into the collaboration and send it to the partner.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/cpdctask/com.sap.s4idea.cpdc.ui.task",
			"recipientUsers": "${context.sManager}",
			"id": "usertask1",
			"name": "Request for Design Update (Internal)",
			"dueDateRef": "6dfffb21-8a4d-4b73-99f9-04421c38a682"
		},
		"2330b384-6ecb-43d4-9b06-59ab0c7408b7": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Accept Design Update Request (Partner)",
			"description": "Dear Partner, \nPlease update the attached design based on the uploaded specifications.\nIn case of uncertainity, reject the task and describe your issue.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/cpdctask/com.sap.s4idea.cpdc.ui.task",
			"recipientUsers": "${context.sPartner}",
			"id": "usertask2",
			"name": "Update Design based on Request (Partner)",
			"dueDateRef": "06800584-a92d-445b-9c98-923534ded37e"
		},
		"4f1745a7-b621-4359-bfc2-cc82ec79b32e": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Accept Design Update (Internal)",
			"description": "Check the updated design for completeness. In case of any questions or missing points, reject the task,\nso the partner can rework the design documents.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/cpdctask/com.sap.s4idea.cpdc.ui.task",
			"recipientUsers": "${context.sManager}",
			"id": "usertask3",
			"name": "Accept Design Update (Internal)",
			"dueDateRef": "58862324-225a-44a8-91bb-f4b2215b12b7"
		},
		"295c1b48-e088-4ecb-8dc2-da3d275d8e4e": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DesignUpdateRequest/Preparation1.js",
			"id": "scripttask1",
			"name": "Preparation1"
		},
		"c0ac5c99-849b-4dc0-8e10-84b2dcaea653": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DesignUpdateRequest/Preparation2.js",
			"id": "scripttask2",
			"name": "Preparation2"
		},
		"3769918f-e869-4369-bd6e-52636aca38bd": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DesignUpdateRequest/ScriptTask3.js",
			"id": "scripttask3",
			"name": "ScriptTask3"
		},
		"ee984a07-d9b5-42d0-bf63-85616b4da006": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DesignUpdateRequest/ScriptTask4.js",
			"id": "scripttask4",
			"name": "ScriptTask4"
		},
		"3371bfcb-dad2-4374-afd9-236f874fb920": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway1",
			"name": "ParallelGateway1"
		},
		"ab9f507e-95ea-4d5e-93ab-e2747e9f4abc": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DesignUpdateRequest/setReqObjForWFValidation.js",
			"id": "scripttask5",
			"name": "SetReqObjForWFValidation"
		},
		"ca2595a4-736d-459b-94be-e483c03fc72d": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "cpdcWF",
			"path": "/service/validate/int/WorkflowValidation",
			"httpMethod": "POST",
			"requestVariable": "${context.reqBody}",
			"responseVariable": "${context.WorkflowValidationResponse}",
			"id": "servicetask1",
			"name": "ValidateWFInitiatorForCollaboration",
			"principalPropagationRef": "f881cde9-cf86-488a-afe7-9ed7bcd4e79c"
		},
		"50ebfeb5-fa29-4991-af0a-98ceb6734899": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "IsInitiatorValidForCollaboration",
			"default": "fe7229d2-aadd-4cac-8884-1c4c82ff3f89"
		},
		"b7bb47df-7d9e-49e8-ad59-63b27c0461ae": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DesignUpdateRequest/deleteInstance.js",
			"id": "scripttask6",
			"name": "deleteInstance"
		},
		"67a6dc5d-1bd9-438d-951d-500fbe70dc93": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DesignUpdateRequest/setReqObjForFetchingUpdatedUsers.js",
			"id": "scripttask7",
			"name": "setReqObjForFetchingUpdatedUsers"
		},
		"e8581d23-5dd4-4c54-87d9-48d2147e3348": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "cpdcWF",
			"path": "/service/validate/int/WorkflowValidation",
			"httpMethod": "POST",
			"requestVariable": "${context.reqBody}",
			"responseVariable": "${context.WorkflowValidationResponse.workflow}",
			"id": "servicetask2",
			"name": "GetUpdatedUsersService"
		},
		"cc930d21-81a4-4f04-81ab-4d1dff3c3499": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DesignUpdateRequest/setUpdatedPermissions.js",
			"id": "scripttask8",
			"name": "setUpdatedPermissions"
		},
		"01113114-9a6c-40e5-8044-881bf6f98ff1": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DesignUpdateRequest/setInstanceLevelPermission.js",
			"id": "scripttask9",
			"name": "SetInstanceLevelPermission"
		},
		"3e6d012a-f889-404a-b9f9-51bbcf3e826d": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway2",
			"name": "ParallelGateway2"
		},
		"31241341-d206-4a08-b4c2-9d06582042bd": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DesignUpdateRequest/prepareEmailScript1.js",
			"id": "scripttask10",
			"name": "prepareEmailScript1"
		},
		"53c2f020-faf9-46c5-b174-4800e2f049ef": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "cpdcmail",
			"path": "/service/v1/Mail",
			"httpMethod": "POST",
			"requestVariable": "${context.reqMailBody}",
			"id": "servicetask3",
			"name": "ServiceTask3"
		},
		"de9f1d90-c460-48a6-bbf7-db4a14f18281": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway3",
			"name": "ParallelGateway3"
		},
		"d882e992-ac9e-440c-983c-f2114a79adf0": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway4",
			"name": "ParallelGateway4"
		},
		"668d1e20-3c2d-49b9-97be-0f33e0ff2c80": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DesignUpdateRequest/prepareEmailScript2.js",
			"id": "scripttask11",
			"name": "prepareEmailScript2"
		},
		"9b8c6bbb-a08f-499d-8007-9c3ebed1713a": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Accept Request?",
			"default": "4f1cef45-8620-472e-b520-0a2ade31e7c9"
		},
		"0faba3b6-8a5c-4d5a-b2d3-25f86e4b0974": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Accept Update",
			"default": "64108afe-c20c-4edd-8f06-2b71cb853b0a"
		},
		"e22a14bf-f116-48d5-bbd6-1ba367979bdf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "b04f521c-879a-4375-8cd3-aee67960b2c7",
			"targetRef": "295c1b48-e088-4ecb-8dc2-da3d275d8e4e"
		},
		"fe76b65b-9023-475d-a3d4-3e9c221cd503": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "2330b384-6ecb-43d4-9b06-59ab0c7408b7",
			"targetRef": "9b8c6bbb-a08f-499d-8007-9c3ebed1713a"
		},
		"40d622d4-60eb-4206-b841-546b937b9a1b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "4f1745a7-b621-4359-bfc2-cc82ec79b32e",
			"targetRef": "0faba3b6-8a5c-4d5a-b2d3-25f86e4b0974"
		},
		"4f1cef45-8620-472e-b520-0a2ade31e7c9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "Ok",
			"sourceRef": "9b8c6bbb-a08f-499d-8007-9c3ebed1713a",
			"targetRef": "c0ac5c99-849b-4dc0-8e10-84b2dcaea653"
		},
		"64108afe-c20c-4edd-8f06-2b71cb853b0a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "Ok",
			"sourceRef": "0faba3b6-8a5c-4d5a-b2d3-25f86e4b0974",
			"targetRef": "54a100f8-ef1c-4c68-8eeb-d297510917b5"
		},
		"455ef69b-d73b-4356-a2d2-cd12d4018839": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.usertask3.result == \"Reject\" }",
			"id": "sequenceflow6",
			"name": "Rework Requested",
			"sourceRef": "0faba3b6-8a5c-4d5a-b2d3-25f86e4b0974",
			"targetRef": "ee984a07-d9b5-42d0-bf63-85616b4da006"
		},
		"e8db2d72-e9df-4fb5-8336-9c359d7e3f4c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.usertask2.result == \"Reject\" }",
			"id": "sequenceflow7",
			"name": "Request Update Requested",
			"sourceRef": "9b8c6bbb-a08f-499d-8007-9c3ebed1713a",
			"targetRef": "3769918f-e869-4369-bd6e-52636aca38bd"
		},
		"8e6dfcb7-99fd-438c-a726-bca01716af46": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "f881cde9-cf86-488a-afe7-9ed7bcd4e79c",
			"targetRef": "3371bfcb-dad2-4374-afd9-236f874fb920"
		},
		"78f5ae2f-dd61-40ea-95e6-aaf102198300": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "295c1b48-e088-4ecb-8dc2-da3d275d8e4e",
			"targetRef": "d882e992-ac9e-440c-983c-f2114a79adf0"
		},
		"b5b931d8-abb4-43af-ace5-935d8c10e6b4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "c0ac5c99-849b-4dc0-8e10-84b2dcaea653",
			"targetRef": "b834803c-be86-4b91-a1ab-9f29505f60bc"
		},
		"c8adc771-882e-4b54-9b75-3e45ca126a2a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "ee984a07-d9b5-42d0-bf63-85616b4da006",
			"targetRef": "a7429cb9-c64b-4a59-8dfa-5173f8680cc3"
		},
		"7d6a6cd0-c1a7-4c03-801d-3e106b4b52c3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "3371bfcb-dad2-4374-afd9-236f874fb920",
			"targetRef": "ab9f507e-95ea-4d5e-93ab-e2747e9f4abc"
		},
		"3ad119d3-cb39-43f6-9047-8835091c908f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "ab9f507e-95ea-4d5e-93ab-e2747e9f4abc",
			"targetRef": "ca2595a4-736d-459b-94be-e483c03fc72d"
		},
		"953f1041-e08d-43c3-af57-0557265ba7fa": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "ca2595a4-736d-459b-94be-e483c03fc72d",
			"targetRef": "50ebfeb5-fa29-4991-af0a-98ceb6734899"
		},
		"7017911e-b4f2-4f41-b675-6f065a13658b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.WorkflowValidationResponse.workflow.status == \"DELETE\"}",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "50ebfeb5-fa29-4991-af0a-98ceb6734899",
			"targetRef": "b7bb47df-7d9e-49e8-ad59-63b27c0461ae"
		},
		"fdc616e7-96b6-4709-90a6-bc53d1657ce5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "b7bb47df-7d9e-49e8-ad59-63b27c0461ae",
			"targetRef": "be4e5aa3-8ea3-4848-9256-a8979cd59fd3"
		},
		"c2906db9-d7dc-4f46-b8a5-0297b69920ec": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "3371bfcb-dad2-4374-afd9-236f874fb920",
			"targetRef": "3a03326c-199a-497e-8ed9-e806d0c8b494"
		},
		"f387314a-ffac-4d86-a13a-70cc2fdfc6c7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow20",
			"name": "SequenceFlow20",
			"sourceRef": "3a03326c-199a-497e-8ed9-e806d0c8b494",
			"targetRef": "67a6dc5d-1bd9-438d-951d-500fbe70dc93"
		},
		"1a0476d5-1ad8-4e77-9fde-0a100ef66ff6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "SequenceFlow21",
			"sourceRef": "67a6dc5d-1bd9-438d-951d-500fbe70dc93",
			"targetRef": "e8581d23-5dd4-4c54-87d9-48d2147e3348"
		},
		"87e5e759-88c6-4d33-b084-54215268313c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow22",
			"name": "SequenceFlow22",
			"sourceRef": "e8581d23-5dd4-4c54-87d9-48d2147e3348",
			"targetRef": "cc930d21-81a4-4f04-81ab-4d1dff3c3499"
		},
		"b82a39df-29c8-4676-812f-c72f9fbd02d3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "cc930d21-81a4-4f04-81ab-4d1dff3c3499",
			"targetRef": "3a03326c-199a-497e-8ed9-e806d0c8b494"
		},
		"fe7229d2-aadd-4cac-8884-1c4c82ff3f89": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "SequenceFlow25",
			"sourceRef": "50ebfeb5-fa29-4991-af0a-98ceb6734899",
			"targetRef": "01113114-9a6c-40e5-8044-881bf6f98ff1"
		},
		"7e3d4a2d-787b-4cfd-abcb-1602f160d535": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow26",
			"name": "SequenceFlow26",
			"sourceRef": "01113114-9a6c-40e5-8044-881bf6f98ff1",
			"targetRef": "3e6d012a-f889-404a-b9f9-51bbcf3e826d"
		},
		"5008fba6-c261-4bd8-9fad-68f342a57ac3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow27",
			"name": "SequenceFlow27",
			"sourceRef": "3e6d012a-f889-404a-b9f9-51bbcf3e826d",
			"targetRef": "b04f521c-879a-4375-8cd3-aee67960b2c7"
		},
		"37b4f9a6-0517-4795-b11c-e9b9377d1793": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "SequenceFlow28",
			"sourceRef": "3e6d012a-f889-404a-b9f9-51bbcf3e826d",
			"targetRef": "31241341-d206-4a08-b4c2-9d06582042bd"
		},
		"e6051b14-c54e-4a74-82dd-574efb5f46d4": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "SequenceFlow29",
			"sourceRef": "3769918f-e869-4369-bd6e-52636aca38bd",
			"targetRef": "de9f1d90-c460-48a6-bbf7-db4a14f18281"
		},
		"ecf68718-a26a-4104-a9a6-23287d31bd54": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow30",
			"name": "SequenceFlow30",
			"sourceRef": "31241341-d206-4a08-b4c2-9d06582042bd",
			"targetRef": "53c2f020-faf9-46c5-b174-4800e2f049ef"
		},
		"771dee5a-d0fd-4bb7-8e76-315ffec401b8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow31",
			"name": "SequenceFlow31",
			"sourceRef": "53c2f020-faf9-46c5-b174-4800e2f049ef",
			"targetRef": "c6ad00a8-3731-419e-b544-bfcbb7f392d3"
		},
		"f4a6a451-0729-4a2a-906f-8faf2ad5abc7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow32",
			"name": "SequenceFlow32",
			"sourceRef": "de9f1d90-c460-48a6-bbf7-db4a14f18281",
			"targetRef": "b04f521c-879a-4375-8cd3-aee67960b2c7"
		},
		"0af46b10-a4d1-4c09-a373-019814398a28": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow33",
			"name": "SequenceFlow33",
			"sourceRef": "de9f1d90-c460-48a6-bbf7-db4a14f18281",
			"targetRef": "31241341-d206-4a08-b4c2-9d06582042bd"
		},
		"434954b7-340d-4d9a-b6c9-78b6c6382d27": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow34",
			"name": "SequenceFlow34",
			"sourceRef": "d882e992-ac9e-440c-983c-f2114a79adf0",
			"targetRef": "2330b384-6ecb-43d4-9b06-59ab0c7408b7"
		},
		"2a9bfcad-0b8e-47c5-9e92-d146d41271b4": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"4179ee27-fc5b-4925-9994-7fd069d90cd8": {},
				"7b0f7468-02f5-44a5-9dd8-d4b17243a995": {},
				"4e2cb2d3-7f7d-4904-afe1-6f7f7d3c73a6": {},
				"9d9e68fc-2766-4ab7-a5f9-47ccf706172c": {},
				"ac678755-65f8-4081-a9a6-a5ee3d949416": {},
				"c3dfe0af-5635-4424-b3f8-5dac9dc15dfc": {},
				"5bd954eb-1f1c-408e-8464-05b6df30a5a5": {},
				"af4f0013-717d-4887-84e5-6d3f5c0d0202": {},
				"5fc2ea53-7d03-4ff3-b056-4702d013ce61": {},
				"c3457ecb-1931-4f6a-8b87-4a4ae29df038": {},
				"72dd6a5c-c83b-46ca-a40b-5fd8f57338d8": {},
				"0f36d423-f6b5-4b4d-b57d-70ac0a55afd6": {},
				"3cb5a6d3-4bb3-485d-ad6f-6b601101342d": {},
				"fa543b2e-8fbc-49c0-8dc9-087ddade77b6": {},
				"15221f62-e984-42ca-9fa8-432143445580": {},
				"2b5b753a-e87b-4be5-b3da-8e482343baef": {},
				"1e33f179-30b7-49ec-b02e-4c7702987461": {},
				"ced5b9f6-dd9e-4007-83e1-8a0b97f2cef2": {},
				"5f656cc7-1765-4387-be88-2759fd17d35f": {},
				"e3e2a0f5-1239-4c33-9125-3ae3ddd29f92": {},
				"c844b98f-6e8d-485b-a6fd-d4dbdf339886": {},
				"36468d2c-5a76-4a80-9d6a-f8b6024e6608": {},
				"b61e4fc3-5843-4521-b439-22f05e33a886": {},
				"f21d2ba0-3d62-496d-aad6-3370c75dd2af": {},
				"5ecc64aa-630a-485d-9094-0880e65bff23": {},
				"be6b0087-d7ec-48ae-a8c3-9fd20a411e71": {},
				"7ef74d88-d74c-4d29-a65a-b219549a9c63": {},
				"6fc99876-c45b-4353-8ba5-4e4d57012104": {},
				"1a938063-e42e-4d1f-b4f4-ff239c1627df": {},
				"628cf61c-d03a-4bbc-8efa-a6b2d057b05d": {},
				"dd3543da-9bcf-4518-9401-2034fd510552": {},
				"76556324-ccdb-4c56-86c4-c23fceb28d25": {},
				"1e1a25d5-a7dd-4d40-b53b-dabc6991bf1d": {},
				"bd93ab59-bced-4a1a-ac91-3d1a17b16aeb": {},
				"e900f098-f996-4047-97fc-20ad77c2475c": {},
				"30591a05-8c6c-4fbc-9399-8a0c815a89ae": {},
				"f1551ae4-7fbc-4fe8-a753-76839d5c6733": {},
				"ff8dad9b-d064-4409-816b-b16d4e734680": {},
				"2113d218-4650-488d-9184-c1f45024fb6b": {},
				"104c82cc-75de-4868-b11c-13ae45e20ed9": {},
				"d5995af0-bc3d-4c10-9eaa-48703ef9dde6": {},
				"d42cf2c2-bc56-4830-8f83-f4e2f19068e8": {},
				"64522982-90cb-4b5f-baec-affc497dc887": {},
				"2690fed7-def8-40e0-a51c-39dca00a09f3": {},
				"2fcb8c9a-74ca-4c41-ab65-c9131259261a": {},
				"761dd7b5-6e55-42a9-bf27-7b5404a47de5": {},
				"611a0332-2d6a-4017-99a5-8f67da969a5d": {},
				"630d5e7a-f72c-4b8d-94df-3c78ead1c9ae": {},
				"4c32b36a-8633-43da-bd50-aea19fc67f88": {},
				"3c285d3c-2288-4469-94be-546898a69fb4": {},
				"c6237959-2dcd-4527-b373-a8706bca11cf": {},
				"346b5c54-c24d-4611-8373-0fb7e7b1d770": {},
				"88948c3a-7958-4ad3-9832-b2a056e1039f": {},
				"bcd909dc-11f3-413a-816a-4e765ea3bd0a": {},
				"6d75e54f-5636-4e95-9e92-e6a9fd6616df": {},
				"b99fb5c0-85ea-472d-99a3-bf9442149769": {},
				"714d8d32-2937-44a3-96c7-dfbffad8d1f3": {},
				"5f03c57e-4c5d-4ce9-89df-c44e4b3d4ccf": {},
				"4f4e9c7b-da27-4e9f-aab4-43d2d2a7bac7": {},
				"bb8125d9-d123-4a28-8095-6b390e11c7de": {},
				"b011c596-3b38-4f9e-8ce3-0b8688bfe070": {},
				"8621cc4f-4d0e-4d35-a140-9338e4eab8f8": {},
				"496afdf3-e175-4603-87cc-1efd0cf7dbc8": {},
				"f79b275f-6995-4ae1-b4aa-4360697bc13d": {},
				"fd2d3288-d4b6-42e6-a63d-a95d4de466d3": {},
				"15ba000d-2ed2-494d-b845-3d1dc7d28748": {},
				"9ede9f97-8dfc-4cd0-af3a-3f2a13505d75": {},
				"853a245c-4c11-46b0-aec8-52030fefa066": {},
				"f1dcef0c-7807-4c30-8b09-cc7a1b1169bb": {},
				"3d8b75f4-49df-4f16-a3df-aa81f4dec605": {},
				"e014845c-f3d8-44e9-b87b-748d7a20d799": {},
				"41b3eb71-5580-4e9b-83a2-a3c1bb0ae7ac": {},
				"73c3674b-d1a7-45e1-8c0b-b22c905c1546": {}
			}
		},
		"63490ecd-4b34-40aa-9e28-9767bcb282a5": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"8a986a33-7e4c-4583-8c56-32cc66da159b": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition2"
		},
		"092212b4-f2ff-433f-9ac3-76640ddfa83d": {
			"classDefinition": "com.sap.bpm.wfs.MessageEventDefinition",
			"id": "messageeventdefinition3",
			"messageRef": "436b1de6-b396-4b49-8220-ad417a228674"
		},
		"4179ee27-fc5b-4925-9994-7fd069d90cd8": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -521,
			"y": 168,
			"width": 32,
			"height": 32,
			"object": "f881cde9-cf86-488a-afe7-9ed7bcd4e79c"
		},
		"7b0f7468-02f5-44a5-9dd8-d4b17243a995": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 250,
			"y": 153.5,
			"width": 100,
			"height": 55,
			"object": "b04f521c-879a-4375-8cd3-aee67960b2c7"
		},
		"4e2cb2d3-7f7d-4904-afe1-6f7f7d3c73a6": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 585,
			"y": 153.5,
			"width": 100,
			"height": 55,
			"object": "2330b384-6ecb-43d4-9b06-59ab0c7408b7"
		},
		"9d9e68fc-2766-4ab7-a5f9-47ccf706172c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "300,182.5 429,182.5",
			"sourceSymbol": "7b0f7468-02f5-44a5-9dd8-d4b17243a995",
			"targetSymbol": "2b5b753a-e87b-4be5-b3da-8e482343baef",
			"object": "e22a14bf-f116-48d5-bbd6-1ba367979bdf"
		},
		"ac678755-65f8-4081-a9a6-a5ee3d949416": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 981,
			"y": 156.5,
			"width": 100,
			"height": 55,
			"object": "4f1745a7-b621-4359-bfc2-cc82ec79b32e"
		},
		"c3dfe0af-5635-4424-b3f8-5dac9dc15dfc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "635,180 741,180",
			"sourceSymbol": "4e2cb2d3-7f7d-4904-afe1-6f7f7d3c73a6",
			"targetSymbol": "5fc2ea53-7d03-4ff3-b056-4702d013ce61",
			"object": "fe76b65b-9023-475d-a3d4-3e9c221cd503"
		},
		"5bd954eb-1f1c-408e-8464-05b6df30a5a5": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1237,
			"y": 169,
			"width": 32,
			"height": 32,
			"object": "54a100f8-ef1c-4c68-8eeb-d297510917b5"
		},
		"af4f0013-717d-4887-84e5-6d3f5c0d0202": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1031,181 1143,181",
			"sourceSymbol": "ac678755-65f8-4081-a9a6-a5ee3d949416",
			"targetSymbol": "72dd6a5c-c83b-46ca-a40b-5fd8f57338d8",
			"object": "40d622d4-60eb-4206-b841-546b937b9a1b"
		},
		"5fc2ea53-7d03-4ff3-b056-4702d013ce61": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 720,
			"y": 158,
			"object": "9b8c6bbb-a08f-499d-8007-9c3ebed1713a"
		},
		"c3457ecb-1931-4f6a-8b87-4a4ae29df038": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "741,181.5 855,181.5",
			"sourceSymbol": "5fc2ea53-7d03-4ff3-b056-4702d013ce61",
			"targetSymbol": "ced5b9f6-dd9e-4007-83e1-8a0b97f2cef2",
			"object": "4f1cef45-8620-472e-b520-0a2ade31e7c9"
		},
		"72dd6a5c-c83b-46ca-a40b-5fd8f57338d8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1122,
			"y": 157,
			"object": "0faba3b6-8a5c-4d5a-b2d3-25f86e4b0974"
		},
		"0f36d423-f6b5-4b4d-b57d-70ac0a55afd6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1143,181.5 1253,181.5",
			"sourceSymbol": "72dd6a5c-c83b-46ca-a40b-5fd8f57338d8",
			"targetSymbol": "5bd954eb-1f1c-408e-8464-05b6df30a5a5",
			"object": "64108afe-c20c-4edd-8f06-2b71cb853b0a"
		},
		"3cb5a6d3-4bb3-485d-ad6f-6b601101342d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1143,199 1143,259 1003,259",
			"sourceSymbol": "72dd6a5c-c83b-46ca-a40b-5fd8f57338d8",
			"targetSymbol": "c844b98f-6e8d-485b-a6fd-d4dbdf339886",
			"object": "455ef69b-d73b-4356-a2d2-cd12d4018839"
		},
		"fa543b2e-8fbc-49c0-8dc9-087ddade77b6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "741,158 741,103 429,103",
			"sourceSymbol": "5fc2ea53-7d03-4ff3-b056-4702d013ce61",
			"targetSymbol": "e3e2a0f5-1239-4c33-9125-3ae3ddd29f92",
			"object": "e8db2d72-e9df-4fb5-8336-9c359d7e3f4c"
		},
		"15221f62-e984-42ca-9fa8-432143445580": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-505,186.5 -429,186.5",
			"sourceSymbol": "4179ee27-fc5b-4925-9994-7fd069d90cd8",
			"targetSymbol": "b61e4fc3-5843-4521-b439-22f05e33a886",
			"object": "8e6dfcb7-99fd-438c-a726-bca01716af46"
		},
		"2b5b753a-e87b-4be5-b3da-8e482343baef": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 379,
			"y": 156.5,
			"width": 100,
			"height": 55,
			"object": "295c1b48-e088-4ecb-8dc2-da3d275d8e4e"
		},
		"1e33f179-30b7-49ec-b02e-4c7702987461": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "429,183.25 532,183.25",
			"sourceSymbol": "2b5b753a-e87b-4be5-b3da-8e482343baef",
			"targetSymbol": "5f03c57e-4c5d-4ce9-89df-c44e4b3d4ccf",
			"object": "78f5ae2f-dd61-40ea-95e6-aaf102198300"
		},
		"ced5b9f6-dd9e-4007-83e1-8a0b97f2cef2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 805,
			"y": 156.5,
			"width": 100,
			"height": 55,
			"object": "c0ac5c99-849b-4dc0-8e10-84b2dcaea653"
		},
		"5f656cc7-1765-4387-be88-2759fd17d35f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "855,184 943,184",
			"sourceSymbol": "ced5b9f6-dd9e-4007-83e1-8a0b97f2cef2",
			"targetSymbol": "15ba000d-2ed2-494d-b845-3d1dc7d28748",
			"object": "b5b931d8-abb4-43af-ace5-935d8c10e6b4"
		},
		"e3e2a0f5-1239-4c33-9125-3ae3ddd29f92": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 379,
			"y": 75.5,
			"width": 100,
			"height": 55,
			"object": "3769918f-e869-4369-bd6e-52636aca38bd"
		},
		"c844b98f-6e8d-485b-a6fd-d4dbdf339886": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 953,
			"y": 231.5,
			"width": 100,
			"height": 55,
			"object": "ee984a07-d9b5-42d0-bf63-85616b4da006"
		},
		"36468d2c-5a76-4a80-9d6a-f8b6024e6608": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1003,259 637,259",
			"sourceSymbol": "c844b98f-6e8d-485b-a6fd-d4dbdf339886",
			"targetSymbol": "e014845c-f3d8-44e9-b87b-748d7a20d799",
			"object": "c8adc771-882e-4b54-9b75-3e45ca126a2a"
		},
		"b61e4fc3-5843-4521-b439-22f05e33a886": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": -450,
			"y": 168,
			"object": "3371bfcb-dad2-4374-afd9-236f874fb920"
		},
		"f21d2ba0-3d62-496d-aad6-3370c75dd2af": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-429,187.75 -327.75,187.75",
			"sourceSymbol": "b61e4fc3-5843-4521-b439-22f05e33a886",
			"targetSymbol": "5ecc64aa-630a-485d-9094-0880e65bff23",
			"object": "7d6a6cd0-c1a7-4c03-801d-3e106b4b52c3"
		},
		"5ecc64aa-630a-485d-9094-0880e65bff23": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -377.75,
			"y": 156.5,
			"width": 100,
			"height": 60,
			"object": "ab9f507e-95ea-4d5e-93ab-e2747e9f4abc"
		},
		"be6b0087-d7ec-48ae-a8c3-9fd20a411e71": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-327.75,185.375 -169.375,185.375",
			"sourceSymbol": "5ecc64aa-630a-485d-9094-0880e65bff23",
			"targetSymbol": "7ef74d88-d74c-4d29-a65a-b219549a9c63",
			"object": "3ad119d3-cb39-43f6-9047-8835091c908f"
		},
		"7ef74d88-d74c-4d29-a65a-b219549a9c63": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -219.375,
			"y": 154.25,
			"width": 100,
			"height": 60,
			"object": "ca2595a4-736d-459b-94be-e483c03fc72d"
		},
		"6fc99876-c45b-4353-8ba5-4e4d57012104": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-169.375,186.6875 -16.1875,186.6875",
			"sourceSymbol": "7ef74d88-d74c-4d29-a65a-b219549a9c63",
			"targetSymbol": "1a938063-e42e-4d1f-b4f4-ff239c1627df",
			"object": "953f1041-e08d-43c3-af57-0557265ba7fa"
		},
		"1a938063-e42e-4d1f-b4f4-ff239c1627df": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": -37.1875,
			"y": 168.125,
			"object": "50ebfeb5-fa29-4991-af0a-98ceb6734899"
		},
		"628cf61c-d03a-4bbc-8efa-a6b2d057b05d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -66,
			"y": 266,
			"width": 100,
			"height": 60,
			"object": "b7bb47df-7d9e-49e8-ad59-63b27c0461ae"
		},
		"dd3543da-9bcf-4518-9401-2034fd510552": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-16.09375,189.125 -16.09375,296",
			"sourceSymbol": "1a938063-e42e-4d1f-b4f4-ff239c1627df",
			"targetSymbol": "628cf61c-d03a-4bbc-8efa-a6b2d057b05d",
			"object": "7017911e-b4f2-4f41-b675-6f065a13658b"
		},
		"76556324-ccdb-4c56-86c4-c23fceb28d25": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 74,
			"y": 278.5,
			"width": 35,
			"height": 35,
			"object": "be4e5aa3-8ea3-4848-9256-a8979cd59fd3"
		},
		"1e1a25d5-a7dd-4d40-b53b-dabc6991bf1d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-16,296 91.5,296",
			"sourceSymbol": "628cf61c-d03a-4bbc-8efa-a6b2d057b05d",
			"targetSymbol": "76556324-ccdb-4c56-86c4-c23fceb28d25",
			"object": "fdc616e7-96b6-4709-90a6-bc53d1657ce5"
		},
		"bd93ab59-bced-4a1a-ac91-3d1a17b16aeb": {
			"classDefinition": "com.sap.bpm.wfs.ui.IntermediateCatchEventSymbol",
			"x": -445,
			"y": 276,
			"width": 32,
			"height": 32,
			"object": "3a03326c-199a-497e-8ed9-e806d0c8b494"
		},
		"e900f098-f996-4047-97fc-20ad77c2475c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-429,189 -429,292",
			"sourceSymbol": "b61e4fc3-5843-4521-b439-22f05e33a886",
			"targetSymbol": "bd93ab59-bced-4a1a-ac91-3d1a17b16aeb",
			"object": "c2906db9-d7dc-4f46-b8a5-0297b69920ec"
		},
		"30591a05-8c6c-4fbc-9399-8a0c815a89ae": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -363,
			"y": 262,
			"width": 100,
			"height": 60,
			"object": "67a6dc5d-1bd9-438d-951d-500fbe70dc93"
		},
		"f1551ae4-7fbc-4fe8-a753-76839d5c6733": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-429,292 -313,292",
			"sourceSymbol": "bd93ab59-bced-4a1a-ac91-3d1a17b16aeb",
			"targetSymbol": "30591a05-8c6c-4fbc-9399-8a0c815a89ae",
			"object": "f387314a-ffac-4d86-a13a-70cc2fdfc6c7"
		},
		"ff8dad9b-d064-4409-816b-b16d4e734680": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -240,
			"y": 262,
			"width": 100,
			"height": 60,
			"object": "e8581d23-5dd4-4c54-87d9-48d2147e3348"
		},
		"2113d218-4650-488d-9184-c1f45024fb6b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-313,292 -190,292",
			"sourceSymbol": "30591a05-8c6c-4fbc-9399-8a0c815a89ae",
			"targetSymbol": "ff8dad9b-d064-4409-816b-b16d4e734680",
			"object": "1a0476d5-1ad8-4e77-9fde-0a100ef66ff6"
		},
		"104c82cc-75de-4868-b11c-13ae45e20ed9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": -313,
			"y": 362,
			"width": 100,
			"height": 60,
			"object": "cc930d21-81a4-4f04-81ab-4d1dff3c3499"
		},
		"d5995af0-bc3d-4c10-9eaa-48703ef9dde6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-190,292 -190,342.25 -263,342.25 -263,392",
			"sourceSymbol": "ff8dad9b-d064-4409-816b-b16d4e734680",
			"targetSymbol": "104c82cc-75de-4868-b11c-13ae45e20ed9",
			"object": "87e5e759-88c6-4d33-b084-54215268313c"
		},
		"d42cf2c2-bc56-4830-8f83-f4e2f19068e8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-263,392 -426,392 -426,292",
			"sourceSymbol": "104c82cc-75de-4868-b11c-13ae45e20ed9",
			"targetSymbol": "bd93ab59-bced-4a1a-ac91-3d1a17b16aeb",
			"object": "b82a39df-29c8-4676-812f-c72f9fbd02d3"
		},
		"64522982-90cb-4b5f-baec-affc497dc887": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 51.8125,
			"y": 160.125,
			"width": 100,
			"height": 60,
			"object": "01113114-9a6c-40e5-8044-881bf6f98ff1"
		},
		"2690fed7-def8-40e0-a51c-39dca00a09f3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-16.1875,185.125 28.3125,185.125 28.3125,194.125 101.8125,194.125",
			"sourceSymbol": "1a938063-e42e-4d1f-b4f4-ff239c1627df",
			"targetSymbol": "64522982-90cb-4b5f-baec-affc497dc887",
			"object": "fe7229d2-aadd-4cac-8884-1c4c82ff3f89"
		},
		"2fcb8c9a-74ca-4c41-ab65-c9131259261a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "101.8125,190.09375 176.109375,190.09375 176.109375,181.09375 220.90625,181.09375",
			"sourceSymbol": "64522982-90cb-4b5f-baec-affc497dc887",
			"targetSymbol": "761dd7b5-6e55-42a9-bf27-7b5404a47de5",
			"object": "7e3d4a2d-787b-4cfd-abcb-1602f160d535"
		},
		"761dd7b5-6e55-42a9-bf27-7b5404a47de5": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 199.90625,
			"y": 160.0625,
			"object": "3e6d012a-f889-404a-b9f9-51bbcf3e826d"
		},
		"611a0332-2d6a-4017-99a5-8f67da969a5d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "220.90625,181.03125 300,181.03125",
			"sourceSymbol": "761dd7b5-6e55-42a9-bf27-7b5404a47de5",
			"targetSymbol": "7b0f7468-02f5-44a5-9dd8-d4b17243a995",
			"object": "5008fba6-c261-4bd8-9fad-68f342a57ac3"
		},
		"630d5e7a-f72c-4b8d-94df-3c78ead1c9ae": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 259,
			"y": -66,
			"width": 100,
			"height": 60,
			"object": "31241341-d206-4a08-b4c2-9d06582042bd"
		},
		"4c32b36a-8633-43da-bd50-aea19fc67f88": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "221,181.0625 221,-36 309,-36",
			"sourceSymbol": "761dd7b5-6e55-42a9-bf27-7b5404a47de5",
			"targetSymbol": "630d5e7a-f72c-4b8d-94df-3c78ead1c9ae",
			"object": "37b4f9a6-0517-4795-b11c-e9b9377d1793"
		},
		"3c285d3c-2288-4469-94be-546898a69fb4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "429,103 296,103",
			"sourceSymbol": "e3e2a0f5-1239-4c33-9125-3ae3ddd29f92",
			"targetSymbol": "6d75e54f-5636-4e95-9e92-e6a9fd6616df",
			"object": "e6051b14-c54e-4a74-82dd-574efb5f46d4"
		},
		"c6237959-2dcd-4527-b373-a8706bca11cf": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 540,
			"y": -66,
			"width": 100,
			"height": 60,
			"object": "53c2f020-faf9-46c5-b174-4800e2f049ef"
		},
		"346b5c54-c24d-4611-8373-0fb7e7b1d770": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "309,-36 590,-36",
			"sourceSymbol": "630d5e7a-f72c-4b8d-94df-3c78ead1c9ae",
			"targetSymbol": "c6237959-2dcd-4527-b373-a8706bca11cf",
			"object": "ecf68718-a26a-4104-a9a6-23287d31bd54"
		},
		"88948c3a-7958-4ad3-9832-b2a056e1039f": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 690,
			"y": -53.5,
			"width": 35,
			"height": 35,
			"object": "c6ad00a8-3731-419e-b544-bfcbb7f392d3"
		},
		"bcd909dc-11f3-413a-816a-4e765ea3bd0a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "590,-36 707.5,-36",
			"sourceSymbol": "c6237959-2dcd-4527-b373-a8706bca11cf",
			"targetSymbol": "88948c3a-7958-4ad3-9832-b2a056e1039f",
			"object": "771dee5a-d0fd-4bb7-8e76-315ffec401b8"
		},
		"6d75e54f-5636-4e95-9e92-e6a9fd6616df": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 275,
			"y": 82,
			"object": "de9f1d90-c460-48a6-bbf7-db4a14f18281"
		},
		"b99fb5c0-85ea-472d-99a3-bf9442149769": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "298,103 298,181",
			"sourceSymbol": "6d75e54f-5636-4e95-9e92-e6a9fd6616df",
			"targetSymbol": "7b0f7468-02f5-44a5-9dd8-d4b17243a995",
			"object": "f4a6a451-0729-4a2a-906f-8faf2ad5abc7"
		},
		"714d8d32-2937-44a3-96c7-dfbffad8d1f3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "297,103 297,-36",
			"sourceSymbol": "6d75e54f-5636-4e95-9e92-e6a9fd6616df",
			"targetSymbol": "630d5e7a-f72c-4b8d-94df-3c78ead1c9ae",
			"object": "0af46b10-a4d1-4c09-a373-019814398a28"
		},
		"5f03c57e-4c5d-4ce9-89df-c44e4b3d4ccf": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 511,
			"y": 161.5,
			"object": "d882e992-ac9e-440c-983c-f2114a79adf0"
		},
		"4f4e9c7b-da27-4e9f-aab4-43d2d2a7bac7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "532,181.75 635,181.75",
			"sourceSymbol": "5f03c57e-4c5d-4ce9-89df-c44e4b3d4ccf",
			"targetSymbol": "4e2cb2d3-7f7d-4904-afe1-6f7f7d3c73a6",
			"object": "434954b7-340d-4d9a-b6c9-78b6c6382d27"
		},
		"bb8125d9-d123-4a28-8095-6b390e11c7de": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 482,
			"y": 376,
			"width": 100,
			"height": 60,
			"object": "668d1e20-3c2d-49b9-97be-0f33e0ff2c80"
		},
		"a7999eb9-2613-4bde-950f-26dc0b9da79d": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 2,
			"messageeventdefinition": 3,
			"message": 1,
			"timereventdefinition": 3,
			"hubapireference": 1,
			"sequenceflow": 42,
			"startevent": 1,
			"intermediatemessageevent": 1,
			"endevent": 4,
			"usertask": 3,
			"servicetask": 4,
			"scripttask": 12,
			"exclusivegateway": 3,
			"parallelgateway": 6
		},
		"06800584-a92d-445b-9c98-923534ded37e": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P1D",
			"id": "timereventdefinition1"
		},
		"6dfffb21-8a4d-4b73-99f9-04421c38a682": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P1D",
			"id": "timereventdefinition2"
		},
		"58862324-225a-44a8-91bb-f4b2215b12b7": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P2D",
			"id": "timereventdefinition3"
		},
		"436b1de6-b396-4b49-8220-ad417a228674": {
			"classDefinition": "com.sap.bpm.wfs.Message",
			"name": "updatePermissionMessage",
			"id": "message1"
		},
		"b47ec3f9-9f44-4fbe-bcd3-b08c31847eb5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow35",
			"name": "SequenceFlow35",
			"sourceRef": "d882e992-ac9e-440c-983c-f2114a79adf0",
			"targetRef": "668d1e20-3c2d-49b9-97be-0f33e0ff2c80"
		},
		"b011c596-3b38-4f9e-8ce3-0b8688bfe070": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "532,182.5 532,406",
			"sourceSymbol": "5f03c57e-4c5d-4ce9-89df-c44e4b3d4ccf",
			"targetSymbol": "bb8125d9-d123-4a28-8095-6b390e11c7de",
			"object": "b47ec3f9-9f44-4fbe-bcd3-b08c31847eb5"
		},
		"29099fdd-9b63-4048-bc7f-b9b78ab4ceed": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "cpdcmail",
			"path": "/service/v1/Mail",
			"httpMethod": "POST",
			"requestVariable": "${context.reqMailBody}",
			"id": "servicetask4",
			"name": "ServiceTask4"
		},
		"8621cc4f-4d0e-4d35-a140-9338e4eab8f8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 632,
			"y": 376,
			"width": 100,
			"height": 60,
			"object": "29099fdd-9b63-4048-bc7f-b9b78ab4ceed"
		},
		"98c1ec3f-3846-4f11-9371-eaf7bb2e77b2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow36",
			"name": "SequenceFlow36",
			"sourceRef": "668d1e20-3c2d-49b9-97be-0f33e0ff2c80",
			"targetRef": "29099fdd-9b63-4048-bc7f-b9b78ab4ceed"
		},
		"496afdf3-e175-4603-87cc-1efd0cf7dbc8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "532,406 682,406",
			"sourceSymbol": "bb8125d9-d123-4a28-8095-6b390e11c7de",
			"targetSymbol": "8621cc4f-4d0e-4d35-a140-9338e4eab8f8",
			"object": "98c1ec3f-3846-4f11-9371-eaf7bb2e77b2"
		},
		"c6d580cf-1fa8-466a-b4bb-5c1be1afaa54": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent4",
			"name": "EndEvent4"
		},
		"f79b275f-6995-4ae1-b4aa-4360697bc13d": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 782,
			"y": 388.5,
			"width": 35,
			"height": 35,
			"object": "c6d580cf-1fa8-466a-b4bb-5c1be1afaa54"
		},
		"6e2e6422-48d7-480a-87d8-fb94d1956ef0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow37",
			"name": "SequenceFlow37",
			"sourceRef": "29099fdd-9b63-4048-bc7f-b9b78ab4ceed",
			"targetRef": "c6d580cf-1fa8-466a-b4bb-5c1be1afaa54"
		},
		"fd2d3288-d4b6-42e6-a63d-a95d4de466d3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "682,406 799.5,406",
			"sourceSymbol": "8621cc4f-4d0e-4d35-a140-9338e4eab8f8",
			"targetSymbol": "f79b275f-6995-4ae1-b4aa-4360697bc13d",
			"object": "6e2e6422-48d7-480a-87d8-fb94d1956ef0"
		},
		"b834803c-be86-4b91-a1ab-9f29505f60bc": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway5",
			"name": "ParallelGateway5"
		},
		"15ba000d-2ed2-494d-b845-3d1dc7d28748": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 922,
			"y": 163,
			"object": "b834803c-be86-4b91-a1ab-9f29505f60bc"
		},
		"64269b48-63a6-41e8-ad64-5ed9a0578226": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow38",
			"name": "SequenceFlow38",
			"sourceRef": "b834803c-be86-4b91-a1ab-9f29505f60bc",
			"targetRef": "4f1745a7-b621-4359-bfc2-cc82ec79b32e"
		},
		"9ede9f97-8dfc-4cd0-af3a-3f2a13505d75": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "943,184 1031,184",
			"sourceSymbol": "15ba000d-2ed2-494d-b845-3d1dc7d28748",
			"targetSymbol": "ac678755-65f8-4081-a9a6-a5ee3d949416",
			"object": "64269b48-63a6-41e8-ad64-5ed9a0578226"
		},
		"eb9543c0-1b85-48c6-87f8-33a6e514e90e": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/DesignUpdateRequest/prepareEmailScript3.js",
			"id": "scripttask12",
			"name": "prepareEmailScript3"
		},
		"853a245c-4c11-46b0-aec8-52030fefa066": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 886,
			"y": 26,
			"width": 100,
			"height": 60,
			"object": "eb9543c0-1b85-48c6-87f8-33a6e514e90e"
		},
		"92ec1b6a-7107-4590-8602-94d6d5a9f9c0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow39",
			"name": "SequenceFlow39",
			"sourceRef": "b834803c-be86-4b91-a1ab-9f29505f60bc",
			"targetRef": "eb9543c0-1b85-48c6-87f8-33a6e514e90e"
		},
		"f1dcef0c-7807-4c30-8b09-cc7a1b1169bb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "939.5,184 939.5,56",
			"sourceSymbol": "15ba000d-2ed2-494d-b845-3d1dc7d28748",
			"targetSymbol": "853a245c-4c11-46b0-aec8-52030fefa066",
			"object": "92ec1b6a-7107-4590-8602-94d6d5a9f9c0"
		},
		"1dd02e66-ba80-4bfb-95ea-8d3815655e48": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow40",
			"name": "SequenceFlow40",
			"sourceRef": "eb9543c0-1b85-48c6-87f8-33a6e514e90e",
			"targetRef": "53c2f020-faf9-46c5-b174-4800e2f049ef"
		},
		"3d8b75f4-49df-4f16-a3df-aa81f4dec605": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "936,56 589,56 589,-36",
			"sourceSymbol": "853a245c-4c11-46b0-aec8-52030fefa066",
			"targetSymbol": "c6237959-2dcd-4527-b373-a8706bca11cf",
			"object": "1dd02e66-ba80-4bfb-95ea-8d3815655e48"
		},
		"a7429cb9-c64b-4a59-8dfa-5173f8680cc3": {
			"classDefinition": "com.sap.bpm.wfs.ParallelGateway",
			"id": "parallelgateway6",
			"name": "ParallelGateway6"
		},
		"e014845c-f3d8-44e9-b87b-748d7a20d799": {
			"classDefinition": "com.sap.bpm.wfs.ui.ParallelGatewaySymbol",
			"x": 616,
			"y": 238,
			"object": "a7429cb9-c64b-4a59-8dfa-5173f8680cc3"
		},
		"8f2f6e3f-bdbc-4429-a959-6361123ff4a9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow41",
			"name": "SequenceFlow41",
			"sourceRef": "a7429cb9-c64b-4a59-8dfa-5173f8680cc3",
			"targetRef": "2330b384-6ecb-43d4-9b06-59ab0c7408b7"
		},
		"41b3eb71-5580-4e9b-83a2-a3c1bb0ae7ac": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "636,259 636,181",
			"sourceSymbol": "e014845c-f3d8-44e9-b87b-748d7a20d799",
			"targetSymbol": "4e2cb2d3-7f7d-4904-afe1-6f7f7d3c73a6",
			"object": "8f2f6e3f-bdbc-4429-a959-6361123ff4a9"
		},
		"6d292c92-54d0-42fb-a512-4f74aebbab07": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow42",
			"name": "SequenceFlow42",
			"sourceRef": "a7429cb9-c64b-4a59-8dfa-5173f8680cc3",
			"targetRef": "668d1e20-3c2d-49b9-97be-0f33e0ff2c80"
		},
		"73c3674b-d1a7-45e1-8c0b-b22c905c1546": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "637,259 637,328 532,328 532,406",
			"sourceSymbol": "e014845c-f3d8-44e9-b87b-748d7a20d799",
			"targetSymbol": "bb8125d9-d123-4a28-8095-6b390e11c7de",
			"object": "6d292c92-54d0-42fb-a512-4f74aebbab07"
		}
	}
}