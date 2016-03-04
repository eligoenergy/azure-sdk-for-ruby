# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes the properties of a virtual machine scale set virtual machine.
    #
    class VirtualMachineScaleSetVMProperties

      include MsRestAzure

      # @return [Boolean] Specifies whether the latest model has been applied
      # to the virtual machine.
      attr_accessor :latest_model_applied

      # @return [VirtualMachineInstanceView] Gets the virtual machine instance
      # view.
      attr_accessor :instance_view

      # @return [HardwareProfile] Gets or sets the hardware profile.
      attr_accessor :hardware_profile

      # @return [StorageProfile] Gets or sets the storage profile.
      attr_accessor :storage_profile

      # @return [OSProfile] Gets or sets the OS profile.
      attr_accessor :os_profile

      # @return [NetworkProfile] Gets or sets the network profile.
      attr_accessor :network_profile

      # @return [DiagnosticsProfile] Gets or sets the diagnostics profile.
      attr_accessor :diagnostics_profile

      # @return [SubResource] Gets or sets the reference Id of the
      # availability set to which this virtual machine belongs.
      attr_accessor :availability_set

      # @return [String] Gets or sets the provisioning state, which only
      # appears in the response.
      attr_accessor :provisioning_state

      # @return [String] Gets or sets the license type, which is for bring
      # your own license scenario.
      attr_accessor :license_type

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @instance_view.validate unless @instance_view.nil?
        @hardware_profile.validate unless @hardware_profile.nil?
        @storage_profile.validate unless @storage_profile.nil?
        @os_profile.validate unless @os_profile.nil?
        @network_profile.validate unless @network_profile.nil?
        @diagnostics_profile.validate unless @diagnostics_profile.nil?
        @availability_set.validate unless @availability_set.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.latest_model_applied
        output_object['latestModelApplied'] = serialized_property unless serialized_property.nil?

        serialized_property = object.instance_view
        unless serialized_property.nil?
          serialized_property = VirtualMachineInstanceView.serialize_object(serialized_property)
        end
        output_object['instanceView'] = serialized_property unless serialized_property.nil?

        serialized_property = object.hardware_profile
        unless serialized_property.nil?
          serialized_property = HardwareProfile.serialize_object(serialized_property)
        end
        output_object['hardwareProfile'] = serialized_property unless serialized_property.nil?

        serialized_property = object.storage_profile
        unless serialized_property.nil?
          serialized_property = StorageProfile.serialize_object(serialized_property)
        end
        output_object['storageProfile'] = serialized_property unless serialized_property.nil?

        serialized_property = object.os_profile
        unless serialized_property.nil?
          serialized_property = OSProfile.serialize_object(serialized_property)
        end
        output_object['osProfile'] = serialized_property unless serialized_property.nil?

        serialized_property = object.network_profile
        unless serialized_property.nil?
          serialized_property = NetworkProfile.serialize_object(serialized_property)
        end
        output_object['networkProfile'] = serialized_property unless serialized_property.nil?

        serialized_property = object.diagnostics_profile
        unless serialized_property.nil?
          serialized_property = DiagnosticsProfile.serialize_object(serialized_property)
        end
        output_object['diagnosticsProfile'] = serialized_property unless serialized_property.nil?

        serialized_property = object.availability_set
        unless serialized_property.nil?
          serialized_property = SubResource.serialize_object(serialized_property)
        end
        output_object['availabilitySet'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        serialized_property = object.license_type
        output_object['licenseType'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualMachineScaleSetVMProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VirtualMachineScaleSetVMProperties.new

        deserialized_property = object['latestModelApplied']
        output_object.latest_model_applied = deserialized_property

        deserialized_property = object['instanceView']
        unless deserialized_property.nil?
          deserialized_property = VirtualMachineInstanceView.deserialize_object(deserialized_property)
        end
        output_object.instance_view = deserialized_property

        deserialized_property = object['hardwareProfile']
        unless deserialized_property.nil?
          deserialized_property = HardwareProfile.deserialize_object(deserialized_property)
        end
        output_object.hardware_profile = deserialized_property

        deserialized_property = object['storageProfile']
        unless deserialized_property.nil?
          deserialized_property = StorageProfile.deserialize_object(deserialized_property)
        end
        output_object.storage_profile = deserialized_property

        deserialized_property = object['osProfile']
        unless deserialized_property.nil?
          deserialized_property = OSProfile.deserialize_object(deserialized_property)
        end
        output_object.os_profile = deserialized_property

        deserialized_property = object['networkProfile']
        unless deserialized_property.nil?
          deserialized_property = NetworkProfile.deserialize_object(deserialized_property)
        end
        output_object.network_profile = deserialized_property

        deserialized_property = object['diagnosticsProfile']
        unless deserialized_property.nil?
          deserialized_property = DiagnosticsProfile.deserialize_object(deserialized_property)
        end
        output_object.diagnostics_profile = deserialized_property

        deserialized_property = object['availabilitySet']
        unless deserialized_property.nil?
          deserialized_property = SubResource.deserialize_object(deserialized_property)
        end
        output_object.availability_set = deserialized_property

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        deserialized_property = object['licenseType']
        output_object.license_type = deserialized_property

        output_object
      end
    end
  end
end
