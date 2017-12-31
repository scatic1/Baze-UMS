require 'test_helper'
require 'generators/ums_migration/ums_migration_generator'

class UmsMigrationGeneratorTest < Rails::Generators::TestCase
  tests UmsMigrationGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
