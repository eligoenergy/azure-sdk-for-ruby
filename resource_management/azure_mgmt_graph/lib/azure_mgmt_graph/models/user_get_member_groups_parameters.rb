# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Request parameters for GetMemberGroups API call
    #
    class UserGetMemberGroupsParameters

      include MsRestAzure

      # @return [Boolean] If true only membership in security enabled groups
      # should be checked. Otherwise membership in all groups should be
      # checked
      attr_accessor :security_enabled_only

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail MsRest::ValidationError, 'property security_enabled_only is nil' if @security_enabled_only.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.security_enabled_only
        output_object['securityEnabledOnly'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [UserGetMemberGroupsParameters] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = UserGetMemberGroupsParameters.new

        deserialized_property = object['securityEnabledOnly']
        output_object.security_enabled_only = deserialized_property

        output_object
      end
    end
  end
end
