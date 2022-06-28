package §5!3§
{
   import flash.utils.Dictionary;
   
   public class §#!B§
   {
      
      private static var §>2§:Dictionary;
       
      
      public function §#!B§()
      {
         super();
      }
      
      public static function §&?§(param1:Object) : void
      {
         var _loc2_:Object = null;
         §>2§ = new Dictionary();
         for each(_loc2_ in param1.items)
         {
            §>2§[_loc2_.u] = §8!k§.§+q§(_loc2_);
         }
      }
      
      public static function §?f§(param1:String) : §8!k§
      {
         return §>2§[param1];
      }
   }
}
