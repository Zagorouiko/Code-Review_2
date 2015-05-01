class Word

  define_method(:initialize) do |words|
    @words = words
  end

  define_method(:words) do
    @words
  end
end
