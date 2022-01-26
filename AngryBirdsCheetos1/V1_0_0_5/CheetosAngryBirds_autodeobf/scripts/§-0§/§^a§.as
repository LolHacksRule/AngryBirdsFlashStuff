package §-0§
{
   public class §^a§
   {
      
      private static var §-'§:Object;
       
      
      public function §^a§()
      {
         super();
      }
      
      public static function §&0§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§-'§ == null)
         {
            §-'§ = new Object();
         }
         if(!§'b§(param1))
         {
            §-'§[param1] = new §]`§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §'b§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§-'§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §;x§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§]`§ = §-'§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§'h§;
      }
   }
}
