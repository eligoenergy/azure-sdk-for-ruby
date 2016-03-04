# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a virtual machine scale set network profile's network
    # configurations.
    #
    class VirtualMachineScaleSetNetworkConfiguration < MsRestAzure::SubResource

      include MsRestAzure

      # @return [String] Gets or sets the network configuration name.
      attr_accessor :name

      # @return [VirtualMachineScaleSetNetworkConfigurationProperties]
      attr_accessor :properties

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail MsRest::ValidationError, 'property name is nil' if @name.nil?
        @properties.validate unless @properties.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.id
        output_object['id'] = serialized_property unless serialized_property.nil?

        serialized_property = object.properties
        unless serialized_property.nil?
          serialized_property = VirtualMachineScaleSetNetworkConfigurationProperties.serialize_object(serialized_property)
        end
        output_object['properties'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualMachineScaleSetNetworkConfiguration] Deserialized
      # object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VirtualMachineScaleSetNetworkConfiguration.new

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['id']
        output_object.id = deserialized_property

        deserialized_property = object['properties']
        unless deserialized_property.nil?
          deserialized_property = VirtualMachineScaleSetNetworkConfigurationProperties.deserialize_object(deserialized_property)
        end
        output_object.properties = deserialized_property

        output_object
      end
    end
  end
end
