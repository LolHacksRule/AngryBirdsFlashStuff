package §#!G§
{
   import flash.utils.Dictionary;
   
   public class §6!_§
   {
      
      private static var §3R§:Dictionary;
       
      
      public function §6!_§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §8m§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         if(!(_loc6_ && §6!_§))
         {
            §3R§ = new Dictionary();
         }
         for each(_loc2_ in param1.items)
         {
            if(_loc5_)
            {
               §3R§[_loc2_.u] = §7I§.§+!7§(_loc2_);
            }
         }
      }
      
      public static function §#'§(param1:String) : §7I§
      {
         return §3R§[param1];
      }
   }
}
