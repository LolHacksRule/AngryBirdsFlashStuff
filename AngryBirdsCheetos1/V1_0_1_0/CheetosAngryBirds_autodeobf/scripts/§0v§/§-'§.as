package §0v§
{
   public class §-'§
   {
      
      private static var §&0§:Object;
       
      
      public function §-'§()
      {
         super();
      }
      
      public static function §'b§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§&0§ == null)
         {
            §&0§ = new Object();
         }
         if(!§;x§(param1))
         {
            §&0§[param1] = new §'!=§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §;x§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§&0§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §]`§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§'!=§ = §&0§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§'G§;
      }
   }
}
