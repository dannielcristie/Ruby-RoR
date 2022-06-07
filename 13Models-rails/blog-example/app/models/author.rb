class Author < ApplicationRecord
    #validando a entradas de dados ao banco de dados
    validates :First_name, presence: true, length: {minimum:2, maximum: 100}
    validates :description, allow_nil: true, length: {maximum: 500}

    #callback do models
    after_validation :titleize_last_name, if: Proc.new { |a| a.last_name.present?}, on: :create

    has_many :addresses, dependent: :destroy
    has_many :posts, dependent: :destroy
    
    #metodo para titleize o last name depois de validar
    def titleize_last_name
        self.last_name = last_name.titleize
    end
end
