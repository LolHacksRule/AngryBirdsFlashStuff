package §;$-§
{
   import §]!6§.§6Y§;
   import §`"8§.§34§;
   import §`7§.§0t§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §"!b§
   {
      
      private static var §]!_§:Array = [];
      
      private static var §8#0§:§0t§ = new §0t§();
      
      private static var §6K§:Dictionary = new Dictionary();
       
      
      public function §"!b§()
      {
         super();
      }
      
      public static function §-"z§(param1:String, param2:ByteArray) : void
      {
         §8#0§[param1] = param2;
      }
      
      public static function §6!;§(param1:String) : ByteArray
      {
         return §8#0§[param1];
      }
      
      public static function §9%§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§^#;§ = null;
         for(_loc2_ in param1)
         {
            if(!§6K§[_loc2_])
            {
               _loc3_ = new §^#;§(param1[_loc2_],_loc2_);
               §6Y§.log("Initializing cutScene: " + _loc2_);
               §6K§[_loc2_] = _loc3_;
               if(§]!_§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.cutSceneType = §^#;§.§0!R§;
               }
            }
         }
      }
      
      public static function §-"1§(param1:String, param2:§34§) : §^#;§
      {
         var _loc3_:§^#;§ = §6K§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §^#;§
      {
         var _loc2_:§^#;§ = §6K§[param1];
         if(_loc2_ && §]!_§.indexOf(param1))
         {
            _loc2_.cutSceneType = §^#;§.§0!R§;
         }
         return _loc2_;
      }
      
      public static function §;"#§(param1:String) : Boolean
      {
         return §]!_§.indexOf(param1) >= 0;
      }
      
      public static function §[#3§(param1:String) : void
      {
         if(§]!_§.indexOf(param1) < 0)
         {
            §]!_§.push(param1);
         }
      }
   }
}
