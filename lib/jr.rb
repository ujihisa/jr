require 'rubygems'
require 'nokogiri'
require 'termcolor'

module JR
  VERSION = '0.0.1'

  def let(x)
    yield x
  end

  module_function
  def task_list_from_ant_xml(xml_filename)
    n = Nokogiri::XML(File.read(xml_filename))
    default_target = n.at('//project')['default']
    targets = n.xpath('//project/target')
    targets.map {|t|
      let t['name'] do |name|
        default_target == name ? TermColor.parse("<red>#{name}</red>") : name
      end
    }
  end
end
