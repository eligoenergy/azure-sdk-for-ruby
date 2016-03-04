# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # Deployment operation properties.
    #
    class DeploymentOperationProperties

      include MsRestAzure

      # @return [String] Gets or sets the state of the provisioning.
      attr_accessor :provisioning_state

      # @return [DateTime] Gets or sets the date and time of the operation.
      attr_accessor :timestamp

      # @return [String] Gets or sets operation status code.
      attr_accessor :status_code

      # @return Gets or sets operation status message.
      attr_accessor :status_message

      # @return [TargetResource] Gets or sets the target resource.
      attr_accessor :target_resource

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @target_resource.validate unless @target_resource.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        serialized_property = object.timestamp
        serialized_property = serialized_property.new_offset(0).strftime('%FT%TZ')
        output_object['timestamp'] = serialized_property unless serialized_property.nil?

        serialized_property = object.status_code
        output_object['statusCode'] = serialized_property unless serialized_property.nil?

        serialized_property = object.status_message
        output_object['statusMessage'] = serialized_property unless serialized_property.nil?

        serialized_property = object.target_resource
        unless serialized_property.nil?
          serialized_property = TargetResource.serialize_object(serialized_property)
        end
        output_object['targetResource'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [DeploymentOperationProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = DeploymentOperationProperties.new

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        deserialized_property = object['timestamp']
        deserialized_property = DateTime.parse(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.timestamp = deserialized_property

        deserialized_property = object['statusCode']
        output_object.status_code = deserialized_property

        deserialized_property = object['statusMessage']
        output_object.status_message = deserialized_property

        deserialized_property = object['targetResource']
        unless deserialized_property.nil?
          deserialized_property = TargetResource.deserialize_object(deserialized_property)
        end
        output_object.target_resource = deserialized_property

        output_object
      end
    end
  end
end
