package §8%§
{
   import §'+§.§1u§;
   import §9`§.§#U§;
   import flash.utils.Dictionary;
   
   public class §[!7§
   {
      
      private static var §?<§:Array = [];
      
      private static var §6!_§:Dictionary = new Dictionary();
       
      
      public function §[!7§()
      {
         super();
      }
      
      public static function §87§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§3!X§ = null;
         for(_loc2_ in param1)
         {
            if(!§6!_§[_loc2_])
            {
               _loc3_ = new §3!X§(param1[_loc2_],_loc2_);
               §1u§.log("Initializing cutScene: " + _loc2_);
               §6!_§[_loc2_] = _loc3_;
               if(§?<§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§2O§ = §3!X§.§]!<§;
               }
            }
         }
      }
      
      public static function §@!=§(param1:String, param2:§#U§) : §3!X§
      {
         var _loc3_:§3!X§ = §6!_§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §=w§(param1:String) : §3!X§
      {
         var _loc2_:§3!X§ = §6!_§[param1];
         if(_loc2_ && §?<§.indexOf(param1))
         {
            _loc2_.§2O§ = §3!X§.§]!<§;
         }
         return _loc2_;
      }
      
      public static function §>L§(param1:String) : void
      {
         if(§?<§.indexOf(param1) < 0)
         {
            §?<§.push(param1);
         }
      }
   }
}
