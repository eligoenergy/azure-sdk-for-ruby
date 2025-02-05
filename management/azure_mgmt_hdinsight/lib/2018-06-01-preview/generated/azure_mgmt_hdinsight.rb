# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
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
require '2018-06-01-preview/generated/azure_mgmt_hdinsight/module_definition'
require 'ms_rest_azure'

module Azure::Hdinsight::Mgmt::V2018_06_01_preview
  autoload :Clusters,                                           '2018-06-01-preview/generated/azure_mgmt_hdinsight/clusters.rb'
  autoload :Applications,                                       '2018-06-01-preview/generated/azure_mgmt_hdinsight/applications.rb'
  autoload :Locations,                                          '2018-06-01-preview/generated/azure_mgmt_hdinsight/locations.rb'
  autoload :Configurations,                                     '2018-06-01-preview/generated/azure_mgmt_hdinsight/configurations.rb'
  autoload :Extensions,                                         '2018-06-01-preview/generated/azure_mgmt_hdinsight/extensions.rb'
  autoload :ScriptActions,                                      '2018-06-01-preview/generated/azure_mgmt_hdinsight/script_actions.rb'
  autoload :ScriptExecutionHistory,                             '2018-06-01-preview/generated/azure_mgmt_hdinsight/script_execution_history.rb'
  autoload :Operations,                                         '2018-06-01-preview/generated/azure_mgmt_hdinsight/operations.rb'
  autoload :VirtualMachines,                                    '2018-06-01-preview/generated/azure_mgmt_hdinsight/virtual_machines.rb'
  autoload :HDInsightManagementClient,                          '2018-06-01-preview/generated/azure_mgmt_hdinsight/hdinsight_management_client.rb'

  module Models
    autoload :ClusterListResult,                                  '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_list_result.rb'
    autoload :ClusterDefinition,                                  '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_definition.rb'
    autoload :ClusterResizeParameters,                            '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_resize_parameters.rb'
    autoload :KafkaRestProperties,                                '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/kafka_rest_properties.rb'
    autoload :ClusterDiskEncryptionParameters,                    '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_disk_encryption_parameters.rb'
    autoload :AutoscaleTimeAndCapacity,                           '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/autoscale_time_and_capacity.rb'
    autoload :UpdateGatewaySettingsParameters,                    '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/update_gateway_settings_parameters.rb'
    autoload :AutoscaleCapacity,                                  '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/autoscale_capacity.rb'
    autoload :GatewaySettings,                                    '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/gateway_settings.rb'
    autoload :Autoscale,                                          '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/autoscale.rb'
    autoload :OperationResource,                                  '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/operation_resource.rb'
    autoload :HardwareProfile,                                    '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/hardware_profile.rb'
    autoload :Resource,                                           '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/resource.rb'
    autoload :DataDisksGroups,                                    '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/data_disks_groups.rb'
    autoload :VirtualNetworkProfile,                              '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/virtual_network_profile.rb'
    autoload :SshProfile,                                         '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/ssh_profile.rb'
    autoload :SshPublicKey,                                       '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/ssh_public_key.rb'
    autoload :OsProfile,                                          '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/os_profile.rb'
    autoload :HostInfo,                                           '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/host_info.rb'
    autoload :Role,                                               '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/role.rb'
    autoload :OperationListResult,                                '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/operation_list_result.rb'
    autoload :StorageAccount,                                     '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/storage_account.rb'
    autoload :ErrorResponse,                                      '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/error_response.rb'
    autoload :NetworkProperties,                                  '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/network_properties.rb'
    autoload :ApplicationGetHttpsEndpoint,                        '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/application_get_https_endpoint.rb'
    autoload :DiskEncryptionProperties,                           '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/disk_encryption_properties.rb'
    autoload :ApplicationGetEndpoint,                             '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/application_get_endpoint.rb'
    autoload :ClusterCreateProperties,                            '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_create_properties.rb'
    autoload :ApplicationProperties,                              '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/application_properties.rb'
    autoload :ClusterIdentity,                                    '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_identity.rb'
    autoload :Operation,                                          '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/operation.rb'
    autoload :ClusterPatchParameters,                             '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_patch_parameters.rb'
    autoload :ApplicationListResult,                              '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/application_list_result.rb'
    autoload :Errors,                                             '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/errors.rb'
    autoload :VersionSpec,                                        '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/version_spec.rb'
    autoload :ClusterGetProperties,                               '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_get_properties.rb'
    autoload :VersionsCapability,                                 '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/versions_capability.rb'
    autoload :RuntimeScriptAction,                                '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/runtime_script_action.rb'
    autoload :RegionsCapability,                                  '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/regions_capability.rb'
    autoload :ClusterListPersistedScriptActionsResult,            '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_list_persisted_script_actions_result.rb'
    autoload :VmSizesCapability,                                  '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/vm_sizes_capability.rb'
    autoload :OperationDisplay,                                   '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/operation_display.rb'
    autoload :ClusterListRuntimeScriptActionDetailResult,         '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_list_runtime_script_action_detail_result.rb'
    autoload :VmSizeCompatibilityFilter,                          '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/vm_size_compatibility_filter.rb'
    autoload :SecurityProfile,                                    '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/security_profile.rb'
    autoload :RegionalQuotaCapability,                            '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/regional_quota_capability.rb'
    autoload :AutoscaleRecurrence,                                '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/autoscale_recurrence.rb'
    autoload :QuotaCapability,                                    '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/quota_capability.rb'
    autoload :LinuxOperatingSystemProfile,                        '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/linux_operating_system_profile.rb'
    autoload :CapabilitiesResult,                                 '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/capabilities_result.rb'
    autoload :ComputeProfile,                                     '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/compute_profile.rb'
    autoload :LocalizedName,                                      '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/localized_name.rb'
    autoload :ComputeIsolationProperties,                         '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/compute_isolation_properties.rb'
    autoload :Usage,                                              '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/usage.rb'
    autoload :ClusterIdentityUserAssignedIdentitiesValue,         '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_identity_user_assigned_identities_value.rb'
    autoload :UsagesListResult,                                   '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/usages_list_result.rb'
    autoload :QuotaInfo,                                          '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/quota_info.rb'
    autoload :VmSizeCompatibilityFilterV2,                        '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/vm_size_compatibility_filter_v2.rb'
    autoload :BillingMeters,                                      '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/billing_meters.rb'
    autoload :ScriptActionExecutionSummary,                       '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/script_action_execution_summary.rb'
    autoload :DiskBillingMeters,                                  '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/disk_billing_meters.rb'
    autoload :AutoscaleSchedule,                                  '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/autoscale_schedule.rb'
    autoload :BillingResources,                                   '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/billing_resources.rb'
    autoload :ScriptAction,                                       '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/script_action.rb'
    autoload :BillingResponseListResult,                          '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/billing_response_list_result.rb'
    autoload :EncryptionInTransitProperties,                      '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/encryption_in_transit_properties.rb'
    autoload :ClusterConfigurations,                              '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_configurations.rb'
    autoload :ConnectivityEndpoint,                               '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/connectivity_endpoint.rb'
    autoload :Extension,                                          '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/extension.rb'
    autoload :ClientGroupInfo,                                    '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/client_group_info.rb'
    autoload :ClusterMonitoringResponse,                          '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_monitoring_response.rb'
    autoload :StorageProfile,                                     '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/storage_profile.rb'
    autoload :ClusterMonitoringRequest,                           '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_monitoring_request.rb'
    autoload :ExecuteScriptActionParameters,                      '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/execute_script_action_parameters.rb'
    autoload :ScriptActionExecutionHistoryList,                   '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/script_action_execution_history_list.rb'
    autoload :ClusterCreateParametersExtended,                    '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster_create_parameters_extended.rb'
    autoload :ScriptActionPersistedGetResponseSpec,               '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/script_action_persisted_get_response_spec.rb'
    autoload :AutoscaleConfigurationUpdateParameter,              '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/autoscale_configuration_update_parameter.rb'
    autoload :ScriptActionsList,                                  '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/script_actions_list.rb'
    autoload :RuntimeScriptActionDetail,                          '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/runtime_script_action_detail.rb'
    autoload :TrackedResource,                                    '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/tracked_resource.rb'
    autoload :Cluster,                                            '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/cluster.rb'
    autoload :ProxyResource,                                      '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/proxy_resource.rb'
    autoload :Application,                                        '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/application.rb'
    autoload :DirectoryType,                                      '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/directory_type.rb'
    autoload :DaysOfWeek,                                         '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/days_of_week.rb'
    autoload :ResourceProviderConnection,                         '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/resource_provider_connection.rb'
    autoload :PrivateLink,                                        '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/private_link.rb'
    autoload :OSType,                                             '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/ostype.rb'
    autoload :Tier,                                               '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/tier.rb'
    autoload :JsonWebKeyEncryptionAlgorithm,                      '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/json_web_key_encryption_algorithm.rb'
    autoload :ResourceIdentityType,                               '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/resource_identity_type.rb'
    autoload :HDInsightClusterProvisioningState,                  '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/hdinsight_cluster_provisioning_state.rb'
    autoload :AsyncOperationState,                                '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/async_operation_state.rb'
    autoload :FilterMode,                                         '2018-06-01-preview/generated/azure_mgmt_hdinsight/models/filter_mode.rb'
  end
end
