package flex.lang.reflect.builders
{
   import flex.lang.reflect.metadata.MetaDataAnnotation;
   import flex.lang.reflect.utils.MetadataTools;
   
   public class MetaDataAnnotationBuilder
   {
       
      
      private var classXML:XML;
      
      public function MetaDataAnnotationBuilder(classXML:XML)
      {
         super();
         this.classXML = classXML;
      }
      
      public function buildAllAnnotations() : Array
      {
         var metaDataList:XMLList = null;
         var i:int = 0;
         var metaDataAr:Array = new Array();
         if(this.classXML.factory && this.classXML.factory[0])
         {
            metaDataList = MetadataTools.nodeMetaData(this.classXML.factory[0]);
            if(metaDataList)
            {
               for(i = 0; i < metaDataList.length(); i++)
               {
                  metaDataAr.push(new MetaDataAnnotation(metaDataList[i]));
               }
            }
         }
         return metaDataAr;
      }
   }
}
