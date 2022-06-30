package §>X§
{
   import §0i§.§]_§;
   import §3!§.§-e§;
   import flash.utils.Dictionary;
   
   public class § !C§
   {
      
      private static var §=[§:Array = [];
      
      private static var §0!A§:Dictionary = new Dictionary();
       
      
      public function § !C§()
      {
         super();
      }
      
      public static function §4_§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§[7§ = null;
         for(_loc2_ in param1)
         {
            if(!§0!A§[_loc2_])
            {
               _loc3_ = new §[7§(param1[_loc2_],_loc2_);
               §]_§.log("Initializing cutScene: " + _loc2_);
               §0!A§[_loc2_] = _loc3_;
               if(§=[§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§3!4§ = §[7§.§!!>§;
               }
            }
         }
      }
      
      public static function §-!E§(param1:String, param2:§-e§) : §[7§
      {
         var _loc3_:§[7§ = §0!A§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §2N§(param1:String) : §[7§
      {
         var _loc2_:§[7§ = §0!A§[param1];
         if(_loc2_ && §=[§.indexOf(param1))
         {
            _loc2_.§3!4§ = §[7§.§!!>§;
         }
         return _loc2_;
      }
      
      public static function §8!P§(param1:String) : void
      {
         if(§=[§.indexOf(param1) < 0)
         {
            §=[§.push(param1);
         }
      }
   }
}
