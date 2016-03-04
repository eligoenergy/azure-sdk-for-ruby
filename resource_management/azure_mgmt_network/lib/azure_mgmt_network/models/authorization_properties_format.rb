# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Model object.
    #
    class AuthorizationPropertiesFormat

      include MsRestAzure

      # @return [String] Gets or sets the authorization key
      attr_accessor :authorization_key

      # @return [AuthorizationUseStatus] Gets or sets AuthorizationUseStatus.
      # Possible values include: 'Available', 'InUse'
      attr_accessor :authorization_use_status

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.authorization_key
        output_object['authorizationKey'] = serialized_property unless serialized_property.nil?

        serialized_property = object.authorization_use_status
        output_object['authorizationUseStatus'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [AuthorizationPropertiesFormat] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = AuthorizationPropertiesFormat.new

        deserialized_property = object['authorizationKey']
        output_object.authorization_key = deserialized_property

        deserialized_property = object['authorizationUseStatus']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = AuthorizationUseStatus.constants.any? { |e| AuthorizationUseStatus.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum AuthorizationUseStatus does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.authorization_use_status = deserialized_property

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        output_object
      end
    end
  end
end
