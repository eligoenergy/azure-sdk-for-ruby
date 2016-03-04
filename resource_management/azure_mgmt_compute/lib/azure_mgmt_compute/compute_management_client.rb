# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  #
  # A service client - single point of access to the REST API.
  #
  class ComputeManagementClient < MsRestAzure::AzureServiceClient
    include Azure::ARM::Compute::Models
    include MsRestAzure

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Gets Azure subscription credentials.
    attr_reader :credentials

    # @return [String] Gets subscription credentials which uniquely identify
    # Microsoft Azure subscription. The subscription ID forms part of the URI
    # for every service call.
    attr_accessor :subscription_id

    # @return [String] Client Api Version.
    attr_reader :api_version

    # @return [String] Gets or sets the preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] Gets or sets the retry timeout in seconds for Long
    # Running Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] When set to true a unique x-ms-client-request-id value
    # is generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return Subscription credentials which uniquely identify client
    # subscription.
    attr_accessor :credentials

    # @return availability_sets
    attr_reader :availability_sets

    # @return virtual_machine_extension_images
    attr_reader :virtual_machine_extension_images

    # @return virtual_machine_extensions
    attr_reader :virtual_machine_extensions

    # @return virtual_machine_images
    attr_reader :virtual_machine_images

    # @return usage_operations
    attr_reader :usage_operations

    # @return virtual_machine_sizes
    attr_reader :virtual_machine_sizes

    # @return virtual_machines
    attr_reader :virtual_machines

    # @return virtual_machine_scale_sets
    attr_reader :virtual_machine_scale_sets

    # @return virtual_machine_scale_set_vms
    attr_reader :virtual_machine_scale_set_vms

    #
    # Creates initializes a new instance of the ComputeManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'credentials is nil' if credentials.nil?
      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials)
      @credentials = credentials

      @availability_sets = AvailabilitySets.new(self)
      @virtual_machine_extension_images = VirtualMachineExtensionImages.new(self)
      @virtual_machine_extensions = VirtualMachineExtensions.new(self)
      @virtual_machine_images = VirtualMachineImages.new(self)
      @usage_operations = UsageOperations.new(self)
      @virtual_machine_sizes = VirtualMachineSizes.new(self)
      @virtual_machines = VirtualMachines.new(self)
      @virtual_machine_scale_sets = VirtualMachineScaleSets.new(self)
      @virtual_machine_scale_set_vms = VirtualMachineScaleSetVMs.new(self)
      @api_version = '2015-06-15'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
    end

  end
end
