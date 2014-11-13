gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/guess_evaluator'
require_relative '../lib/guess'
require_relative '../lib/Shuffler1'


class Mastermind_CLI_Test < Minitest::Test
  def test_lookup_by_last_name_first_name
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_first_and_last_name, [], ["Alice","Smith"])
    phone_book.lookup('Smith, Alice')
    repository.verify
  end

  def
  def
