class Alumn < ApplicationRecord
  belongs_to :user

  validates :registry, presence: { message: "não pode estar em branco" },
                                           length: { minimum: 5,
                                                     maximum: 6,
                                                     :too_short => "deve possuir no mínimo 5 caracteres",
                                                     :too_long => "deve possuir no máximo 6 caracteres" }

  validates :shift, presence: { message: "não pode estar em branco" },
                                            length: { minimum: 6,
                                                      maximum: 11,
                                                      :too_short => "deve possuir no mínimo 6 caracteres",
                                                      :too_long => "deve possuir no máximo 11 caracteres" }

end
