package § 9§
{
   public class §=!a§
   {
      
      private static var §'X§:Object;
       
      
      public function §=!a§()
      {
         super();
      }
      
      public static function §5r§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§'X§ == null)
         {
            §'X§ = new Object();
         }
         if(!§ !+§(param1))
         {
            §'X§[param1] = new §7L§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function § !+§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§'X§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §@o§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§7L§ = §'X§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§"k§;
      }
   }
}
