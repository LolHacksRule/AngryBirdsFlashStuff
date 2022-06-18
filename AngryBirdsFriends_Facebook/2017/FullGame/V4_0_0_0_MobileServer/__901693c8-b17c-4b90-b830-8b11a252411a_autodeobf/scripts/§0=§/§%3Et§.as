package §0=§
{
   import §6V§.§&"g§;
   import §7!j§.§'0§;
   import §<"p§.§?!T§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §>t§
   {
      
      private static var §;#o§:Array = [];
      
      private static var §[!J§:§&"g§ = new §&"g§();
      
      private static var §%";§:Dictionary = new Dictionary();
       
      
      public function §>t§()
      {
         super();
      }
      
      public static function §`!c§(param1:String, param2:ByteArray) : void
      {
         §[!J§[param1] = param2;
      }
      
      public static function §7#u§(param1:String) : ByteArray
      {
         return §[!J§[param1];
      }
      
      public static function §67§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§+$=§ = null;
         for(_loc2_ in param1)
         {
            if(!§%";§[_loc2_])
            {
               _loc3_ = new §+$=§(param1[_loc2_],_loc2_);
               §?!T§.log("Initializing cutScene: " + _loc2_);
               §%";§[_loc2_] = _loc3_;
               if(§;#o§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.cutSceneType = §+$=§.§?<§;
               }
            }
         }
      }
      
      public static function §^#<§(param1:String, param2:§'0§) : §+$=§
      {
         var _loc3_:§+$=§ = §%";§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §+$=§
      {
         var _loc2_:§+$=§ = §%";§[param1];
         if(_loc2_ && §;#o§.indexOf(param1))
         {
            _loc2_.cutSceneType = §+$=§.§?<§;
         }
         return _loc2_;
      }
      
      public static function §6!N§(param1:String) : Boolean
      {
         return §;#o§.indexOf(param1) >= 0;
      }
      
      public static function §?"e§(param1:String) : void
      {
         if(§;#o§.indexOf(param1) < 0)
         {
            §;#o§.push(param1);
         }
      }
   }
}
