package §3"8§
{
   import §0"I§.§5!s§;
   import §3"$§.§&"0§;
   import §7A§.§5"2§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §@0§
   {
      
      private static var §3c§:Array = [];
      
      private static var §6"Z§:§5"2§ = new §5"2§();
      
      private static var §1B§:Dictionary = new Dictionary();
       
      
      public function §@0§()
      {
         super();
      }
      
      public static function §`7§(param1:String, param2:ByteArray) : void
      {
         §6"Z§[param1] = param2;
      }
      
      public static function §!"[§(param1:String) : ByteArray
      {
         return §6"Z§[param1];
      }
      
      public static function §?"Y§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§,;§ = null;
         for(_loc2_ in param1)
         {
            if(!§1B§[_loc2_])
            {
               _loc3_ = new §,;§(param1[_loc2_],_loc2_);
               §5!s§.log("Initializing cutScene: " + _loc2_);
               §1B§[_loc2_] = _loc3_;
               if(§3c§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§0"d§ = §,;§.§>!3§;
               }
            }
         }
      }
      
      public static function § §(param1:String, param2:§&"0§) : §,;§
      {
         var _loc3_:§,;§ = §1B§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §,;§
      {
         var _loc2_:§,;§ = §1B§[param1];
         if(_loc2_ && §3c§.indexOf(param1))
         {
            _loc2_.§0"d§ = §,;§.§>!3§;
         }
         return _loc2_;
      }
      
      public static function §"!+§(param1:String) : void
      {
         if(§3c§.indexOf(param1) < 0)
         {
            §3c§.push(param1);
         }
      }
   }
}
