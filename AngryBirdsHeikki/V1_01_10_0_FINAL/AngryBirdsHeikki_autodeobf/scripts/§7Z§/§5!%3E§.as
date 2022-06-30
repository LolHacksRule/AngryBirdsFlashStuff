package §7Z§
{
   import §=!<§.§>a§;
   import §@R§.§4,§;
   import flash.utils.Dictionary;
   
   public class §5!>§
   {
      
      private static var §@=§:Array = [];
      
      private static var §=F§:Dictionary = new Dictionary();
       
      
      public function §5!>§()
      {
         super();
      }
      
      public static function §;!2§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§%!b§ = null;
         for(_loc2_ in param1)
         {
            if(!§=F§[_loc2_])
            {
               _loc3_ = new §%!b§(param1[_loc2_],_loc2_);
               §4,§.log("Initializing cutScene: " + _loc2_);
               §=F§[_loc2_] = _loc3_;
               if(§@=§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§#$§ = §%!b§.§#!"§;
               }
            }
         }
      }
      
      public static function §!!F§(param1:String, param2:§>a§) : §%!b§
      {
         var _loc3_:§%!b§ = §=F§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §4V§(param1:String) : §%!b§
      {
         var _loc2_:§%!b§ = §=F§[param1];
         if(_loc2_ && §@=§.indexOf(param1))
         {
            _loc2_.§#$§ = §%!b§.§#!"§;
         }
         return _loc2_;
      }
      
      public static function §3G§(param1:String) : void
      {
         if(§@=§.indexOf(param1) < 0)
         {
            §@=§.push(param1);
         }
      }
   }
}
