# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	def test_simple
		assert_equal("1 / 1", Fraccion.new(2, 2).to_s)
		assert_equal("3 / 4", Fraccion.new(3, 4).to_s)
	end
		
	def test_type_check
		assert_raise(RuntimeError) {Fraccion.new('l', 'pp')}
	end
	
	def test_failure
		assert_equal("5 / 5", (Fraccion.new(0, 0).producto(5, 5)).to_s)
	end

end
