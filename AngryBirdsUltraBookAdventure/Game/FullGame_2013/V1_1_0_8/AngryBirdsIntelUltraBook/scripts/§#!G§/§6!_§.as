package §#!G§
{
   import flash.utils.Dictionary;
   
   public class §6!_§
   {
      
      private static var §3R§:Dictionary;
       
      
      public function §6!_§()
      {
         super();
      }
      
      public static function §8m§(param1:Object) : void
      {
         var _loc2_:Object = null;
         §3R§ = new Dictionary();
         for each(_loc2_ in param1.items)
         {
            §3R§[_loc2_.u] = §7I§.§+!7§(_loc2_);
         }
      }
      
      public static function §#'§(param1:String) : §7I§
      {
         return §3R§[param1];
      }
   }
}
