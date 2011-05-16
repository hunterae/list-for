require "action_view"

$LOAD_PATH.unshift(File.dirname(__FILE__))

require "list_for/list_for"
require "list_for/helper_methods"
require "list_for/engine"

$LOAD_PATH.shift

if defined?(ActionView::Base)
  ActionView::Base.send :include, ListFor::HelperMethods
end
