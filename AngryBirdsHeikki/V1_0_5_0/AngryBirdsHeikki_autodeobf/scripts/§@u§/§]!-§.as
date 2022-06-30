package §@u§
{
   public class §]!-§
   {
      
      private static var include:Object;
       
      
      public function §]!-§()
      {
         super();
      }
      
      public static function §>&§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(include == null)
         {
            include = new Object();
         }
         if(!§,!<§(param1))
         {
            include[param1] = new §"!]§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §,!<§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(include[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §=!M§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§"!]§ = include[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§1i§;
      }
   }
}
