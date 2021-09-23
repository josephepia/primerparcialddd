class DirectProduct < SimpleProduct

    validates :cantidad, numericality: {greater_than: 0}

    def registrar(producto)
    #    @@productos 
    end
end
