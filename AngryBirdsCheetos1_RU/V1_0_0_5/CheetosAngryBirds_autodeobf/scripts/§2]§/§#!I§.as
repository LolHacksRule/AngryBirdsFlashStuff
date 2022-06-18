package §2]§
{
   import §!4§.§=!Z§;
   import §@!§.§?! §;
   import flash.utils.Dictionary;
   
   public class §#!I§
   {
      
      private static var §-!I§:Array = [];
      
      private static var §]O§:Dictionary = new Dictionary();
       
      
      public function §#!I§()
      {
         super();
      }
      
      public static function §6z§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§[w§ = null;
         for(_loc2_ in param1)
         {
            if(!§]O§[_loc2_])
            {
               _loc3_ = new §[w§(param1[_loc2_],_loc2_);
               §=!Z§.log("Initializing cutScene: " + _loc2_);
               §]O§[_loc2_] = _loc3_;
               if(§-!I§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§^t§ = §[w§.§2R§;
               }
            }
         }
      }
      
      public static function §^!K§(param1:String, param2:§?! §) : §[w§
      {
         var _loc3_:§[w§ = §]O§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §"!Y§(param1:String) : §[w§
      {
         var _loc2_:§[w§ = §]O§[param1];
         if(_loc2_ && §-!I§.indexOf(param1))
         {
            _loc2_.§^t§ = §[w§.§2R§;
         }
         return _loc2_;
      }
      
      public static function §"J§(param1:String) : void
      {
         if(§-!I§.indexOf(param1) < 0)
         {
            §-!I§.push(param1);
         }
      }
   }
}
