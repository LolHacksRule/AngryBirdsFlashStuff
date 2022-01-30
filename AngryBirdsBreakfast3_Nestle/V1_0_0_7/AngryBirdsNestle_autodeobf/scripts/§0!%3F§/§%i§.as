package §0!?§
{
   import § !Q§.§"D§;
   import §!!&§.§4!7§;
   import §;L§.§"!X§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §%i§
   {
      
      private static var §+!v§:Array = [];
      
      private static var §1"'§:§4!7§ = new §4!7§();
      
      private static var §,!Q§:Dictionary = new Dictionary();
       
      
      public function §%i§()
      {
         super();
      }
      
      public static function §'!`§(param1:String, param2:ByteArray) : void
      {
         §1"'§[param1] = param2;
      }
      
      public static function §?o§(param1:String) : ByteArray
      {
         return §1"'§[param1];
      }
      
      public static function §@'§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§8!d§ = null;
         for(_loc2_ in param1)
         {
            if(!§,!Q§[_loc2_])
            {
               _loc3_ = new §8!d§(param1[_loc2_],_loc2_);
               §"D§.log("Initializing cutScene: " + _loc2_);
               §,!Q§[_loc2_] = _loc3_;
               if(§+!v§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§]!i§ = §8!d§.§&"4§;
               }
            }
         }
      }
      
      public static function §4"#§(param1:String, param2:§"!X§) : §8!d§
      {
         var _loc3_:§8!d§ = §,!Q§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §8!d§
      {
         var _loc2_:§8!d§ = §,!Q§[param1];
         if(_loc2_ && §+!v§.indexOf(param1))
         {
            _loc2_.§]!i§ = §8!d§.§&"4§;
         }
         return _loc2_;
      }
      
      public static function §'!x§(param1:String) : void
      {
         if(§+!v§.indexOf(param1) < 0)
         {
            §+!v§.push(param1);
         }
      }
   }
}
