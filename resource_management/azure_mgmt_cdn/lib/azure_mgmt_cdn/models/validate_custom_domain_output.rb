# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
  module Models
    #
    # Output of custom domain validation
    #
    class ValidateCustomDomainOutput

      include MsRestAzure

      # @return [Boolean] Indicates whether the custom domain is validated or
      # not
      attr_accessor :custom_domain_validated

      # @return [String] The reason why the custom domain is not valid
      attr_accessor :reason

      # @return [String] The message on why the custom domain is not valid
      attr_accessor :message

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        # Nothing to validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.custom_domain_validated
        output_object['customDomainValidated'] = serialized_property unless serialized_property.nil?

        serialized_property = object.reason
        output_object['reason'] = serialized_property unless serialized_property.nil?

        serialized_property = object.message
        output_object['message'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ValidateCustomDomainOutput] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ValidateCustomDomainOutput.new

        deserialized_property = object['customDomainValidated']
        output_object.custom_domain_validated = deserialized_property

        deserialized_property = object['reason']
        output_object.reason = deserialized_property

        deserialized_property = object['message']
        output_object.message = deserialized_property

        output_object
      end
    end
  end
end
