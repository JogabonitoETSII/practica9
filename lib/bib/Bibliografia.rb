    class BReferences # Clase para el desarrollo de referencias.
    
      attr_accessor :author, :title, :editorial, :date
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(author, title, editorial, date) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @author = author
      @title = title
      @editorial = editorial
      @date = date
      
      end
      
      #-----> MÉTODOS GETTERS DE LA CLASE.
      
      def get_author() # Método para la devolución de author.
        return @author
      end
      
      def get_title() # Método para la devolución de title.
        return @title
      end
      
      def get_editorial() # Método para la devolución de editorial.
        return @editorial
      end
      
      def get_date() # Método para la devolución de date.
        return @date
      end
      #def <=> (other)
       #  @author<=> other.author
      #end  
    end
    
    class Libros < BReferences # Clase para el desarrollo de referencias bibliográficas. Herencia de References.
    
      attr_accessor :series, :edition_number, :isbn
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(series, edition_number, isbn) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @series = series
      @edition_number = edition_number
      @isbn = isbn
      
      end
    end
    
    class Revista < BReferences # Clase para representar artículos de revistas
    
      attr_accessor :magazine, :issn
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(magazine, issn) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @magazine = magazine
      @issn = issn
      
      end
    end
    
    class Periodico < BReferences # Clase para representar artículos de periódicos.
    
      attr_accessor :newspaper, :print
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(newspaper, print) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @newspaper = newspaper
      @print = print
      
      end
    end
    
    class D_Electronico <BReferences # Clase para representar documentos electrónicos.
    
      attr_accessor :url
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(url) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @url = url
      
      end
    end
    
    
    
    
      