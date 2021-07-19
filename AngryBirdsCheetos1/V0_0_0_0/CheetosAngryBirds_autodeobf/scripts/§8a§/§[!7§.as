package §8a§
{
   import §4W§.§!]§;
   import §@,§.§4h§;
   import flash.utils.Dictionary;
   
   public class §[!7§
   {
      
      private static var §!!9§:Array = [];
      
      private static var §!!U§:Dictionary = new Dictionary();
       
      
      public function §[!7§()
      {
         super();
      }
      
      public static function §^!B§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§7!$§ = null;
         for(_loc2_ in param1)
         {
            if(!§!!U§[_loc2_])
            {
               _loc3_ = new §7!$§(param1[_loc2_],_loc2_);
               §4h§.log("Initializing cutScene: " + _loc2_);
               §!!U§[_loc2_] = _loc3_;
               if(§!!9§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§'!B§ = §7!$§.§;!X§;
               }
            }
         }
      }
      
      public static function §]Q§(param1:String, param2:§!]§) : §7!$§
      {
         var _loc3_:§7!$§ = §!!U§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §%F§(param1:String) : §7!$§
      {
         var _loc2_:§7!$§ = §!!U§[param1];
         if(_loc2_ && §!!9§.indexOf(param1))
         {
            _loc2_.§'!B§ = §7!$§.§;!X§;
         }
         return _loc2_;
      }
      
      public static function §#!,§(param1:String) : void
      {
         if(§!!9§.indexOf(param1) < 0)
         {
            §!!9§.push(param1);
         }
      }
   }
}
