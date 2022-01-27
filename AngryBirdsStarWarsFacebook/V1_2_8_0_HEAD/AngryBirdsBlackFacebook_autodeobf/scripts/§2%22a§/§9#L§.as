package §2"a§
{
   import §1!i§.§,#_§;
   import §5t§.Log;
   import §7!F§.§7§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §9#L§
   {
      
      private static var §3#`§:Array = [];
      
      private static var §+"o§:§,#_§ = new §,#_§();
      
      private static var §;`§:Dictionary = new Dictionary();
       
      
      public function §9#L§()
      {
         super();
      }
      
      public static function §7!g§(param1:String, param2:ByteArray) : void
      {
         §+"o§[param1] = param2;
      }
      
      public static function §0j§(param1:String) : ByteArray
      {
         return §+"o§[param1];
      }
      
      public static function §0"U§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§9E§ = null;
         for(_loc2_ in param1)
         {
            if(!§;`§[_loc2_])
            {
               _loc3_ = new §9E§(param1[_loc2_],_loc2_);
               Log.log("Initializing cutScene: " + _loc2_);
               §;`§[_loc2_] = _loc3_;
               if(§3#`§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§""Y§ = §9E§.§2!T§;
               }
            }
         }
      }
      
      public static function §1q§(param1:String, param2:§7#5§) : §9E§
      {
         var _loc3_:§9E§ = §;`§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §9E§
      {
         var _loc2_:§9E§ = §;`§[param1];
         if(_loc2_ && §3#`§.indexOf(param1))
         {
            _loc2_.§""Y§ = §9E§.§2!T§;
         }
         return _loc2_;
      }
      
      public static function §&"X§(param1:String) : void
      {
         if(§3#`§.indexOf(param1) < 0)
         {
            §3#`§.push(param1);
         }
      }
   }
}
