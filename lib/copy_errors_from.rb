ActiveRecord::Base.class_eval do
  def copy_errors_from(model)
    model.errors.entries.each { |e| self.errors.add( "#{model.class.name.downcase}_#{e[0]}", e[1] )  }
  end
end