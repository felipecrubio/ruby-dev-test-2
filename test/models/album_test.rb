require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "valid album" do
    album = Album.new(name: albums(:some_girls))
    assert album.valid?
  end

  test "presence of name" do
    album = Album.new
    assert_not album.valid?
    assert_not_empty album.errors[:name]
  end

  test "multiple players" do
    album = Album.new(name: albums(:some_girls), players: [players(:shakira), players(:madonna)])
    assert album.valid?
  end
end
