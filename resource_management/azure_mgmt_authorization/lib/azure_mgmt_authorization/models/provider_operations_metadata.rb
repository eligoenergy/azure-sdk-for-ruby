# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Authorization
  module Models
    #
    # Provider Operations metadata
    #
    class ProviderOperationsMetadata

      include MsRestAzure

      # @return [String] Gets or sets the provider id.
      attr_accessor :id

      # @return [String] Gets or sets the provider name
      attr_accessor :name

      # @return [String] Gets or sets the provider type
      attr_accessor :type

      # @return [String] Gets or sets the provider display name
      attr_accessor :display_name

      # @return [Array<ResourceType>] Gets or sets the provider resource types
      attr_accessor :resource_types

      # @return [Array<ProviderOperation>] Gets or sets the provider operations
      attr_accessor :operations

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @resource_types.each{ |e| e.validate if e.respond_to?(:validate) } unless @resource_types.nil?
        @operations.each{ |e| e.validate if e.respond_to?(:validate) } unless @operations.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.id
        output_object['id'] = serialized_property unless serialized_property.nil?

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.type
        output_object['type'] = serialized_property unless serialized_property.nil?

        serialized_property = object.display_name
        output_object['displayName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.resource_types
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = ResourceType.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['resourceTypes'] = serialized_property unless serialized_property.nil?

        serialized_property = object.operations
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element1|
            unless element1.nil?
              element1 = ProviderOperation.serialize_object(element1)
            end
            serializedArray.push(element1)
          end
          serialized_property = serializedArray
        end
        output_object['operations'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ProviderOperationsMetadata] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ProviderOperationsMetadata.new

        deserialized_property = object['id']
        output_object.id = deserialized_property

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['type']
        output_object.type = deserialized_property

        deserialized_property = object['displayName']
        output_object.display_name = deserialized_property

        deserialized_property = object['resourceTypes']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element2|
            unless element2.nil?
              element2 = ResourceType.deserialize_object(element2)
            end
            deserialized_array.push(element2)
          end
          deserialized_property = deserialized_array
        end
        output_object.resource_types = deserialized_property

        deserialized_property = object['operations']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element3|
            unless element3.nil?
              element3 = ProviderOperation.deserialize_object(element3)
            end
            deserialized_array.push(element3)
          end
          deserialized_property = deserialized_array
        end
        output_object.operations = deserialized_property

        output_object
      end
    end
  end
end
