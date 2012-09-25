require_relative 'setup'
class MetaMethodTest < Test::Unit::TestCase
  def klass 
    Class.new do
      def a
      end

      def b
      end
      protected :b

      def c
      end
      private :c
    end
  end

  def setup
    Method.class_eval do
      include MetaMethod
    end
  end

  def test_public?
    m = klass.new.method(:a) 
    assert_equal true , m.public?
    assert_equal false, m.protected?
    assert_equal false, m.private?
  end

  def test_protected?
    m = klass.new.method(:b)
    assert_equal true , m.protected?
    assert_equal false, m.private?
    assert_equal false, m.public?
  end

  def test_private?
    m = klass.new.method(:c) 
    assert_equal true , m.private?
    assert_equal false, m.protected?
    assert_equal false, m.public?
  end
end
