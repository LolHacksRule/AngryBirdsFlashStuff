package §<1§
{
   import §0!_§.§!!G§;
   import §8!$§.§?p§;
   import §`!s§.§4M§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §;#§
   {
      
      private static var §+2§:Array = [];
      
      private static var §3x§:§4M§ = new §4M§();
      
      private static var §'m§:Dictionary = new Dictionary();
       
      
      public function §;#§()
      {
         super();
      }
      
      public static function §3!R§(param1:String, param2:ByteArray) : void
      {
         §3x§[param1] = param2;
      }
      
      public static function §6;§(param1:String) : ByteArray
      {
         return §3x§[param1];
      }
      
      public static function §&d§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§[!"§ = null;
         for(_loc2_ in param1)
         {
            if(!§'m§[_loc2_])
            {
               _loc3_ = new §[!"§(param1[_loc2_],_loc2_);
               §?p§.log("Initializing cutScene: " + _loc2_);
               §'m§[_loc2_] = _loc3_;
               if(§+2§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§?!2§ = §[!"§.§;Y§;
               }
            }
         }
      }
      
      public static function §]"3§(param1:String, param2:§!!G§) : §[!"§
      {
         var _loc3_:§[!"§ = §'m§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §[!"§
      {
         var _loc2_:§[!"§ = §'m§[param1];
         if(_loc2_ && §+2§.indexOf(param1))
         {
            _loc2_.§?!2§ = §[!"§.§;Y§;
         }
         return _loc2_;
      }
      
      public static function §[?§(param1:String) : void
      {
         if(§+2§.indexOf(param1) < 0)
         {
            §+2§.push(param1);
         }
      }
   }
}
