# 6210545734 Puvana

class IconBadge
  # Create Badge by IconBadge from the Shield Badge image
  #
  # Author:
  #   Noboomta
  #   puvana.jp36@gmail.com
  #   https://github.com/Noboomta
  #
  #
  # Example:
  #   >> require 'icon_badge'
  #   >> IconBadge.generator :name => 'testBadge', :color => 'F7DF1E', :logoColor => 'red', :logo => 'javascript'
  #   => ![badge_name](https://img.shields.io/badge/-testBadge-F7DF1E?style=flat&logoColor=red&logo=javascript)
  #
  #
  # Example Arguments:
  #   name: (String)
  #   color: (String)
  #   style: (String)
  #   logo: (String)
  #   logoColor: (String)
  #
  #
  # More information:
  #   https://github.com/badges/shields
  #   https://shields.io/

  def self.generator(hash = {})
    url = '![badge_name](https://img.shields.io/badge/-name-000000?style=flat'
    hash.each do |k, v|
      if k == :style
        url['?style=flat'] = '?style=' + v.to_s
      elsif k == :name
        url['-name'] = '-' + v.to_s
      elsif k == :color
        url['-000000'] = '-' + v.to_s
      elsif k == :badge_name
        url['badge_name'] = v.to_s
      else
        url += '&' + k.to_s + '=' + v.to_s
      end
    end
    url += ")\n"
    print url
  end
end
