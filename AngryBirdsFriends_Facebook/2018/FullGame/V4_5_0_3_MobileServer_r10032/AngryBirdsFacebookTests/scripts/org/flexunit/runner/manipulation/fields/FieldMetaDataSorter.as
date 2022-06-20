package org.flexunit.runner.manipulation.fields
{
   import flex.lang.reflect.Field;
   import flex.lang.reflect.metadata.MetaDataAnnotation;
   import flex.lang.reflect.metadata.MetaDataArgument;
   import org.flexunit.constants.AnnotationArgumentConstants;
   
   public class FieldMetaDataSorter implements IFieldSorter
   {
       
      
      private var invert:Boolean = false;
      
      public function FieldMetaDataSorter(invert:Boolean = false)
      {
         super();
         this.invert = invert;
      }
      
      protected function getOrderValueFrom(field:Field) : Number
      {
         var metaDataAnnotation:MetaDataAnnotation = null;
         var metaArg:MetaDataArgument = null;
         var order:Number = 0;
         var metadataArray:Array = field.metadata;
         for(var i:int = 0; i < metadataArray.length; i++)
         {
            metaDataAnnotation = metadataArray[i] as MetaDataAnnotation;
            metaArg = metaDataAnnotation.getArgument(AnnotationArgumentConstants.ORDER,true);
            if(metaArg)
            {
               order = Number(metaArg.value);
               break;
            }
         }
         return order;
      }
      
      public function compare(field1:Field, field2:Field) : int
      {
         var a:Number = NaN;
         var b:Number = NaN;
         if(field1)
         {
            a = this.getOrderValueFrom(field1);
         }
         else
         {
            a = 0;
         }
         if(field2)
         {
            b = this.getOrderValueFrom(field2);
         }
         else
         {
            b = 0;
         }
         if(a < b)
         {
            return !!this.invert ? 1 : -1;
         }
         if(a > b)
         {
            return !!this.invert ? -1 : 1;
         }
         return 0;
      }
   }
}
