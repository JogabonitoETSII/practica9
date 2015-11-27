require "spec_helper"
require "bib/Bibliografia.rb"

describe BReferences do
  before :each do
    @bibliography =Libros.new("(The Facets of Ruby)", "4 edition", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
    @otro =Libros.new("(El creado de ruby)", "4 edition", ["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
    @magazine_article = Revista.new("PC World", "ISSN-7398473")
    @Otro_revista =Revista.new("Intervew", "ISSN-7398473")
    @newspaper_article = Periodico.new("Marca", "National")
    @otro_periodico= Periodico.new("AS", "National")
    @electronic_document = D_Electronico.new("www.marcosruby.es/pdfexport/lessons")
    @otro_EDocument = D_Electronico.new("www.facebook.com/tutifritusFC/page")
  end 
  
  describe "Jerarquía de Clases - Herencia" do
    
    it "Bibliography es una clase herencia de References" do
      expect(@bibliography.is_a? Libros).to eq(true)
      expect(@bibliography.kind_of? BReferences).to eq(true)
    end
    
    it "Magazine_Articles es una clase herencia de References" do
      expect(@magazine_article.is_a? Revista).to eq(true)
      expect(@magazine_article.kind_of? BReferences).to eq(true)
    end
    
    it "Newspaper_Articles es una clase herencia de References" do
      expect(@newspaper_article.is_a? Periodico).to eq(true)
      expect(@newspaper_article.kind_of? BReferences).to eq(true)
    end
    
    it "Electronic_Document es una clase herencia de References" do
      expect(@electronic_document.is_a? D_Electronico).to eq(true)
      expect(@electronic_document.kind_of? BReferences).to eq(true)
    end
    
    it "Probando el tipo" do
      expect(@electronic_document.respond_to? :issn).to eq(false)
    end
    it "Comparando ==" do
        expect(@bibliography<@otro).to eq (false)
    end
  end
end
