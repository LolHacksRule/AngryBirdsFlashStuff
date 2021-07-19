package org.flexunit.runner.manipulation
{
   import flex.lang.reflect.metadata.MetaDataAnnotation;
   import flex.lang.reflect.metadata.MetaDataArgument;
   import org.flexunit.constants.AnnotationArgumentConstants;
   import org.flexunit.runner.IDescription;
   
   public class OrderArgumentSorter implements ISorter
   {
      
      public static var ORDER_ARG_SORTER:ISorter = new OrderArgumentSorter();
       
      
      public function OrderArgumentSorter()
      {
         super();
      }
      
      public function apply(object:Object) : void
      {
         var sortable:ISortable = null;
         if(object is ISortable)
         {
            sortable = object as ISortable;
            sortable.sort(this);
         }
      }
      
      protected function getOrderValueFrom(object:IDescription) : Number
      {
         var metaDataAnnotation:MetaDataAnnotation = null;
         var metaArg:MetaDataArgument = null;
         var order:Number = 0;
         var metadataArray:Array = object.getAllMetadata();
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
      
      public function compare(o1:IDescription, o2:IDescription) : int
      {
         var a:Number = NaN;
         var b:Number = NaN;
         var o1Meta:Array = o1.getAllMetadata();
         var o2Meta:Array = o2.getAllMetadata();
         if(o1Meta)
         {
            a = this.getOrderValueFrom(o1);
         }
         else
         {
            a = 0;
         }
         if(o2Meta)
         {
            b = this.getOrderValueFrom(o2);
         }
         else
         {
            b = 0;
         }
         if(a < b)
         {
            return -1;
         }
         if(a > b)
         {
            return 1;
         }
         return 0;
      }
   }
}
