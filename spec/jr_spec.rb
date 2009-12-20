$: << File.dirname(__FILE__) + '/../lib/'
require 'jr'

describe 'JR.task_list_from_ant_xml' do
  it 'is awesome' do
    ::JR.task_list_from_ant_xml('build.xml').should be_an_instance_of(String)
  end
end
