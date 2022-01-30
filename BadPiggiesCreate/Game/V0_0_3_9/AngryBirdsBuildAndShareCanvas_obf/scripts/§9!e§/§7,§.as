package §9!e§
{
   import §;!<§.§7!f§;
   import §@!;§.§&F§;
   import flash.utils.Dictionary;
   
   public class §7,§
   {
      
      private static var §7-§:Array = [];
      
      private static var §2",§:Dictionary = new Dictionary();
       
      
      public function §7,§()
      {
         super();
      }
      
      public static function §#!w§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§%w§ = null;
         for(_loc2_ in param1)
         {
            if(!§2",§[_loc2_])
            {
               _loc3_ = new §%w§(param1[_loc2_],_loc2_);
               §&F§.log("Initializing cutScene: " + _loc2_);
               §2",§[_loc2_] = _loc3_;
               if(§7-§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§5!D§ = §%w§.§&h§;
               }
            }
         }
      }
      
      public static function §]!<§(param1:String, param2:§7!f§) : §%w§
      {
         var _loc3_:§%w§ = §2",§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §>1§(param1:String) : §%w§
      {
         var _loc2_:§%w§ = §2",§[param1];
         if(_loc2_ && §7-§.indexOf(param1))
         {
            _loc2_.§5!D§ = §%w§.§&h§;
         }
         return _loc2_;
      }
      
      public static function §!u§(param1:String) : void
      {
         if(§7-§.indexOf(param1) < 0)
         {
            §7-§.push(param1);
         }
      }
   }
}
