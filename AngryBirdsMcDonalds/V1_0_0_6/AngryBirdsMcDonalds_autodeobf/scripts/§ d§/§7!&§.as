package § d§
{
   import §&!!§.§<!'§;
   import §8<§.§<!7§;
   import flash.utils.Dictionary;
   
   public class §7!&§
   {
      
      private static var § `§:Array = [];
      
      private static var §3!?§:Dictionary = new Dictionary();
       
      
      public function §7!&§()
      {
         super();
      }
      
      public static function §`!i§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§8!_§ = null;
         for(_loc2_ in param1)
         {
            if(!§3!?§[_loc2_])
            {
               _loc3_ = new §8!_§(param1[_loc2_],_loc2_);
               §<!7§.log("Initializing cutScene: " + _loc2_);
               §3!?§[_loc2_] = _loc3_;
               if(§ `§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§^k§ = §8!_§.§%,§;
               }
            }
         }
      }
      
      public static function §4!Y§(param1:String, param2:§<!'§) : §8!_§
      {
         var _loc3_:§8!_§ = §3!?§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §#!@§(param1:String) : §8!_§
      {
         var _loc2_:§8!_§ = §3!?§[param1];
         if(_loc2_ && § `§.indexOf(param1))
         {
            _loc2_.§^k§ = §8!_§.§%,§;
         }
         return _loc2_;
      }
      
      public static function §]B§(param1:String) : void
      {
         if(§ `§.indexOf(param1) < 0)
         {
            § `§.push(param1);
         }
      }
   }
}
