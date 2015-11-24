require 'spec_helper'
require 'bib/lista'
require 'bib/Bibliografia'
describe "Pruebas para una lista con nodos simples" do
    before :each do
        @doublelist = Double_List.new(nil,nil)
    end
    
    describe "Prueba para comprobar el funcionamiento de los nodos" do
        it "Existe un nodo con su previo, su valor y su siguiente" do
            @node = Node1.new(nil,10,nil)
            expect(@node.prev).to eq(nil)
            expect(@node.value).to eq(10)
            expect(@node.next).to eq(nil)
        end
    end
    
    describe "Pruebas para comprobar el funcionamiento de la lista" do
        it "Existe una lista y está vacía" do
            expect(@doublelist.empty?).to eq(true)
        end

        it "Se puede insertar un elemento en la lista" do
            @doublelist.insert(10)
            expect(@doublelist.firts.value).to eq(10)
        end
        
        it "Se puede insertar varios elementos en la lista" do
            @doublelist.insert(10)
            @doublelist.insert(20)
            expect(@doublelist.firts.value).to eq(20)
            expect(@doublelist.firts.next.value).to eq(10)
        end
        
        it "Se puede extraer un elemento de la lista" do
            @doublelist.insert(10)
            @doublelist.extract
            expect(@doublelist.empty?).to eq(true)
        end
        
        it "Se puede extraer varios elementos de la lista" do
            @doublelist.insert(10)
            @doublelist.insert(20)
            @doublelist.extract
            @doublelist.extract
            expect(@doublelist.empty?).to eq(true)
        end
        
        it "Existe una lista con varios nodos, su cabeza y su cola" do
            @doublelist.insert(10)
            @doublelist.insert(20)
            @doublelist.insert(30)
            expect(@doublelist.empty?).to eq(false)
            expect(@doublelist.firts.value).to eq(30)
            expect(@doublelist.firts.next.value).to eq(20)
            expect(@doublelist.last.prev.value).to eq(20)
            expect(@doublelist.last.value).to eq(10)
            expect(@doublelist.last.next).to eq(nil)
        end
    end
    
    describe "Pruebas para comprobar el recorrido en la lista" do
        it "Se puede recorrer la lista de izquierda a derecha" do
            @doublelist.insert(10)
            @doublelist.insert(20)
            expect(@doublelist.firts.value).to eq(20)
            expect(@doublelist.firts.next.value).to eq(10)
        end
        
        it "Se puede recorrer la lista de derecha a izquierda" do
            @doublelist.insert(10)
            @doublelist.insert(20)
            expect(@doublelist.last.value).to eq(10)
            expect(@doublelist.last.prev.value).to eq(20)
        end
    end
end