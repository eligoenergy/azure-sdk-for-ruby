# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  #
  # Resources
  #
  class Resources
    include Azure::ARM::Resources::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Resources class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return reference to the ResourceManagementClient
    attr_reader :client

    #
    # Begin moving resources.To determine whether the operation has finished
    # processing the request, call GetLongRunningOperationStatus.
    #
    # @param source_resource_group_name [String] Source resource group name.
    # @param parameters [ResourcesMoveInfo] move resources' parameters.
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def move_resources(source_resource_group_name, parameters, custom_headers = nil)
      # Send request
      promise = begin_move_resources(source_resource_group_name, parameters, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

       # Waiting for response.
       @client.get_post_or_delete_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Begin moving resources.To determine whether the operation has finished
    # processing the request, call GetLongRunningOperationStatus.
    #
    # @param source_resource_group_name [String] Source resource group name.
    # @param parameters [ResourcesMoveInfo] move resources' parameters.
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def begin_move_resources(source_resource_group_name, parameters, custom_headers = nil)
      fail ArgumentError, 'source_resource_group_name is nil' if source_resource_group_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      parameters.validate unless parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_headers['Content-Type'] = 'application/json; charset=utf-8'
      unless parameters.nil?
        parameters = ResourcesMoveInfo.serialize_object(parameters)
      end
      request_content = JSON.generate(parameters, quirks_mode: true)
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{sourceResourceGroupName}/moveResources'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'sourceResourceGroupName' => source_resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {})
      }
      request = MsRest::HttpOperationRequest.new(@base_url || @client.base_url, path_template, :post, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Get all of the resources under a subscription.
    #
    # @param filter [String] The filter to apply on the operation.
    # @param top [Integer] Query parameters. If null is passed returns all
    # resource groups.
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def list(filter = nil, top = nil, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resources'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'$top' => top,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }
      request = MsRest::HttpOperationRequest.new(@base_url || @client.base_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = ResourceListResult.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Checks whether resource exists.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param resource_provider_namespace [String] Resource identity.
    # @param parent_resource_path [String] Resource identity.
    # @param resource_type [String] Resource identity.
    # @param resource_name [String] Resource identity.
    # @param api_version [String]
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def check_existence(resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'resource_provider_namespace is nil' if resource_provider_namespace.nil?
      fail ArgumentError, 'parent_resource_path is nil' if parent_resource_path.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'resourceProviderNamespace' => resource_provider_namespace,'resourceName' => resource_name,'subscriptionId' => @client.subscription_id},
          skip_encoding_path_params: {'parentResourcePath' => parent_resource_path,'resourceType' => resource_type},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {})
      }
      request = MsRest::HttpOperationRequest.new(@base_url || @client.base_url, path_template, :head, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204 || status_code == 404
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.body = (status_code == 204)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Delete resource and all of its resources.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param resource_provider_namespace [String] Resource identity.
    # @param parent_resource_path [String] Resource identity.
    # @param resource_type [String] Resource identity.
    # @param resource_name [String] Resource identity.
    # @param api_version [String]
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def delete(resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'resource_provider_namespace is nil' if resource_provider_namespace.nil?
      fail ArgumentError, 'parent_resource_path is nil' if parent_resource_path.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'resourceProviderNamespace' => resource_provider_namespace,'resourceName' => resource_name,'subscriptionId' => @client.subscription_id},
          skip_encoding_path_params: {'parentResourcePath' => parent_resource_path,'resourceType' => resource_type},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {})
      }
      request = MsRest::HttpOperationRequest.new(@base_url || @client.base_url, path_template, :delete, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Create a resource.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param resource_provider_namespace [String] Resource identity.
    # @param parent_resource_path [String] Resource identity.
    # @param resource_type [String] Resource identity.
    # @param resource_name [String] Resource identity.
    # @param api_version [String]
    # @param parameters [GenericResource] Create or update resource parameters.
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def create_or_update(resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'resource_provider_namespace is nil' if resource_provider_namespace.nil?
      fail ArgumentError, 'parent_resource_path is nil' if parent_resource_path.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      parameters.validate unless parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_headers['Content-Type'] = 'application/json; charset=utf-8'
      unless parameters.nil?
        parameters = GenericResource.serialize_object(parameters)
      end
      request_content = JSON.generate(parameters, quirks_mode: true)
      path_template = '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'resourceProviderNamespace' => resource_provider_namespace,'resourceName' => resource_name,'subscriptionId' => @client.subscription_id},
          skip_encoding_path_params: {'parentResourcePath' => parent_resource_path,'resourceType' => resource_type},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {})
      }
      request = MsRest::HttpOperationRequest.new(@base_url || @client.base_url, path_template, :put, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 201 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = GenericResource.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = GenericResource.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Returns a resource belonging to a resource group.
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param resource_provider_namespace [String] Resource identity.
    # @param parent_resource_path [String] Resource identity.
    # @param resource_type [String] Resource identity.
    # @param resource_name [String] Resource identity.
    # @param api_version [String]
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def get(resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'resource_provider_namespace is nil' if resource_provider_namespace.nil?
      fail ArgumentError, 'parent_resource_path is nil' if parent_resource_path.nil?
      fail ArgumentError, 'resource_type is nil' if resource_type.nil?
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, 'api_version is nil' if api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'resourceProviderNamespace' => resource_provider_namespace,'resourceName' => resource_name,'subscriptionId' => @client.subscription_id},
          skip_encoding_path_params: {'parentResourcePath' => parent_resource_path,'resourceType' => resource_type},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {})
      }
      request = MsRest::HttpOperationRequest.new(@base_url || @client.base_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = GenericResource.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 204
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = GenericResource.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Get all of the resources under a subscription.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def list_next(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?
      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {})
      }
      request = MsRest::HttpOperationRequest.new(@base_url || @client.base_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = ResourceListResult.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
