# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a hardware profile.
    #
    class HardwareProfile

      include MsRestAzure

      # @return [VirtualMachineSizeTypes] The virtual machine size name.
      # Possible values include: 'Basic_A0', 'Basic_A1', 'Basic_A2',
      # 'Basic_A3', 'Basic_A4', 'Standard_A0', 'Standard_A1', 'Standard_A2',
      # 'Standard_A3', 'Standard_A4', 'Standard_A5', 'Standard_A6',
      # 'Standard_A7', 'Standard_A8', 'Standard_A9', 'Standard_A10',
      # 'Standard_A11', 'Standard_D1', 'Standard_D2', 'Standard_D3',
      # 'Standard_D4', 'Standard_D11', 'Standard_D12', 'Standard_D13',
      # 'Standard_D14', 'Standard_D1_v2', 'Standard_D2_v2', 'Standard_D3_v2',
      # 'Standard_D4_v2', 'Standard_D5_v2', 'Standard_D11_v2',
      # 'Standard_D12_v2', 'Standard_D13_v2', 'Standard_D14_v2',
      # 'Standard_DS1', 'Standard_DS2', 'Standard_DS3', 'Standard_DS4',
      # 'Standard_DS11', 'Standard_DS12', 'Standard_DS13', 'Standard_DS14',
      # 'Standard_G1', 'Standard_G2', 'Standard_G3', 'Standard_G4',
      # 'Standard_G5', 'Standard_GS1', 'Standard_GS2', 'Standard_GS3',
      # 'Standard_GS4', 'Standard_GS5'
      attr_accessor :vm_size

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

        serialized_property = object.vm_size
        output_object['vmSize'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [HardwareProfile] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = HardwareProfile.new

        deserialized_property = object['vmSize']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = VirtualMachineSizeTypes.constants.any? { |e| VirtualMachineSizeTypes.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum VirtualMachineSizeTypes does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.vm_size = deserialized_property

        output_object
      end
    end
  end
end
