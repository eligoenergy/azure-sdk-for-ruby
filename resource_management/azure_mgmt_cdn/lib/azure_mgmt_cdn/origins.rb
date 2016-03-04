# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
  #
  # Use these APIs to manage Azure CDN resources through the Azure Resource
  # Manager. You must make sure that requests made to these resources are
  # secure. For more information, see <a
  # href="https://msdn.microsoft.com/en-us/library/azure/dn790557.aspx">Authenticating
  # Azure Resource Manager requests.</a>
  #
  class Origins
    include Azure::ARM::CDN::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Origins class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return reference to the CdnManagementClient
    attr_reader :client

    #
    # Lists the existing CDN Origins within an Endpoint
    #
    # @param endpoint_name [String] Name of the endpoint within the CDN profile
    # @param profile_name [String] Name of the CDN profile within the resource
    # group
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def list_by_endpoint(endpoint_name, profile_name, resource_group_name, custom_headers = nil)
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/origins'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'endpointName' => endpoint_name,'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
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
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = OriginListResult.deserialize_object(parsed_response)
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
    # Gets an existing CDN Origin within an Endpoint
    #
    # @param origin_name [String] Name of the origin, an arbitrary value but it
    # needs to be unique under endpoint
    # @param endpoint_name [String] Name of the endpoint within the CDN profile
    # @param profile_name [String] Name of the CDN profile within the resource
    # group
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def get(origin_name, endpoint_name, profile_name, resource_group_name, custom_headers = nil)
      fail ArgumentError, 'origin_name is nil' if origin_name.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/origins/{originName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'originName' => origin_name,'endpointName' => endpoint_name,'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
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
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = Origin.deserialize_object(parsed_response)
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
    # Creates a new CDN Origin within an Endpoint
    #
    # @param origin_name [String] Name of the origin, an arbitrary value but it
    # needs to be unique under endpoint
    # @param origin_properties [OriginParameters] Origin properties
    # @param endpoint_name [String] Name of the endpoint within the CDN profile
    # @param profile_name [String] Name of the CDN profile within the resource
    # group
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription
    # @param @client.subscription_id [String] Azure Subscription ID
    # @param @client.api_version [String] Version of the API to be used with the
    # client request, current version is 2015-06-01
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create(origin_name, origin_properties, endpoint_name, profile_name, resource_group_name, custom_headers = nil)
      # Send request
      promise = begin_create(origin_name, origin_properties, endpoint_name, profile_name, resource_group_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          unless parsed_response.nil?
            parsed_response = Origin.deserialize_object(parsed_response)
          end
        end

        # Waiting for response.
        @client.get_put_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Creates a new CDN Origin within an Endpoint
    #
    # @param origin_name [String] Name of the origin, an arbitrary value but it
    # needs to be unique under endpoint
    # @param origin_properties [OriginParameters] Origin properties
    # @param endpoint_name [String] Name of the endpoint within the CDN profile
    # @param profile_name [String] Name of the CDN profile within the resource
    # group
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def begin_create(origin_name, origin_properties, endpoint_name, profile_name, resource_group_name, custom_headers = nil)
      fail ArgumentError, 'origin_name is nil' if origin_name.nil?
      fail ArgumentError, 'origin_properties is nil' if origin_properties.nil?
      origin_properties.validate unless origin_properties.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_headers['Content-Type'] = 'application/json; charset=utf-8'
      unless origin_properties.nil?
        origin_properties = OriginParameters.serialize_object(origin_properties)
      end
      request_content = JSON.generate(origin_properties, quirks_mode: true)
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/origins/{originName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'originName' => origin_name,'endpointName' => endpoint_name,'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
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
        unless status_code == 201 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = Origin.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = Origin.deserialize_object(parsed_response)
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
    # Updates an existing CDN Origin within an Endpoint
    #
    # @param origin_name [String] Name of the origin, an arbitrary value but it
    # needs to be unique under endpoint
    # @param origin_properties [OriginParameters] Origin properties
    # @param endpoint_name [String] Name of the endpoint within the CDN profile
    # @param profile_name [String] Name of the CDN profile within the resource
    # group
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription
    # @param @client.subscription_id [String] Azure Subscription ID
    # @param @client.api_version [String] Version of the API to be used with the
    # client request, current version is 2015-06-01
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def update(origin_name, origin_properties, endpoint_name, profile_name, resource_group_name, custom_headers = nil)
      # Send request
      promise = begin_update(origin_name, origin_properties, endpoint_name, profile_name, resource_group_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          unless parsed_response.nil?
            parsed_response = Origin.deserialize_object(parsed_response)
          end
        end

        # Waiting for response.
        @client.get_put_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Updates an existing CDN Origin within an Endpoint
    #
    # @param origin_name [String] Name of the origin, an arbitrary value but it
    # needs to be unique under endpoint
    # @param origin_properties [OriginParameters] Origin properties
    # @param endpoint_name [String] Name of the endpoint within the CDN profile
    # @param profile_name [String] Name of the CDN profile within the resource
    # group
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def begin_update(origin_name, origin_properties, endpoint_name, profile_name, resource_group_name, custom_headers = nil)
      fail ArgumentError, 'origin_name is nil' if origin_name.nil?
      fail ArgumentError, 'origin_properties is nil' if origin_properties.nil?
      origin_properties.validate unless origin_properties.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_headers['Content-Type'] = 'application/json; charset=utf-8'
      unless origin_properties.nil?
        origin_properties = OriginParameters.serialize_object(origin_properties)
      end
      request_content = JSON.generate(origin_properties, quirks_mode: true)
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/origins/{originName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'originName' => origin_name,'endpointName' => endpoint_name,'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {})
      }
      request = MsRest::HttpOperationRequest.new(@base_url || @client.base_url, path_template, :patch, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = Origin.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = Origin.deserialize_object(parsed_response)
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
    # Deletes an existing CDN Origin within an Endpoint
    #
    # @param origin_name [String] Name of the origin, an arbitrary value but it
    # needs to be unique under endpoint
    # @param endpoint_name [String] Name of the endpoint within the CDN profile
    # @param profile_name [String] Name of the CDN profile within the resource
    # group
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_if_exists(origin_name, endpoint_name, profile_name, resource_group_name, custom_headers = nil)
      # Send request
      promise = begin_delete_if_exists(origin_name, endpoint_name, profile_name, resource_group_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          unless parsed_response.nil?
            parsed_response = Origin.deserialize_object(parsed_response)
          end
        end

       # Waiting for response.
       @client.get_post_or_delete_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Deletes an existing CDN Origin within an Endpoint
    #
    # @param origin_name [String] Name of the origin, an arbitrary value but it
    # needs to be unique under endpoint
    # @param endpoint_name [String] Name of the endpoint within the CDN profile
    # @param profile_name [String] Name of the CDN profile within the resource
    # group
    # @param resource_group_name [String] Name of the resource group within the
    # Azure subscription
    # @param [Hash{String => String}] The hash of custom headers need to be
    # applied to HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def begin_delete_if_exists(origin_name, endpoint_name, profile_name, resource_group_name, custom_headers = nil)
      fail ArgumentError, 'origin_name is nil' if origin_name.nil?
      fail ArgumentError, 'endpoint_name is nil' if endpoint_name.nil?
      fail ArgumentError, 'profile_name is nil' if profile_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cdn/profiles/{profileName}/endpoints/{endpointName}/origins/{originName}'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'originName' => origin_name,'endpointName' => endpoint_name,'profileName' => profile_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }
      request = MsRest::HttpOperationRequest.new(@base_url || @client.base_url, path_template, :delete, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            unless parsed_response.nil?
              parsed_response = Origin.deserialize_object(parsed_response)
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
