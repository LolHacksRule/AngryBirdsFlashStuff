package §9z§
{
   import §"I§.§=!U§;
   import §6_§.§,!>§;
   import §`6§.§6!x§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §^!"§
   {
      
      private static var §5f§:Array = [];
      
      private static var §<"1§:§6!x§ = new §6!x§();
      
      private static var §`&§:Dictionary = new Dictionary();
       
      
      public function §^!"§()
      {
         super();
      }
      
      public static function §>!S§(param1:String, param2:ByteArray) : void
      {
         §<"1§[param1] = param2;
      }
      
      public static function §&O§(param1:String) : ByteArray
      {
         return §<"1§[param1];
      }
      
      public static function §6"5§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§1!$§ = null;
         for(_loc2_ in param1)
         {
            if(!§`&§[_loc2_])
            {
               _loc3_ = new §1!$§(param1[_loc2_],_loc2_);
               §=!U§.log("Initializing cutScene: " + _loc2_);
               §`&§[_loc2_] = _loc3_;
               if(§5f§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§ !n§ = §1!$§.§%z§;
               }
            }
         }
      }
      
      public static function §'D§(param1:String, param2:§,!>§) : §1!$§
      {
         var _loc3_:§1!$§ = §`&§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §1!$§
      {
         var _loc2_:§1!$§ = §`&§[param1];
         if(_loc2_ && §5f§.indexOf(param1))
         {
            _loc2_.§ !n§ = §1!$§.§%z§;
         }
         return _loc2_;
      }
      
      public static function §6v§(param1:String) : void
      {
         if(§5f§.indexOf(param1) < 0)
         {
            §5f§.push(param1);
         }
      }
   }
}
