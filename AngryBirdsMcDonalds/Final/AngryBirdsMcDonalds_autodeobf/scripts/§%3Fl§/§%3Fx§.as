package §?l§
{
   import §0i§.§4!%§;
   import §7! §.§4n§;
   import flash.utils.Dictionary;
   
   public class §?x§
   {
      
      private static var §=Y§:Array = [];
      
      private static var §6v§:Dictionary = new Dictionary();
       
      
      public function §?x§()
      {
         super();
      }
      
      public static function § V§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§`I§ = null;
         for(_loc2_ in param1)
         {
            if(!§6v§[_loc2_])
            {
               _loc3_ = new §`I§(param1[_loc2_],_loc2_);
               §4!%§.log("Initializing cutScene: " + _loc2_);
               §6v§[_loc2_] = _loc3_;
               if(§=Y§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§-n§ = §`I§.§"!]§;
               }
            }
         }
      }
      
      public static function §=h§(param1:String, param2:§4n§) : §`I§
      {
         var _loc3_:§`I§ = §6v§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §6f§(param1:String) : §`I§
      {
         var _loc2_:§`I§ = §6v§[param1];
         if(_loc2_ && §=Y§.indexOf(param1))
         {
            _loc2_.§-n§ = §`I§.§"!]§;
         }
         return _loc2_;
      }
      
      public static function §?g§(param1:String) : void
      {
         if(§=Y§.indexOf(param1) < 0)
         {
            §=Y§.push(param1);
         }
      }
   }
}
