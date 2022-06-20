package §4!r§
{
   import §0!?§.§'!$§;
   import §?"<§.§<"!§;
   import flash.utils.Dictionary;
   
   public class §0!`§
   {
      
      private static var §]"5§:Array = [];
      
      private static var §6"7§:Dictionary = new Dictionary();
       
      
      public function §0!`§()
      {
         super();
      }
      
      public static function §5!g§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§@,§ = null;
         for(_loc2_ in param1)
         {
            if(!§6"7§[_loc2_])
            {
               _loc3_ = new §@,§(param1[_loc2_],_loc2_);
               §'!$§.log("Initializing cutScene: " + _loc2_);
               §6"7§[_loc2_] = _loc3_;
               if(§]"5§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§<,§ = §@,§.§^§;
               }
            }
         }
      }
      
      public static function §%y§(param1:String, param2:§<"!§) : §@,§
      {
         var _loc3_:§@,§ = §6"7§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §>z§(param1:String) : §@,§
      {
         var _loc2_:§@,§ = §6"7§[param1];
         if(_loc2_ && §]"5§.indexOf(param1))
         {
            _loc2_.§<,§ = §@,§.§^§;
         }
         return _loc2_;
      }
      
      public static function §"`§(param1:String) : void
      {
         if(§]"5§.indexOf(param1) < 0)
         {
            §]"5§.push(param1);
         }
      }
   }
}
