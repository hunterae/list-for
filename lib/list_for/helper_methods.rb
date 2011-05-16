module ListFor
  module HelperMethods
    def list_for_options(options={}, parameters={})
      evaluated_options = {}
      options.each_pair { |k, v| evaluated_options[k] = (v.is_a?(Proc) ? v.call(parameters) : v)}
      evaluated_options
    end
    
    def list_for(*args, &block)
      options = args.extract_options! 
      
      options[:records] = args.first
      options[:template] = "list_for/list_for"
      options[:templates_folder] = "list_for"
      options[:record_variable] = "records"
      options[:variable] = "list"
      
      ListFor::Base.new(self, options, &block).render
    end
  end
end