# a gpt-spewed implementation of clsx in ruby (ostensibly for for rails + tailwind)
# add to app/helpers/application_helper.rb

#
#module ApplicationHelper

def clsx(*args)
  class_names = []
  args.each do |arg|
    if arg.is_a?(Hash)
      arg.each { |key, value| class_names << key.to_s if value }  # Add key if value is truthy
    else
      class_names << arg.to_s if arg.present?  # Add string if not blank
    end
  end
  class_names.join(' ')
end

#end
#
