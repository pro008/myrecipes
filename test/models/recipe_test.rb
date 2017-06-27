require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
    
    def setup
        @recipe = Recipe.new(name: "vegetable", description: "Great value")
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