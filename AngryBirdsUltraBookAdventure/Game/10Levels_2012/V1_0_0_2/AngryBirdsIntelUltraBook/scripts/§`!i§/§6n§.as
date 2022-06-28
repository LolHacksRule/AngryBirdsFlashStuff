package §`!i§
{
   import §-w§.§,Q§;
   import §^_§.§!>§;
   import flash.utils.Dictionary;
   
   public class §6n§
   {
      
      private static var §[a§:Array = [];
      
      private static var § 5§:Dictionary = new Dictionary();
       
      
      public function §6n§()
      {
         super();
      }
      
      public static function §33§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§,S§ = null;
         for(_loc2_ in param1)
         {
            if(!§ 5§[_loc2_])
            {
               _loc3_ = new §,S§(param1[_loc2_],_loc2_);
               §!>§.log("Initializing cutScene: " + _loc2_);
               § 5§[_loc2_] = _loc3_;
               if(§[a§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§+!'§ = §,S§.§,-§;
               }
            }
         }
      }
      
      public static function §%T§(param1:String, param2:§,Q§) : §,S§
      {
         var _loc3_:§,S§ = § 5§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §['§(param1:String) : §,S§
      {
         var _loc2_:§,S§ = § 5§[param1];
         if(_loc2_ && §[a§.indexOf(param1))
         {
            _loc2_.§+!'§ = §,S§.§,-§;
         }
         return _loc2_;
      }
      
      public static function §1!#§(param1:String) : void
      {
         if(§[a§.indexOf(param1) < 0)
         {
            §[a§.push(param1);
         }
      }
   }
}
