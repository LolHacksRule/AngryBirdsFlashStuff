package §6&§
{
   public class §9e§
   {
      
      private static var § d§:Object;
       
      
      public function §9e§()
      {
         super();
      }
      
      public static function §]]§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§ d§ == null)
         {
            § d§ = new Object();
         }
         if(!§%!8§(param1))
         {
            § d§[param1] = new §%A§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §%!8§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§ d§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §6!?§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§%A§ = § d§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§`p§;
      }
   }
}
