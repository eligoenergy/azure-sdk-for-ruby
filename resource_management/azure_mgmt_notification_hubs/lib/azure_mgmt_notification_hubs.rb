# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'ms_rest_azure'

module Azure::ARM::NotificationHubs
  autoload :Namespaces,                                         'azure_mgmt_notification_hubs/namespaces.rb'
  autoload :NotificationHubs,                                   'azure_mgmt_notification_hubs/notification_hubs.rb'
  autoload :NotificationHubsManagementClient,                   'azure_mgmt_notification_hubs/notification_hubs_management_client.rb'

  module Models
    autoload :CheckAvailabilityParameters,                        'azure_mgmt_notification_hubs/models/check_availability_parameters.rb'
    autoload :CheckAvailabilityResource,                          'azure_mgmt_notification_hubs/models/check_availability_resource.rb'
    autoload :NamespaceProperties,                                'azure_mgmt_notification_hubs/models/namespace_properties.rb'
    autoload :NamespaceCreateOrUpdateParameters,                  'azure_mgmt_notification_hubs/models/namespace_create_or_update_parameters.rb'
    autoload :NamespaceResource,                                  'azure_mgmt_notification_hubs/models/namespace_resource.rb'
    autoload :SharedAccessAuthorizationRuleProperties,            'azure_mgmt_notification_hubs/models/shared_access_authorization_rule_properties.rb'
    autoload :SharedAccessAuthorizationRuleCreateOrUpdateParameters, 'azure_mgmt_notification_hubs/models/shared_access_authorization_rule_create_or_update_parameters.rb'
    autoload :SharedAccessAuthorizationRuleResource,              'azure_mgmt_notification_hubs/models/shared_access_authorization_rule_resource.rb'
    autoload :NamespaceListResult,                                'azure_mgmt_notification_hubs/models/namespace_list_result.rb'
    autoload :SharedAccessAuthorizationRuleListResult,            'azure_mgmt_notification_hubs/models/shared_access_authorization_rule_list_result.rb'
    autoload :ResourceListKeys,                                   'azure_mgmt_notification_hubs/models/resource_list_keys.rb'
    autoload :ApnsCredentialProperties,                           'azure_mgmt_notification_hubs/models/apns_credential_properties.rb'
    autoload :ApnsCredential,                                     'azure_mgmt_notification_hubs/models/apns_credential.rb'
    autoload :WnsCredentialProperties,                            'azure_mgmt_notification_hubs/models/wns_credential_properties.rb'
    autoload :WnsCredential,                                      'azure_mgmt_notification_hubs/models/wns_credential.rb'
    autoload :GcmCredentialProperties,                            'azure_mgmt_notification_hubs/models/gcm_credential_properties.rb'
    autoload :GcmCredential,                                      'azure_mgmt_notification_hubs/models/gcm_credential.rb'
    autoload :MpnsCredentialProperties,                           'azure_mgmt_notification_hubs/models/mpns_credential_properties.rb'
    autoload :MpnsCredential,                                     'azure_mgmt_notification_hubs/models/mpns_credential.rb'
    autoload :AdmCredentialProperties,                            'azure_mgmt_notification_hubs/models/adm_credential_properties.rb'
    autoload :AdmCredential,                                      'azure_mgmt_notification_hubs/models/adm_credential.rb'
    autoload :BaiduCredentialProperties,                          'azure_mgmt_notification_hubs/models/baidu_credential_properties.rb'
    autoload :BaiduCredential,                                    'azure_mgmt_notification_hubs/models/baidu_credential.rb'
    autoload :NotificationHubProperties,                          'azure_mgmt_notification_hubs/models/notification_hub_properties.rb'
    autoload :NotificationHubCreateOrUpdateParameters,            'azure_mgmt_notification_hubs/models/notification_hub_create_or_update_parameters.rb'
    autoload :NotificationHubResource,                            'azure_mgmt_notification_hubs/models/notification_hub_resource.rb'
    autoload :NotificationHubListResult,                          'azure_mgmt_notification_hubs/models/notification_hub_list_result.rb'
    autoload :NamespaceType,                                      'azure_mgmt_notification_hubs/models/namespace_type.rb'
    autoload :AccessRights,                                       'azure_mgmt_notification_hubs/models/access_rights.rb'
  end
end
