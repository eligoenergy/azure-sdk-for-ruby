# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  #
  # A service client - single point of access to the REST API.
  #
  class GraphRbacManagementClient < MsRestAzure::AzureServiceClient
    include Azure::ARM::Graph::Models
    include MsRestAzure

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Gets Azure subscription credentials.
    attr_reader :credentials

    # @return [String] Client Api Version.
    attr_reader :api_version

    # @return [String] Gets or sets the tenant Id.
    attr_accessor :tenant_id

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

    # @return application_operations
    attr_reader :application_operations

    # @return object_operations
    attr_reader :object_operations

    # @return group_operations
    attr_reader :group_operations

    # @return service_principal_operations
    attr_reader :service_principal_operations

    # @return user_operations
    attr_reader :user_operations

    #
    # Creates initializes a new instance of the GraphRbacManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://graph.windows.net'

      fail ArgumentError, 'credentials is nil' if credentials.nil?
      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials)
      @credentials = credentials

      @application_operations = ApplicationOperations.new(self)
      @object_operations = ObjectOperations.new(self)
      @group_operations = GroupOperations.new(self)
      @service_principal_operations = ServicePrincipalOperations.new(self)
      @user_operations = UserOperations.new(self)
      @api_version = '1.6-internal'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
    end

  end
end
