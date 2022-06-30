package §"!@§
{
   import §&!b§.§ c§;
   import §+!]§.§!,§;
   import flash.utils.Dictionary;
   
   public class §=!J§
   {
      
      private static var §"!H§:Array = [];
      
      private static var §+!P§:Dictionary = new Dictionary();
       
      
      public function §=!J§()
      {
         super();
      }
      
      public static function §3!b§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§ !1§ = null;
         for(_loc2_ in param1)
         {
            if(!§+!P§[_loc2_])
            {
               _loc3_ = new § !1§(param1[_loc2_],_loc2_);
               § c§.log("Initializing cutScene: " + _loc2_);
               §+!P§[_loc2_] = _loc3_;
               if(§"!H§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§+!0§ = § !1§.§`A§;
               }
            }
         }
      }
      
      public static function §`!"§(param1:String, param2:§!,§) : § !1§
      {
         var _loc3_:§ !1§ = §+!P§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §2$§(param1:String) : § !1§
      {
         var _loc2_:§ !1§ = §+!P§[param1];
         if(_loc2_ && §"!H§.indexOf(param1))
         {
            _loc2_.§+!0§ = § !1§.§`A§;
         }
         return _loc2_;
      }
      
      public static function §!!]§(param1:String) : void
      {
         if(§"!H§.indexOf(param1) < 0)
         {
            §"!H§.push(param1);
         }
      }
   }
}
