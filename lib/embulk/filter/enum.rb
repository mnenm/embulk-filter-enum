module Embulk
  module Filter

    class Enum < FilterPlugin
      Plugin.register_filter("enum", self)

      def self.transaction(config, in_schema)
        task = {
          "enums" => config.param("enums", :array, default: [])
        }

        out_columns = in_schema
        yield(task, out_columns)
      end

      def init
        @enums = task["enums"]
      end

      def close
      end

      def add(page)
        page.each do |record|
          result = {}
          record = Hash[in_schema.names.zip(record)]

          record.each do |key, value|
            enum = @enums.find {|e| e.key?(key) }
            result[key] = enum.nil? ? value : enum[key]["values"][value] || enum[key]["else"]
          end
          page_builder.add(result.values)
        end
      end

      def finish
        page_builder.finish
      end
    end

  end
end
