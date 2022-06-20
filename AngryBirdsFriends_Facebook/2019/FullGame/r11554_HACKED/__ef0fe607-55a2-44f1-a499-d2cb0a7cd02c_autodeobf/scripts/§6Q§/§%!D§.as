package §6Q§
{
   import §+#B§.§4"[§;
   import §9#K§.§=#f§;
   import §^"[§.§=#;§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §%!D§
   {
      
      private static var § !v§:Array = [];
      
      private static var §1"4§:§4"[§ = new §4"[§();
      
      private static var §0R§:Dictionary = new Dictionary();
       
      
      public function §%!D§()
      {
         super();
      }
      
      public static function §]#Z§(param1:String, param2:ByteArray) : void
      {
         §1"4§[param1] = param2;
      }
      
      public static function § "k§(param1:String) : ByteArray
      {
         return §1"4§[param1];
      }
      
      public static function §3#]§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§,!,§ = null;
         for(_loc2_ in param1)
         {
            if(!§0R§[_loc2_])
            {
               _loc3_ = new §,!,§(param1[_loc2_],_loc2_);
               §=#f§.log("Initializing cutScene: " + _loc2_);
               §0R§[_loc2_] = _loc3_;
               if(§ !v§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.cutSceneType = §,!,§.§^!"§;
               }
            }
         }
      }
      
      public static function §9§(param1:String, param2:§=#;§) : §,!,§
      {
         var _loc3_:§,!,§ = §0R§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §,!,§
      {
         var _loc2_:§,!,§ = §0R§[param1];
         if(_loc2_ && § !v§.indexOf(param1))
         {
            _loc2_.cutSceneType = §,!,§.§^!"§;
         }
         return _loc2_;
      }
      
      public static function §47§(param1:String) : Boolean
      {
         return § !v§.indexOf(param1) >= 0;
      }
      
      public static function §3l§(param1:String) : void
      {
         if(§ !v§.indexOf(param1) < 0)
         {
            § !v§.push(param1);
         }
      }
   }
}
