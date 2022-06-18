package §,!§
{
   import §2x§.§'!@§;
   import §[!$§.§"!%§;
   import flash.utils.Dictionary;
   
   public class §]=§
   {
      
      private static var §%!5§:Array = [];
      
      private static var dynamic:Dictionary = new Dictionary();
       
      
      public function §]=§()
      {
         super();
      }
      
      public static function §@!"§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§[O§ = null;
         for(_loc2_ in param1)
         {
            if(!dynamic[_loc2_])
            {
               _loc3_ = new §[O§(param1[_loc2_],_loc2_);
               §'!@§.log("Initializing cutScene: " + _loc2_);
               dynamic[_loc2_] = _loc3_;
               if(§%!5§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§8'§ = §[O§.§@!G§;
               }
            }
         }
      }
      
      public static function §=w§(param1:String, param2:§"!%§) : §[O§
      {
         var _loc3_:§[O§ = dynamic[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §&&§(param1:String) : §[O§
      {
         var _loc2_:§[O§ = dynamic[param1];
         if(_loc2_ && §%!5§.indexOf(param1))
         {
            _loc2_.§8'§ = §[O§.§@!G§;
         }
         return _loc2_;
      }
      
      public static function §6p§(param1:String) : void
      {
         if(§%!5§.indexOf(param1) < 0)
         {
            §%!5§.push(param1);
         }
      }
   }
}
