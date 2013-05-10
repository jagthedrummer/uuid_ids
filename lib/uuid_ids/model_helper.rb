module UuidIds
  module ModelHelper
    extend ActiveSupport::Concern

    included do
      # just in case
      self.primary_key = :id

      before_create :generate_uuid
      
      def generate_uuid
        # If you're trying to set the id by hand there's a good chance
        # that the key has already been distributed somewhere.  That
        # means it probably won't work to generate a new one if there is
        # a collision.  How to handle this case is app specific. 
        if self.id.blank?
          begin
            self.id = UUIDTools::UUID.timestamp_create.to_s
          end while self.class.where(:id => self.id).count > 0
        end
      end
    end

  end
end
