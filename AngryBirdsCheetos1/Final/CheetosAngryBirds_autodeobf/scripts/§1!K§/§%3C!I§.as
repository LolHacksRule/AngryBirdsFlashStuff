package §1!K§
{
   public class §<!I§
   {
      
      private static var §5w§:Object;
       
      
      public function §<!I§()
      {
         super();
      }
      
      public static function §3! §(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§5w§ == null)
         {
            §5w§ = new Object();
         }
         if(!§?! §(param1))
         {
            §5w§[param1] = new §0U§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §?! §(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§5w§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §;!U§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§0U§ = §5w§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§<!J§;
      }
   }
}
