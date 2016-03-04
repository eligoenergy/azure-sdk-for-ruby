# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a single certificate reference in a Key Vault, and where the
    # certificate should reside on the VM.
    #
    class VaultCertificate

      include MsRestAzure

      # @return [String] Gets or sets the URL referencing a secret in a Key
      # Vault which contains a properly formatted certificate.
      attr_accessor :certificate_url

      # @return [String] Gets or sets the Certificate store in LocalMachine to
      # add the certificate to on Windows, leave empty on Linux.
      attr_accessor :certificate_store

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

        serialized_property = object.certificate_url
        output_object['certificateUrl'] = serialized_property unless serialized_property.nil?

        serialized_property = object.certificate_store
        output_object['certificateStore'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VaultCertificate] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VaultCertificate.new

        deserialized_property = object['certificateUrl']
        output_object.certificate_url = deserialized_property

        deserialized_property = object['certificateStore']
        output_object.certificate_store = deserialized_property

        output_object
      end
    end
  end
end
