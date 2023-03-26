require './spec/spec_helper' # this is the path to the spec_help file
require_relative '../script/script.rb' # this is the path to the script to run.


RSpec.describe 'Caesar Cipher tests' do
  describe 'encrypt single word' do
    it 'return the encrypted word "test" with  a caesar shift of 1' do
      expected_output = "yjxy"
      expect(caesar_cipher("test", 5)).to eq(expected_output)
    end
  end
end
