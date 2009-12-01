# encoding: utf-8
module R18n
  class Locales::Fr < Locale
    set :title, 'Français',
        
        :wday_names, %w{dimanche lundi mardi mercredi jeudi vendredi samedi},
        :wday_abbrs, %w{dim lun mar mer jeu ven sam},
        
        :month_names, %w{janvier février mars avril mai juin juillet août
                         septembre octobre novembre décembre},
        :month_abbrs, %w{jan fév mar avr mai jun jui aoû sep oct nov déc},
        :month_standalone, %w{Janvier Février Mars Avril Mai Juin Juillet Août
                              Septembre Octobre Novembre Décembre},
        
        :date_format, '%d/%m/%Y',
        
        :number_decimal, ",",
        :number_group,   " "
    
    def format_date_full(i18n, date, year = true)
      full = super(i18n, date, year)
      if ' 1' == full[0..1]
        '1er' + full[2..-1] 
      else
        full
      end
    end
  end
end
