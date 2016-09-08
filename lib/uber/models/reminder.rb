module Uber
  class Reminder < Base
    attr_accessor :event, :product_id, :reminder_id, :reminder_time, :reminder_status, :trip_branding

    def event=(value)
      @event = value && Event.new(value)
    end

    def trip_branding=(value)
      @trip_branding = value && TripBranding.new(value)
    end

    def reminder_time
      @reminder_time && ::Time.at(@reminder_time)
    end

    class Event < Base
      attr_accessor :name, :location, :latitude, :longitude, :time

      def time
        @time && ::Time.at(@time)
      end
    end

    class TripBranding < Base
      attr_accessor :link_text, :partner_deeplink
    end
  end

end