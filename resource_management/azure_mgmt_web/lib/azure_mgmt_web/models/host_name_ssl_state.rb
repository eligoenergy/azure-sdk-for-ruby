# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Object that represents a SSL-enabled host name.
    #
    class HostNameSslState

      include MsRestAzure

      # @return [String] Host name
      attr_accessor :name

      # @return [SslState] SSL type. Possible values include: 'Disabled',
      # 'SniEnabled', 'IpBasedEnabled'
      attr_accessor :ssl_state

      # @return [String] Virtual IP address assigned to the host name if IP
      # based SSL is enabled
      attr_accessor :virtual_ip

      # @return [String] SSL cert thumbprint
      attr_accessor :thumbprint

      # @return [Boolean] Set this flag to update existing host name
      attr_accessor :to_update

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail MsRest::ValidationError, 'property ssl_state is nil' if @ssl_state.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.ssl_state
        output_object['sslState'] = serialized_property unless serialized_property.nil?

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.virtual_ip
        output_object['virtualIP'] = serialized_property unless serialized_property.nil?

        serialized_property = object.thumbprint
        output_object['thumbprint'] = serialized_property unless serialized_property.nil?

        serialized_property = object.to_update
        output_object['toUpdate'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [HostNameSslState] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = HostNameSslState.new

        deserialized_property = object['sslState']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = SslState.constants.any? { |e| SslState.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum SslState does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.ssl_state = deserialized_property

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['virtualIP']
        output_object.virtual_ip = deserialized_property

        deserialized_property = object['thumbprint']
        output_object.thumbprint = deserialized_property

        deserialized_property = object['toUpdate']
        output_object.to_update = deserialized_property

        output_object
      end
    end
  end
end
