require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
    
    def setup
        @chef = Chef.new(chefname: "mashrur", email: "mashrur@example.com", password: "kakalot009", password_confirmation: "kakalot009")
        @recipe = @chef.recipes.build(name: "vegetable", description: "Great value")
    end
    
    test "recipe without chef should be invalid" do
        @recipe.chef_id = nil
        assert_not @recipe.valid?
    end
    
    test "recipe should be valid" do
        assert @recipe.valid?
    end
    
    test "name should be present" do
        @recipe.name = " "
        assert_not @recipe.valid?
    end
    
    test "description should be present" do
        @recipe.description = " "
        assert_not @recipe.valid?
    end
    
    
    
end