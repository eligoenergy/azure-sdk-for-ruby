# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    class RetryPolicy

      include MsRestAzure

      # @return [RetryType] Gets or sets the retry strategy to be used.
      # Possible values include: 'None', 'Fixed'
      attr_accessor :retry_type

      # @return [Duration] Gets or sets the retry interval between retries.
      attr_accessor :retry_interval

      # @return [Integer] Gets or sets the number of times a retry should be
      # attempted.
      attr_accessor :retry_count

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

        serialized_property = object.retry_type
        output_object['retryType'] = serialized_property unless serialized_property.nil?

        serialized_property = object.retry_interval
        output_object['retryInterval'] = serialized_property unless serialized_property.nil?

        serialized_property = object.retry_count
        output_object['retryCount'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [RetryPolicy] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = RetryPolicy.new

        deserialized_property = object['retryType']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = RetryType.constants.any? { |e| RetryType.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum RetryType does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.retry_type = deserialized_property

        deserialized_property = object['retryInterval']
        output_object.retry_interval = deserialized_property

        deserialized_property = object['retryCount']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.retry_count = deserialized_property

        output_object
      end
    end
  end
end
