class Contact < ActiveRecord::Base

  validates_presence_of :name, :email, :company
  
  MAIN_FIELDS = [:name, :title, :email, :phone, :company, :company_url]
  
  def content_fields=(fields)
    main, other = {}, {}
    fields.each do |k,v|
      if MAIN_FIELDS.include?(k.to_sym)
        main[k] = v
      else
        other[k] = v
      end
    end
    self.attributes = main
    self.other_fields = other.to_yaml
  end
  
  # Fetches data from the other_fields store by it's key
  def other(key)
    others[key]
  end
  
  def others
    deserialize_other_fields
  end
  
  private
    
    def deserialize_other_fields
      data = read_attribute(:other_fields)
      if data.present?
        YAML::load(data)
      else
        {}
      end
    end
  
end
