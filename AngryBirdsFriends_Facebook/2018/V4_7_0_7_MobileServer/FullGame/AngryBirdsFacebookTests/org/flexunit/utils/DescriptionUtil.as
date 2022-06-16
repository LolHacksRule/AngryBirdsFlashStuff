package org.flexunit.utils
{
   import org.flexunit.runner.IDescription;
   
   public class DescriptionUtil
   {
       
      
      public function DescriptionUtil()
      {
         super();
      }
      
      public static function getMethodNameFromDescription(description:IDescription) : String
      {
         var hayStack:String = null;
         var spaceIndex:int = description.displayName.indexOf(" ");
         var lastDotIndex:int = 0;
         if(spaceIndex < 0)
         {
            hayStack = description.displayName;
         }
         else
         {
            hayStack = description.displayName.substr(0,spaceIndex);
         }
         lastDotIndex = hayStack.lastIndexOf(".");
         if(lastDotIndex < 0)
         {
            return "";
         }
         return hayStack.substr(lastDotIndex + 1);
      }
   }
}
