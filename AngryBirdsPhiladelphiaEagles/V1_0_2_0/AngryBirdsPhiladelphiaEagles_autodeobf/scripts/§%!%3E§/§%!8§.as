package §%!>§
{
   import §@V§.§`!5§;
   import §^'§.§ !C§;
   import flash.utils.Dictionary;
   
   public class §%!8§
   {
      
      private static var §8O§:Array = [];
      
      private static var §!'§:Dictionary = new Dictionary();
       
      
      public function §%!8§()
      {
         super();
      }
      
      public static function §0f§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§;n§ = null;
         for(_loc2_ in param1)
         {
            if(!§!'§[_loc2_])
            {
               _loc3_ = new §;n§(param1[_loc2_],_loc2_);
               §`!5§.log("Initializing cutScene: " + _loc2_);
               §!'§[_loc2_] = _loc3_;
               if(§8O§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§'!8§ = §;n§.§8!A§;
               }
            }
         }
      }
      
      public static function §9v§(param1:String, param2:§ !C§) : §;n§
      {
         var _loc3_:§;n§ = §!'§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §&T§(param1:String) : §;n§
      {
         var _loc2_:§;n§ = §!'§[param1];
         if(_loc2_ && §8O§.indexOf(param1))
         {
            _loc2_.§'!8§ = §;n§.§8!A§;
         }
         return _loc2_;
      }
      
      public static function §7D§(param1:String) : void
      {
         if(§8O§.indexOf(param1) < 0)
         {
            §8O§.push(param1);
         }
      }
   }
}
