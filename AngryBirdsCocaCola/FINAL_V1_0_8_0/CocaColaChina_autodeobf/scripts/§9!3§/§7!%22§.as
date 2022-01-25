package §9!3§
{
   import §48§.§4a§;
   import §^=§.§8!6§;
   import flash.utils.Dictionary;
   
   public class §7!"§
   {
      
      private static var §`7§:Array = [];
      
      private static var §3!X§:Dictionary = new Dictionary();
       
      
      public function §7!"§()
      {
         super();
      }
      
      public static function §]!W§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§"!V§ = null;
         for(_loc2_ in param1)
         {
            if(!§3!X§[_loc2_])
            {
               _loc3_ = new §"!V§(param1[_loc2_],_loc2_);
               §8!6§.log("Initializing cutScene: " + _loc2_);
               §3!X§[_loc2_] = _loc3_;
               if(§`7§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§-m§ = §"!V§.§]f§;
               }
            }
         }
      }
      
      public static function §5!O§(param1:String, param2:§4a§) : §"!V§
      {
         var _loc3_:§"!V§ = §3!X§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §4&§(param1:String) : §"!V§
      {
         var _loc2_:§"!V§ = §3!X§[param1];
         if(_loc2_ && §`7§.indexOf(param1))
         {
            _loc2_.§-m§ = §"!V§.§]f§;
         }
         return _loc2_;
      }
      
      public static function §=C§(param1:String) : void
      {
         if(§`7§.indexOf(param1) < 0)
         {
            §`7§.push(param1);
         }
      }
   }
}
