package §^!L§
{
   public class §@x§
   {
      
      private static var §throw§:Object;
       
      
      public function §@x§()
      {
         super();
      }
      
      public static function §#!a§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§throw§ == null)
         {
            §throw§ = new Object();
         }
         if(!§%h§(param1))
         {
            §throw§[param1] = new §67§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §%h§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§throw§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §="§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§67§ = §throw§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§3z§;
      }
   }
}
