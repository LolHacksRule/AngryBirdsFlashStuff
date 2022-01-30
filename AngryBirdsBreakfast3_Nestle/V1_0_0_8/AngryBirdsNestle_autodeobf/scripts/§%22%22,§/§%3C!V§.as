package §"",§
{
   import §%f§.§ n§;
   import §6`§.§2a§;
   import §;4§.§]!%§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §<!V§
   {
      
      private static var §?<§:Array = [];
      
      private static var §3!-§:§ n§ = new § n§();
      
      private static var §-!3§:Dictionary = new Dictionary();
       
      
      public function §<!V§()
      {
         super();
      }
      
      public static function §!!%§(param1:String, param2:ByteArray) : void
      {
         §3!-§[param1] = param2;
      }
      
      public static function §`!4§(param1:String) : ByteArray
      {
         return §3!-§[param1];
      }
      
      public static function §'!H§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§4" § = null;
         for(_loc2_ in param1)
         {
            if(!§-!3§[_loc2_])
            {
               _loc3_ = new §4" §(param1[_loc2_],_loc2_);
               §]!%§.log("Initializing cutScene: " + _loc2_);
               §-!3§[_loc2_] = _loc3_;
               if(§?<§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§,W§ = §4" §.§"t§;
               }
            }
         }
      }
      
      public static function §5d§(param1:String, param2:§2a§) : §4" §
      {
         var _loc3_:§4" § = §-!3§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §4" §
      {
         var _loc2_:§4" § = §-!3§[param1];
         if(_loc2_ && §?<§.indexOf(param1))
         {
            _loc2_.§,W§ = §4" §.§"t§;
         }
         return _loc2_;
      }
      
      public static function §1!o§(param1:String) : void
      {
         if(§?<§.indexOf(param1) < 0)
         {
            §?<§.push(param1);
         }
      }
   }
}
