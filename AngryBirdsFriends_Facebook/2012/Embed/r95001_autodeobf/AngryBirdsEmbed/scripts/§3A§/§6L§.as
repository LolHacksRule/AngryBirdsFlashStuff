package §3A§
{
   import §9H§.§@M§;
   import §[n§.§?+§;
   import flash.utils.Dictionary;
   
   public class §6L§
   {
      
      private static var § p§:Array = [];
      
      private static var §2-§:Dictionary = new Dictionary();
       
      
      public function §6L§()
      {
         super();
      }
      
      public static function §&Y§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§%!>§ = null;
         for(_loc2_ in param1)
         {
            if(!§2-§[_loc2_])
            {
               _loc3_ = new §%!>§(param1[_loc2_],_loc2_);
               §@M§.log("Initializing cutScene: " + _loc2_);
               §2-§[_loc2_] = _loc3_;
               if(§ p§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§<!-§ = §%!>§.§9!,§;
               }
            }
         }
      }
      
      public static function §#!F§(param1:String, param2:§?+§) : §%!>§
      {
         var _loc3_:§%!>§ = §2-§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §`m§(param1:String) : §%!>§
      {
         var _loc2_:§%!>§ = §2-§[param1];
         if(_loc2_ && § p§.indexOf(param1))
         {
            _loc2_.§<!-§ = §%!>§.§9!,§;
         }
         return _loc2_;
      }
      
      public static function § !G§(param1:String) : void
      {
         if(§ p§.indexOf(param1) < 0)
         {
            § p§.push(param1);
         }
      }
   }
}
