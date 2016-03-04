# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.15.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Represents whether or not a web app is cloneable
    #
    class SiteCloneability

      include MsRestAzure

      # @return [CloneAbilityResult] Name of web app. Possible values include:
      # 'Cloneable', 'PartiallyCloneable', 'NotCloneable'
      attr_accessor :result

      # @return [Array<SiteCloneabilityCriterion>] List of features enabled on
      # web app that prevent cloning
      attr_accessor :blocking_features

      # @return [Array<SiteCloneabilityCriterion>] List of features enabled on
      # web app that are non-blocking but cannot be cloned. The web app can
      # still be cloned
      # but the features in this list will not be set up on cloned
      # web app.
      attr_accessor :unsupported_features

      # @return [Array<SiteCloneabilityCriterion>] List of blocking
      # application characteristics
      attr_accessor :blocking_characteristics

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail MsRest::ValidationError, 'property result is nil' if @result.nil?
        @blocking_features.each{ |e| e.validate if e.respond_to?(:validate) } unless @blocking_features.nil?
        @unsupported_features.each{ |e| e.validate if e.respond_to?(:validate) } unless @unsupported_features.nil?
        @blocking_characteristics.each{ |e| e.validate if e.respond_to?(:validate) } unless @blocking_characteristics.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.result
        output_object['result'] = serialized_property unless serialized_property.nil?

        serialized_property = object.blocking_features
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = SiteCloneabilityCriterion.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['blockingFeatures'] = serialized_property unless serialized_property.nil?

        serialized_property = object.unsupported_features
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element1|
            unless element1.nil?
              element1 = SiteCloneabilityCriterion.serialize_object(element1)
            end
            serializedArray.push(element1)
          end
          serialized_property = serializedArray
        end
        output_object['unsupportedFeatures'] = serialized_property unless serialized_property.nil?

        serialized_property = object.blocking_characteristics
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element2|
            unless element2.nil?
              element2 = SiteCloneabilityCriterion.serialize_object(element2)
            end
            serializedArray.push(element2)
          end
          serialized_property = serializedArray
        end
        output_object['blockingCharacteristics'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [SiteCloneability] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = SiteCloneability.new

        deserialized_property = object['result']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = CloneAbilityResult.constants.any? { |e| CloneAbilityResult.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum CloneAbilityResult does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.result = deserialized_property

        deserialized_property = object['blockingFeatures']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element3|
            unless element3.nil?
              element3 = SiteCloneabilityCriterion.deserialize_object(element3)
            end
            deserialized_array.push(element3)
          end
          deserialized_property = deserialized_array
        end
        output_object.blocking_features = deserialized_property

        deserialized_property = object['unsupportedFeatures']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element4|
            unless element4.nil?
              element4 = SiteCloneabilityCriterion.deserialize_object(element4)
            end
            deserialized_array.push(element4)
          end
          deserialized_property = deserialized_array
        end
        output_object.unsupported_features = deserialized_property

        deserialized_property = object['blockingCharacteristics']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element5|
            unless element5.nil?
              element5 = SiteCloneabilityCriterion.deserialize_object(element5)
            end
            deserialized_array.push(element5)
          end
          deserialized_property = deserialized_array
        end
        output_object.blocking_characteristics = deserialized_property

        output_object
      end
    end
  end
end
