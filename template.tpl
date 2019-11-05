___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Value Hasher",
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "This template can be used to hash values that contain PII and safely send them to GA.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "hitType",
    "displayName": "Track Type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "pageview",
        "displayValue": "Page View"
      },
      {
        "value": "event",
        "displayValue": "Event"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "eventCategory",
    "displayName": "Event Category",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "hitType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "eventAction",
    "displayName": "Event Action",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "hitType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "eventLabel",
    "displayName": "Event Label",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "hitType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "eventValue",
    "displayName": "Event Value",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "hitType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "eventInteraction",
    "displayName": "Non-Interaction Event",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": false,
        "displayValue": "False"
      },
      {
        "value": true,
        "displayValue": "True"
      }
    ],
    "simpleValueType": true,
    "defaultValue": false,
    "enablingConditions": [
      {
        "paramName": "hitType",
        "paramValue": "event",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "gaSettings",
    "displayName": "GA Settings Variable",
    "macrosInSelect": true,
    "selectItems": [],
    "simpleValueType": true
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "hashTable",
    "displayName": "Dimensions to be hahsed",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Field Reference",
        "name": "index",
        "type": "TEXT",
        "valueHint": "dimension7",
        "isUnique": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          },
          {
            "type": "REGEX",
            "args": [
              "\\w+\\d*"
            ]
          }
        ]
      },
      {
        "defaultValue": "",
        "displayName": "Value",
        "name": "value",
        "type": "TEXT",
        "valueHint": "Value To Be Hashed",
        "valueValidators": []
      }
    ],
    "help": "Although you can hash any value you want, it is <strong>strongly recommended</strong> that you only hash custom dimensions. However, individual use cases may demand otherwise, so you have the ability to do so. The \"Field Reference\" must be the exact field from <a href=\"https://developers.google.com/analytics/devguides/collection/analyticsjs/field-reference\"> the GA Field Reference Guide</a>.",
    "alwaysInSummary": false
  }
]


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ga"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ga.l"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ga.q"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ga_debug"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://www.google-analytics.com/analytics.js"
              },
              {
                "type": 1,
                "string": "https://www.google-analytics.com/analytics_debug.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ecommerce.*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

//Declare APIs
const log = require('logToConsole');
const sha256 = require('sha256');
const copyFromWindow = require('copyFromWindow');
const makeTableMap = require('makeTableMap');
const createArgumentsQueue = require('createArgumentsQueue');
const getTimestamp = require('getTimestamp');
const setInWindow = require('setInWindow');
const injectScript = require('injectScript');
const copyFromDataLayer = require('copyFromDataLayer');

//Input Values
const hitType = data.hitType;
const category = data.eventCategory;
const action = data.eventAction;
const label = data.eventLabel;
const value = data.eventValue;
const interaction = data.eventInteraction;
const gaSettings = data.gaSettings;
const hashTable = data.hashTable;

//GA Tag Fields
const trackingId = gaSettings.vtp_trackingId;
const functionName = gaSettings.vtp_functionName || 'ga';
const tracker = gaSettings.vtp_setTrackerName ? gaSettings.vtp_trackerName : "gtm"+gaSettings.vtp_gtmEventId;
const fieldsToSet = gaSettings.vtp_fieldsToSet;

const createOnly=['clientId','sampleRate','siteSpeedSampleRate','alwaysSendReferrer','allowAnchor','cookieName','cookieDomain','cookieExpires','cookieUpdate','storeGac','legacyCookieDomain','legacyHistoryImport','allowLinker'];
const tasks=['customTask','previewTask','checkProtocolTask','validationTask','checkStorageTask','historyImportTask','samplerTask','buildHitTask','sendHitTask','timingTask','displayFeaturesTask'];

let createFields = fieldsToSet ? makeTableMap(gaSettings.vtp_fieldsToSet.filter(pair => createOnly.indexOf(pair.fieldName)> -1),'fieldName','value') : {};
createFields.name=tracker;
const fields = fieldsToSet ? gaSettings.vtp_fieldsToSet.filter(pair => createOnly.indexOf(pair.fieldName)=== -1).filter(pair => tasks.indexOf(pair.fieldName)=== -1) : false;

//Tag Variables
const customDimensions = gaSettings.vtp_dimension;
const contentGroups = gaSettings.vtp_contentGroup;
const customMetrics = gaSettings.vtp_metric;

//Enhanced Ecommerce 
const ecommerceEnabled = gaSettings.vtp_enableEcommerce;
const useDataLayer = gaSettings.vtp_useEcommerceDataLayer;
const ecommerceMacro = gaSettings.vtp_ecommerceMacroData;

//Links
const enableLinkId = gaSettings.vtp_enableLinkId;
const autoLinkDomains = gaSettings.vtp_autoLinkDomains;
const useHash = gaSettings.vtp_useHashAutoLink;
const decorateForms = gaSettings.vtp_decorateFormsAutoLink;

//Debug Mode
const debugMode = gaSettings.vtp_useDebugVersion;
const url = debugMode ? 'https://www.google-analytics.com/analytics_debug.js' : 'https://www.google-analytics.com/analytics.js';

const getGa = () =>{
  const ga = copyFromWindow('ga');
  if(ga){
    return ga;
  }
  createArgumentsQueue('ga', 'ga.q');
  setInWindow('ga.l', getTimestamp(), false);
  return copyFromWindow('ga');
};

const ga = getGa();

const set = tracker+'.set';

const sendHit = () =>{
  switch(hitType){
    case 'pageview':
      ga(tracker+'.send','pageview');
      break;
    case 'event':
      ga(tracker+'.send',{hitType:'event',eventCategory:category,eventAction:action,eventLabel:label,eventValue:value});
      break;
  }
  return onSuccess();
};

//Success/Failure constants
const onSuccess = () =>{
  log('Tag Success');
  injectScript(url, data.gtmOnSuccess, data.gtmOnFailure, url);
};

const onFailure = () =>{
  log('Tag Failure');
  data.gtmOnFailure();
};

//Initiate Tracker
if(debugMode) setInWindow('ga_debug',{trace: true});
ga("create", trackingId, createFields);

//Set General Settings
if(autoLinkDomains && createFields.allowLinker) {
  ga(tracker+'require', 'linker'); 
  ga(tracker+'.linker:autolink',autoLinkDomains, useHash, decorateForms);
}
if(enableLinkId) ga('require', 'linkid');
if(fields) fields.forEach(field=>{ if(field.fieldName !='customTask') ga(set,field.fieldName, field.value);});

//Enable Enhanced Ecommerce 
if(ecommerceEnabled){
  ga(tracker+'.require','ec');
  let ecomArray = useDataLayer ? copyFromDataLayer('ecommerce',1) : ecommerceMacro;
  if(ecomArray){
    if(ecomArray.ecommerce) ecomArray = ecomArray.ecommerce;
    const impressions = ecomArray.impressions;
    const click = ecomArray.click;
    const detail = ecomArray.detail;
    const add = ecomArray.add;
    const remove = ecomArray.remove;
    const promoView = ecomArray.promoView;
    const promoClick = ecomArray.promoClick;
    const checkout = ecomArray.checkout;
    const checkoutOption = ecomArray.checkout_option;
    const purchase = ecomArray.purchase;  
    const currencyCode = ecomArray.currencyCode;
    if(currencyCode) ga(set,'currencyCode',currencyCode);
    const event = click || detail || add || remove || checkout || purchase || false;
    const products = event ? event.products : false;
    if(!products || click){
      if(impressions.products){
        impressions.products.forEach(product=>{ga(tracker+'.ec:addImpression',product);});
      }
    }
    if(products){
      products.forEach(product=>{
        ga(tracker+'.ec:addProduct', product);
      });
      if(click) ga(tracker+'.ec:setAction', 'click');
      if(detail) ga(tracker+'.ec:setAction', 'detail');
      if(add) ga(tracker+'.ec:setAction', 'add');
      if(remove) ga(tracker+'.ec:setAction', 'remove');
      if(checkout) ga(tracker+'.ec:setAction', 'checkout');
      if(purchase) ga(tracker+'.ec:setAction', 'purchase');
    }
  }
}


//Set Custom variables
if(customDimensions)customDimensions.forEach(dim =>{ga(set,'dimension'+dim.index,dim.dimension);}); 
if(customMetrics)customMetrics.forEach(met=>{ga(set,'metric'+met.index,met.metric);}); 
if(contentGroups) contentGroups.forEach(gp=>{ ga(set,'contentGroup'+gp.index,gp.group); });
if(interaction) ga(set,'nonInteraction',interaction);

if(hashTable){
  var count = 0;
  hashTable.forEach((e,i,a)=>{
    sha256(e.value,
           (digest)=>{ga(set,e.index,digest);
                      count++;
                      if(count===a.length) sendHit();
                     },
           ()=>{log('Encryption Failed');
                ga(set,e.index,'Hash Failed');
                count++;
                if(count===a.length) sendHit();
               }
          );
  });
} else {
  sendHit(); 
}


___NOTES___

Created on 22/10/2019, 12:37:32
