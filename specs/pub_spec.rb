require("minitest/autorun")
require_relative("../drink.rb")
require_relative("../pub.rb")

class PubTest < MiniTest::Test

  def setup
    @Gin = Drink.new("Gin", 10, 40)
    @Beer = Drink.new("Beer", 5, 5)
    @Wine = Drink.new("Wine", 15, 10 )
    @Vodka = Drink.new("Vodka", 20, 45)
    @Chanter = Pub.new("Chanter", 100, [@Gin, @Beer, @Wine, @Vodka], [])
  end

  def test_get_pub_name
    assert_equal("Chanter", @Chanter.name)
  end

  def test_add_money()
    @Chanter.add_money(10)
    assert_equal(110, @Chanter.till)
  end

  def test_number_of_drinks
    assert_equal(4, @Chanter.drinks_count())
  end

  def test_check_till_balance
    assert_equal(100, @Chanter.till())
  end

  def test_check_total_stock_value
    assert_equal(50, @Chanter.check_total_stock_value)
  end





end
