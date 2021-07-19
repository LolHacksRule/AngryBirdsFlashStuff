package org.flexunit.internals.builders
{
   import flex.lang.reflect.Klass;
   import flex.lang.reflect.Method;
   import org.flexunit.constants.AnnotationConstants;
   
   public class FlexUnit4QualifiedBuilder extends FlexUnit4Builder
   {
       
      
      public function FlexUnit4QualifiedBuilder()
      {
         super();
      }
      
      override public function canHandleClass(testClass:Class) : Boolean
      {
         var klassInfo:Klass = new Klass(testClass);
         var found:Boolean = false;
         var methods:Array = new Array();
         methods = klassInfo.methods;
         var arrayLen:int = methods.length;
         for(var i:int = 0; i < arrayLen; i++)
         {
            if((methods[i] as Method).hasMetaData(AnnotationConstants.TEST))
            {
               found = true;
               break;
            }
         }
         return found;
      }
   }
}
