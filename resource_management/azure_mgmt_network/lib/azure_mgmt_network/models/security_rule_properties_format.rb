# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Model object.
    #
    class SecurityRulePropertiesFormat

      include MsRestAzure

      # @return [String] Gets or sets a description for this rule. Restricted
      # to 140 chars.
      attr_accessor :description

      # @return [SecurityRuleProtocol] Gets or sets Network protocol this rule
      # applies to. Can be Tcp, Udp or All(*). Possible values include:
      # 'Tcp', 'Udp', '*'
      attr_accessor :protocol

      # @return [String] Gets or sets Source Port or Range. Integer or range
      # between 0 and 65535. Asterix '*' can also be used to match all ports.
      attr_accessor :source_port_range

      # @return [String] Gets or sets Destination Port or Range. Integer or
      # range between 0 and 65535. Asterix '*' can also be used to match all
      # ports.
      attr_accessor :destination_port_range

      # @return [String] Gets or sets source address prefix. CIDR or source IP
      # range. Asterix '*' can also be used to match all source IPs. Default
      # tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can
      # also be used. If this is an ingress rule, specifies where network
      # traffic originates from.
      attr_accessor :source_address_prefix

      # @return [String] Gets or sets destination address prefix. CIDR or
      # source IP range. Asterix '*' can also be used to match all source
      # IPs. Default tags such as 'VirtualNetwork', 'AzureLoadBalancer' and
      # 'Internet' can also be used.
      attr_accessor :destination_address_prefix

      # @return [SecurityRuleAccess] Gets or sets network traffic is allowed
      # or denied. Possible values are 'Allow' and 'Deny'. Possible values
      # include: 'Allow', 'Deny'
      attr_accessor :access

      # @return [Integer] Gets or sets the priority of the rule. The value can
      # be between 100 and 4096. The priority number must be unique for each
      # rule in the collection. The lower the priority number, the higher the
      # priority of the rule.
      attr_accessor :priority

      # @return [SecurityRuleDirection] Gets or sets the direction of the
      # rule.InBound or Outbound. The direction specifies if rule will be
      # evaluated on incoming or outcoming traffic. Possible values include:
      # 'Inbound', 'Outbound'
      attr_accessor :direction

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail MsRest::ValidationError, 'property protocol is nil' if @protocol.nil?
        fail MsRest::ValidationError, 'property source_address_prefix is nil' if @source_address_prefix.nil?
        fail MsRest::ValidationError, 'property destination_address_prefix is nil' if @destination_address_prefix.nil?
        fail MsRest::ValidationError, 'property access is nil' if @access.nil?
        fail MsRest::ValidationError, 'property direction is nil' if @direction.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.protocol
        output_object['protocol'] = serialized_property unless serialized_property.nil?

        serialized_property = object.source_address_prefix
        output_object['sourceAddressPrefix'] = serialized_property unless serialized_property.nil?

        serialized_property = object.destination_address_prefix
        output_object['destinationAddressPrefix'] = serialized_property unless serialized_property.nil?

        serialized_property = object.access
        output_object['access'] = serialized_property unless serialized_property.nil?

        serialized_property = object.direction
        output_object['direction'] = serialized_property unless serialized_property.nil?

        serialized_property = object.description
        output_object['description'] = serialized_property unless serialized_property.nil?

        serialized_property = object.source_port_range
        output_object['sourcePortRange'] = serialized_property unless serialized_property.nil?

        serialized_property = object.destination_port_range
        output_object['destinationPortRange'] = serialized_property unless serialized_property.nil?

        serialized_property = object.priority
        output_object['priority'] = serialized_property unless serialized_property.nil?

        serialized_property = object.provisioning_state
        output_object['provisioningState'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [SecurityRulePropertiesFormat] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = SecurityRulePropertiesFormat.new

        deserialized_property = object['protocol']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = SecurityRuleProtocol.constants.any? { |e| SecurityRuleProtocol.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum SecurityRuleProtocol does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.protocol = deserialized_property

        deserialized_property = object['sourceAddressPrefix']
        output_object.source_address_prefix = deserialized_property

        deserialized_property = object['destinationAddressPrefix']
        output_object.destination_address_prefix = deserialized_property

        deserialized_property = object['access']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = SecurityRuleAccess.constants.any? { |e| SecurityRuleAccess.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum SecurityRuleAccess does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.access = deserialized_property

        deserialized_property = object['direction']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = SecurityRuleDirection.constants.any? { |e| SecurityRuleDirection.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum SecurityRuleDirection does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.direction = deserialized_property

        deserialized_property = object['description']
        output_object.description = deserialized_property

        deserialized_property = object['sourcePortRange']
        output_object.source_port_range = deserialized_property

        deserialized_property = object['destinationPortRange']
        output_object.destination_port_range = deserialized_property

        deserialized_property = object['priority']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.priority = deserialized_property

        deserialized_property = object['provisioningState']
        output_object.provisioning_state = deserialized_property

        output_object
      end
    end
  end
end
