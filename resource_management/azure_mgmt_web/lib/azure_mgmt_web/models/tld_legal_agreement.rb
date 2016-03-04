# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Represents a legal agreement for top level domain
    #
    class TldLegalAgreement

      include MsRestAzure

      # @return [String] Unique identifier for the agreement
      attr_accessor :agreement_key

      # @return [String] Agreement title
      attr_accessor :title

      # @return [String] Agreement details
      attr_accessor :content

      # @return [String] Url where a copy of the agreement details is hosted
      attr_accessor :url

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

        serialized_property = object.agreement_key
        output_object['agreementKey'] = serialized_property unless serialized_property.nil?

        serialized_property = object.title
        output_object['title'] = serialized_property unless serialized_property.nil?

        serialized_property = object.content
        output_object['content'] = serialized_property unless serialized_property.nil?

        serialized_property = object.url
        output_object['url'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [TldLegalAgreement] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = TldLegalAgreement.new

        deserialized_property = object['agreementKey']
        output_object.agreement_key = deserialized_property

        deserialized_property = object['title']
        output_object.title = deserialized_property

        deserialized_property = object['content']
        output_object.content = deserialized_property

        deserialized_property = object['url']
        output_object.url = deserialized_property

        output_object
      end
    end
  end
end
