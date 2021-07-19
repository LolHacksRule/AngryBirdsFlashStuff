package §4!o§
{
   import § ! §.§5!x§;
   import §"n§.§<!Z§;
   import each.§!!'§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §+!N§
   {
      
      private static var §3U§:Array = [];
      
      private static var §%!'§:§<!Z§ = new §<!Z§();
      
      private static var §2!e§:Dictionary = new Dictionary();
       
      
      public function §+!N§()
      {
         super();
      }
      
      public static function §#L§(param1:String, param2:ByteArray) : void
      {
         §%!'§[param1] = param2;
      }
      
      public static function §3q§(param1:String) : ByteArray
      {
         return §%!'§[param1];
      }
      
      public static function §,!d§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§?!Z§ = null;
         for(_loc2_ in param1)
         {
            if(!§2!e§[_loc2_])
            {
               _loc3_ = new §?!Z§(param1[_loc2_],_loc2_);
               §!!'§.log("Initializing cutScene: " + _loc2_);
               §2!e§[_loc2_] = _loc3_;
               if(§3U§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§^R§ = §?!Z§.§extends§;
               }
            }
         }
      }
      
      public static function §2! §(param1:String, param2:§5!x§) : §?!Z§
      {
         var _loc3_:§?!Z§ = §2!e§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §?!Z§
      {
         var _loc2_:§?!Z§ = §2!e§[param1];
         if(_loc2_ && §3U§.indexOf(param1))
         {
            _loc2_.§^R§ = §?!Z§.§extends§;
         }
         return _loc2_;
      }
      
      public static function § t§(param1:String) : void
      {
         if(§3U§.indexOf(param1) < 0)
         {
            §3U§.push(param1);
         }
      }
   }
}
