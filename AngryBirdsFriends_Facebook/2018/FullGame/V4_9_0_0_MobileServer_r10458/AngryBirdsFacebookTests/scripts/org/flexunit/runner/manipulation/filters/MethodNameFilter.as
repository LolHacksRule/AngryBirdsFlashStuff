package org.flexunit.runner.manipulation.filters
{
   import org.flexunit.runner.IDescription;
   
   public class MethodNameFilter extends AbstractFilter
   {
       
      
      private var methodNames:Array;
      
      public function MethodNameFilter(methodNames:Array)
      {
         super();
         if(methodNames == null)
         {
            throw new TypeError("You must provide an array of Method Names to the MethodNameFilter");
         }
         this.methodNames = methodNames;
      }
      
      override public function shouldRun(description:IDescription) : Boolean
      {
         var namePieces:Array = null;
         var methodName:String = "";
         if(!description.isTest)
         {
            return true;
         }
         if(description && description.displayName)
         {
            namePieces = description.displayName.split(".");
            if(namePieces && namePieces.length > 0)
            {
               methodName = namePieces[namePieces.length - 1];
            }
         }
         return this.methodNames.indexOf(methodName) != -1;
      }
      
      override public function describe(description:IDescription) : String
      {
         return "Matching method list.";
      }
   }
}
