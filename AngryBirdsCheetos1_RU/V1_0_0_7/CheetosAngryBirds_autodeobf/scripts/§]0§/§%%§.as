package §]0§
{
   public class §%%§
   {
      
      private static var §0!R§:Object;
       
      
      public function §%%§()
      {
         super();
      }
      
      public static function §!!0§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§0!R§ == null)
         {
            §0!R§ = new Object();
         }
         if(!§+0§(param1))
         {
            §0!R§[param1] = new §6B§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §+0§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§0!R§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §in §(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§6B§ = §0!R§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§!Q§;
      }
   }
}
