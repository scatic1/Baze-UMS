require 'test_helper'
require 'generators/ums2_migration/ums2_migration_generator'

class Ums2MigrationGeneratorTest < Rails::Generators::TestCase
  tests Ums2MigrationGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
