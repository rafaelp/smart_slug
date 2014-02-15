# -*- encoding : utf-8 -*-
class SmartSlug

  def initialize(val)
    # Do not use @string = val to avoid changing the value of received object
    @original = "#{val}"
    @slug = slug
  end

  def ==(other)
    begin
      other = SmartSlug.new(other) unless other.kind_of?(SmartSlug)
    rescue
      return false
    end
    @slug == other.to_s
  end

  def to_s
    slug
  end

  private

    def slug
      string = @original.dup
      string.strip!
      string.gsub!(/[\/\.\:\@º]/,   '')
      string.gsub!(/[àáâãäåāă]/,    'a')
      string.gsub!(/[ÀÁÂÃÄÅĀĂ]/,    'A')
      string.gsub!(/æÆ/,            'ae')
      string.gsub!(/[ďđ]/,          'd')
      string.gsub!(/[ĎĐ]/,          'D')
      string.gsub!(/[çćčĉċ]/,       'c')
      string.gsub!(/[ÇĆČĈĊ]/,       'C')
      string.gsub!(/[èéêëēęěĕė]/,   'e')
      string.gsub!(/[ÈÉÊËĒĘĚĔĖ]/,   'E')
      string.gsub!(/ƒƑ/,            'f')
      string.gsub!(/[ĝğġģ]/,        'g')
      string.gsub!(/[ĜĞĠĢ]/,        'G')
      string.gsub!(/[ĥħ]/,          'h')
      string.gsub!(/[ĤĦ]/,          'H')
      string.gsub!(/[ììíîïīĩĭ]/,    'i')
      string.gsub!(/[ÌÌÍÎÏĪĨĬ]/,    'I')
      string.gsub!(/[įıĳ]/,         'j')
      string.gsub!(/[ĵĮĲĴ]/,        'J')
      string.gsub!(/[ķĸĶĸ]/,        'k')
      string.gsub!(/[łľĺļŀ]/,       'l')
      string.gsub!(/[ŁĽĹĻĿ]/,       'L')
      string.gsub!(/[ñńňņŉŋ]/,      'n')
      string.gsub!(/[ÑŃŇŅŉŊ]/,      'N')
      string.gsub!(/[òóôõöøōőŏŏ]/,  'o')
      string.gsub!(/[ÒÓÔÕÖØŌŐŎŎ]/,  'O')
      string.gsub!(/œŒ/,            'oe')
      string.gsub!(/ąĄ/,            'q')
      string.gsub!(/[ŕřŗ]/,         'r')
      string.gsub!(/[ŔŘŖ]/,         'R')
      string.gsub!(/[śšşŝș]/,       's')
      string.gsub!(/[ŚŠŞŜȘ]/,       'S')
      string.gsub!(/[ťţŧț]/,        't')
      string.gsub!(/[ŤŢŦȚ]/,        'T')
      string.gsub!(/[ùúûüūůűŭũų]/,  'u')
      string.gsub!(/[ÙÚÛÜŪŮŰŬŨŲ]/,  'U')
      string.gsub!(/ŵ/,             'w')
      string.gsub!(/Ŵ/,             'W')
      string.gsub!(/[ýÿŷ]/,         'y')
      string.gsub!(/[ÝŸŶ]/,         'Y')
      string.gsub!(/[žżź]/,         'z')
      string.gsub!(/[ŽŻŹ]/,         'Z')
      string.gsub!(/[^a-z0-9_-]/i,   '-')
      string.gsub!(/_+/, '_')
      string.gsub!(/ +/, '-')
      string.gsub!(/^-+/, '')
      string.gsub!(/-+/, '-')
      string
    end

end
