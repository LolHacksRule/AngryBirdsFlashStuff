package §+"I§
{
   import §!!k§.§0!B§;
   import §+d§.§2!g§;
   import §9"`§.§-"H§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §90§
   {
      
      private static var §@"d§:Array = [];
      
      private static var §8"N§:§2!g§ = new §2!g§();
      
      private static var §=!E§:Dictionary = new Dictionary();
       
      
      public function §90§()
      {
         super();
      }
      
      public static function §["I§(param1:String, param2:ByteArray) : void
      {
         §8"N§[param1] = param2;
      }
      
      public static function §"L§(param1:String) : ByteArray
      {
         return §8"N§[param1];
      }
      
      public static function §`I§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§#!v§ = null;
         for(_loc2_ in param1)
         {
            if(!§=!E§[_loc2_])
            {
               _loc3_ = new §#!v§(param1[_loc2_],_loc2_);
               §-"H§.log("Initializing cutScene: " + _loc2_);
               §=!E§[_loc2_] = _loc3_;
               if(§@"d§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§do § = §#!v§.§2"X§;
               }
            }
         }
      }
      
      public static function §0!R§(param1:String, param2:§0!B§) : §#!v§
      {
         var _loc3_:§#!v§ = §=!E§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §#!v§
      {
         var _loc2_:§#!v§ = §=!E§[param1];
         if(_loc2_ && §@"d§.indexOf(param1))
         {
            _loc2_.§do § = §#!v§.§2"X§;
         }
         return _loc2_;
      }
      
      public static function §5"k§(param1:String) : void
      {
         if(§@"d§.indexOf(param1) < 0)
         {
            §@"d§.push(param1);
         }
      }
   }
}
