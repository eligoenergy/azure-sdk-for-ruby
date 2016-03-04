# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Description of a NotificationHub GcmCredential.
    #
    class GcmCredentialProperties

      include MsRestAzure

      # @return [String] Gets or sets the GCM endpoint.
      attr_accessor :gcm_endpoint

      # @return [String] Gets or sets the Google API key.
      attr_accessor :google_api_key

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

        serialized_property = object.gcm_endpoint
        output_object['gcmEndpoint'] = serialized_property unless serialized_property.nil?

        serialized_property = object.google_api_key
        output_object['googleApiKey'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [GcmCredentialProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = GcmCredentialProperties.new

        deserialized_property = object['gcmEndpoint']
        output_object.gcm_endpoint = deserialized_property

        deserialized_property = object['googleApiKey']
        output_object.google_api_key = deserialized_property

        output_object
      end
    end
  end
end
