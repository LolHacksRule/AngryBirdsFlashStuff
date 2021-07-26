package flex.lang.reflect.builders
{
   import flex.lang.reflect.Field;
   
   public class FieldBuilder
   {
       
      
      private var classXML:XML;
      
      private var clazz:Class;
      
      public function FieldBuilder(classXML:XML, clazz:Class)
      {
         super();
         this.classXML = classXML;
         this.clazz = clazz;
      }
      
      public function buildAllFields() : Array
      {
         var fields:Array = new Array();
         var variableList:XMLList = this.classXML.factory.variable;
         for(var i:int = 0; i < variableList.length(); i++)
         {
            fields.push(new Field(variableList[i],false,this.clazz,false));
         }
         var staticVariableList:XMLList = this.classXML.variable;
         for(var j:int = 0; j < staticVariableList.length(); j++)
         {
            fields.push(new Field(staticVariableList[j],true,this.clazz,false));
         }
         var propertyList:XMLList = this.classXML.factory.accessor;
         for(var k:int = 0; k < propertyList.length(); k++)
         {
            fields.push(new Field(propertyList[k],true,this.clazz,true));
         }
         var staticPropertyList:XMLList = this.classXML.accessor;
         for(var l:int = 0; l < staticPropertyList.length(); l++)
         {
            if(staticPropertyList[l].@name != "prototype")
            {
               fields.push(new Field(staticPropertyList[l],true,this.clazz,true));
            }
         }
         return fields;
      }
   }
}
