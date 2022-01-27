package §`!`§
{
   import §4u§.§5!t§;
   import §9!v§.§6a§;
   import §`!w§.§^!$§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §-"B§
   {
      
      private static var §6B§:Array = [];
      
      private static var §1!?§:§5!t§ = new §5!t§();
      
      private static var §,"#§:Dictionary = new Dictionary();
       
      
      public function §-"B§()
      {
         super();
      }
      
      public static function §6!_§(param1:String, param2:ByteArray) : void
      {
         §1!?§[param1] = param2;
      }
      
      public static function §5!9§(param1:String) : ByteArray
      {
         return §1!?§[param1];
      }
      
      public static function §'!Z§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§9"G§ = null;
         for(_loc2_ in param1)
         {
            if(!§,"#§[_loc2_])
            {
               _loc3_ = new §9"G§(param1[_loc2_],_loc2_);
               §^!$§.log("Initializing cutScene: " + _loc2_);
               §,"#§[_loc2_] = _loc3_;
               if(§6B§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§?!u§ = §9"G§.§7"$§;
               }
            }
         }
      }
      
      public static function §`!k§(param1:String, param2:§6a§) : §9"G§
      {
         var _loc3_:§9"G§ = §,"#§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §9"G§
      {
         var _loc2_:§9"G§ = §,"#§[param1];
         if(_loc2_ && §6B§.indexOf(param1))
         {
            _loc2_.§?!u§ = §9"G§.§7"$§;
         }
         return _loc2_;
      }
      
      public static function §]!8§(param1:String) : void
      {
         if(§6B§.indexOf(param1) < 0)
         {
            §6B§.push(param1);
         }
      }
   }
}
