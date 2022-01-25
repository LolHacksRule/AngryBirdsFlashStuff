package §]!]§
{
   import §0!_§.§!!G§;
   import §8!$§.§?p§;
   import §`!s§.§4M§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §<1§
   {
      
      private static var §;#§:Array = [];
      
      private static var §+2§:§4M§ = new §4M§();
      
      private static var §3x§:Dictionary = new Dictionary();
       
      
      public function §<1§()
      {
         super();
      }
      
      public static function §'m§(param1:String, param2:ByteArray) : void
      {
         §+2§[param1] = param2;
      }
      
      public static function §3!R§(param1:String) : ByteArray
      {
         return §+2§[param1];
      }
      
      public static function §6;§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§[?§ = null;
         for(_loc2_ in param1)
         {
            if(!§3x§[_loc2_])
            {
               _loc3_ = new §[?§(param1[_loc2_],_loc2_);
               §?p§.log("Initializing cutScene: " + _loc2_);
               §3x§[_loc2_] = _loc3_;
               if(§;#§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§@!u§ = §[?§.§9!5§;
               }
            }
         }
      }
      
      public static function §&d§(param1:String, param2:§!!G§) : §[?§
      {
         var _loc3_:§[?§ = §3x§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §[?§
      {
         var _loc2_:§[?§ = §3x§[param1];
         if(_loc2_ && §;#§.indexOf(param1))
         {
            _loc2_.§@!u§ = §[?§.§9!5§;
         }
         return _loc2_;
      }
      
      public static function §]"3§(param1:String) : void
      {
         if(§;#§.indexOf(param1) < 0)
         {
            §;#§.push(param1);
         }
      }
   }
}
