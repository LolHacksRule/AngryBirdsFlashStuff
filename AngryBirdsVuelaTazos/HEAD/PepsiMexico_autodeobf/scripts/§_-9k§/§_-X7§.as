package §_-9k§
{
   public class §_-X7§
   {
      
      private static var §_-Ev§:Object;
       
      
      public function §_-X7§()
      {
         super();
      }
      
      public static function §_-NG§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§_-Ev§ == null)
         {
            §_-Ev§ = new Object();
         }
         if(!§_-JA§(param1))
         {
            §_-Ev§[param1] = new §_-8U§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §_-JA§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§_-Ev§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-IA§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§_-8U§ = §_-Ev§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§_-jW§;
      }
   }
}
