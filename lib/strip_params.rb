require "strip_params/version"

module StripParams
  def self.all!(params)
    params.each do |k, v|
      if v.respond_to? :strip!
        v.strip!
      elsif v.respond_to? :each_pair
        all!(v)
      end
    end
    params
  end
end
