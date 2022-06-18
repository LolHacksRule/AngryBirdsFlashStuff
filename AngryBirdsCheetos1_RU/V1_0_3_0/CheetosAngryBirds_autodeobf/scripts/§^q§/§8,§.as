package §^q§
{
   public class §8,§
   {
      
      private static var §;!6§:Object;
       
      
      public function §8,§()
      {
         super();
      }
      
      public static function §^!S§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§;!6§ == null)
         {
            §;!6§ = new Object();
         }
         if(!§6r§(param1))
         {
            §;!6§[param1] = new §52§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §6r§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§;!6§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §8X§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§52§ = §;!6§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§0!^§;
      }
   }
}
