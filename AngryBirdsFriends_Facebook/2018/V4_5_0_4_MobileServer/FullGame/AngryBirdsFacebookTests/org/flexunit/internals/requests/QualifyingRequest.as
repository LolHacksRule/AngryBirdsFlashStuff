package org.flexunit.internals.requests
{
   import org.flexunit.internals.builders.OnlyRecognizedTestClassBuilder;
   import org.flexunit.runner.Request;
   
   public class QualifyingRequest extends Request
   {
       
      
      public function QualifyingRequest()
      {
         super();
      }
      
      public static function classes(... argumentsArray) : Request
      {
         var allQualifiedBuilders:OnlyRecognizedTestClassBuilder = new OnlyRecognizedTestClassBuilder(true);
         var arrayLen:int = argumentsArray.length;
         var modifiedArray:Array = new Array();
         for(var i:int = 0; i < arrayLen; i++)
         {
            if(allQualifiedBuilders.qualify(argumentsArray[i]))
            {
               modifiedArray.push(argumentsArray[i]);
            }
         }
         return Request.classes.apply(null,modifiedArray);
      }
   }
}
