class Person
  ATTRIBUTES = [:name, :birthday, :hair_color, :eye_color, :height,
                :weight, :handed, :complexion, :t_shirt_size,
                :wrist_size, :glove_size, :pant_length, :pant_width]

  attr_accessor *ATTRIBUTES

  def initialize(attributes)
    attributes.each do |key, value|
      if ATTRIBUTES.include?(key.to_sym)
        self.send("#{key}=", value)
      end
    end
  end
end
