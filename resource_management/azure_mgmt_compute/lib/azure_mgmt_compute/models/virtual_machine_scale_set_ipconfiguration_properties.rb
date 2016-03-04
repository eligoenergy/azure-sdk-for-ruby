# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a virtual machine scale set network profile's IP configuration
    # properties.
    #
    class VirtualMachineScaleSetIPConfigurationProperties

      include MsRestAzure

      # @return [ApiEntityReference] Gets or sets the subnet.
      attr_accessor :subnet

      # @return [Array<SubResource>] Gets or sets the load balancer backend
      # address pools.
      attr_accessor :load_balancer_backend_address_pools

      # @return [Array<SubResource>] Gets or sets the load balancer inbound
      # nat pools.
      attr_accessor :load_balancer_inbound_nat_pools

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail MsRest::ValidationError, 'property subnet is nil' if @subnet.nil?
        @subnet.validate unless @subnet.nil?
        @load_balancer_backend_address_pools.each{ |e| e.validate if e.respond_to?(:validate) } unless @load_balancer_backend_address_pools.nil?
        @load_balancer_inbound_nat_pools.each{ |e| e.validate if e.respond_to?(:validate) } unless @load_balancer_inbound_nat_pools.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.subnet
        unless serialized_property.nil?
          serialized_property = ApiEntityReference.serialize_object(serialized_property)
        end
        output_object['subnet'] = serialized_property unless serialized_property.nil?

        serialized_property = object.load_balancer_backend_address_pools
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = SubResource.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['loadBalancerBackendAddressPools'] = serialized_property unless serialized_property.nil?

        serialized_property = object.load_balancer_inbound_nat_pools
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element1|
            unless element1.nil?
              element1 = SubResource.serialize_object(element1)
            end
            serializedArray.push(element1)
          end
          serialized_property = serializedArray
        end
        output_object['loadBalancerInboundNatPools'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualMachineScaleSetIPConfigurationProperties] Deserialized
      # object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VirtualMachineScaleSetIPConfigurationProperties.new

        deserialized_property = object['subnet']
        unless deserialized_property.nil?
          deserialized_property = ApiEntityReference.deserialize_object(deserialized_property)
        end
        output_object.subnet = deserialized_property

        deserialized_property = object['loadBalancerBackendAddressPools']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element2|
            unless element2.nil?
              element2 = SubResource.deserialize_object(element2)
            end
            deserialized_array.push(element2)
          end
          deserialized_property = deserialized_array
        end
        output_object.load_balancer_backend_address_pools = deserialized_property

        deserialized_property = object['loadBalancerInboundNatPools']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element3|
            unless element3.nil?
              element3 = SubResource.deserialize_object(element3)
            end
            deserialized_array.push(element3)
          end
          deserialized_property = deserialized_array
        end
        output_object.load_balancer_inbound_nat_pools = deserialized_property

        output_object
      end
    end
  end
end
