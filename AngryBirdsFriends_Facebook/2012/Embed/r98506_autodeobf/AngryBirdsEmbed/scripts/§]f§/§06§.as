package §]f§
{
   import §"a§.§>X§;
   import §-p§.§&2§;
   import flash.utils.Dictionary;
   
   public class §06§
   {
      
      private static var §-]§:Array = [];
      
      private static var §?B§:Dictionary = new Dictionary();
       
      
      public function §06§()
      {
         super();
      }
      
      public static function §3r§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§;,§ = null;
         for(_loc2_ in param1)
         {
            if(!§?B§[_loc2_])
            {
               _loc3_ = new §;,§(param1[_loc2_],_loc2_);
               §&2§.log("Initializing cutScene: " + _loc2_);
               §?B§[_loc2_] = _loc3_;
               if(§-]§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§%!9§ = §;,§.§+C§;
               }
            }
         }
      }
      
      public static function §]!#§(param1:String, param2:§>X§) : §;,§
      {
         var _loc3_:§;,§ = §?B§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §3A§(param1:String) : §;,§
      {
         var _loc2_:§;,§ = §?B§[param1];
         if(_loc2_ && §-]§.indexOf(param1))
         {
            _loc2_.§%!9§ = §;,§.§+C§;
         }
         return _loc2_;
      }
      
      public static function §6!,§(param1:String) : void
      {
         if(§-]§.indexOf(param1) < 0)
         {
            §-]§.push(param1);
         }
      }
   }
}
