  module Jekyll
    module AutophagianDatesFilter
      MONTHS = {"1" => "Hærfest", "2" => "Mist", "3" => "Forst",
              "4" => "Snáw", "5" => "Regn", "6" => "Wind",
              "7" => "Sǽd", "8" => "Blóstm", "9" => "Mǽdland",
              "10" => "Ríp", "11" => "Hát", "12" => "Wæstm",
              "13" => "Wending"}

      # Assume datarum comes in as Y-M-D
      def autophagian_date datarum
        year, month, day = datarum.split('-')
        day+' '+MONTHS[month]+' '+year
      end
    end
  end

  Liquid::Template.register_filter Jekyll::AutophagianDatesFilter
