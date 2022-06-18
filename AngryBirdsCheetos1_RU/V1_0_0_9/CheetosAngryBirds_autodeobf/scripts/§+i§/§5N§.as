package §+i§
{
   import §-!6§.§>I§;
   import §`!B§.§=m§;
   import flash.utils.Dictionary;
   
   public class §5N§
   {
      
      private static var static:Array = [];
      
      private static var §3!1§:Dictionary = new Dictionary();
       
      
      public function §5N§()
      {
         super();
      }
      
      public static function §=!I§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§^3§ = null;
         for(_loc2_ in param1)
         {
            if(!§3!1§[_loc2_])
            {
               _loc3_ = new §^3§(param1[_loc2_],_loc2_);
               §>I§.log("Initializing cutScene: " + _loc2_);
               §3!1§[_loc2_] = _loc3_;
               if(static.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§>F§ = §^3§.§77§;
               }
            }
         }
      }
      
      public static function §>!]§(param1:String, param2:§=m§) : §^3§
      {
         var _loc3_:§^3§ = §3!1§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §6!U§(param1:String) : §^3§
      {
         var _loc2_:§^3§ = §3!1§[param1];
         if(_loc2_ && static.indexOf(param1))
         {
            _loc2_.§>F§ = §^3§.§77§;
         }
         return _loc2_;
      }
      
      public static function §5e§(param1:String) : void
      {
         if(static.indexOf(param1) < 0)
         {
            static.push(param1);
         }
      }
   }
}
