package §@!L§
{
   import §"x§.§-8§;
   import §^!Y§.§'R§;
   import flash.utils.Dictionary;
   
   public class §-`§
   {
      
      private static var §`k§:Array = [];
      
      private static var §7A§:Dictionary = new Dictionary();
       
      
      public function §-`§()
      {
         super();
      }
      
      public static function §0r§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§#L§ = null;
         for(_loc2_ in param1)
         {
            if(!§7A§[_loc2_])
            {
               _loc3_ = new §#L§(param1[_loc2_],_loc2_);
               §-8§.log("Initializing cutScene: " + _loc2_);
               §7A§[_loc2_] = _loc3_;
               if(§`k§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§,X§ = §#L§.§!!J§;
               }
            }
         }
      }
      
      public static function §[!,§(param1:String, param2:§'R§) : §#L§
      {
         var _loc3_:§#L§ = §7A§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §`!q§(param1:String) : §#L§
      {
         var _loc2_:§#L§ = §7A§[param1];
         if(_loc2_ && §`k§.indexOf(param1))
         {
            _loc2_.§,X§ = §#L§.§!!J§;
         }
         return _loc2_;
      }
      
      public static function §+C§(param1:String) : void
      {
         if(§`k§.indexOf(param1) < 0)
         {
            §`k§.push(param1);
         }
      }
   }
}
