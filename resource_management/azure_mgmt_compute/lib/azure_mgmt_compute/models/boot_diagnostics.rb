# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes Boot Diagnostics.
    #
    class BootDiagnostics

      include MsRestAzure

      # @return [Boolean] Gets or sets whether VM Agent should be provisioned
      # on the Virtual Machine.
      attr_accessor :enabled

      # @return [String] Gets or sets the boot diagnostics storage Uri. It
      # should be a valid Uri
      attr_accessor :storage_uri

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

        serialized_property = object.enabled
        output_object['enabled'] = serialized_property unless serialized_property.nil?

        serialized_property = object.storage_uri
        output_object['storageUri'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [BootDiagnostics] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = BootDiagnostics.new

        deserialized_property = object['enabled']
        output_object.enabled = deserialized_property

        deserialized_property = object['storageUri']
        output_object.storage_uri = deserialized_property

        output_object
      end
    end
  end
end
