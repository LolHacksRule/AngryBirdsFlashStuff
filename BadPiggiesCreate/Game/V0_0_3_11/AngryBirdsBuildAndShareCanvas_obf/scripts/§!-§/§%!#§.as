package §!-§
{
   import §;X§.§ do§;
   import §[_§.§2!B§;
   import flash.utils.Dictionary;
   
   public class §%!#§
   {
      
      private static var §5D§:Array = [];
      
      private static var §<@§:Dictionary = new Dictionary();
       
      
      public function §%!#§()
      {
         super();
      }
      
      public static function §]t§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§1!P§ = null;
         for(_loc2_ in param1)
         {
            if(!§<@§[_loc2_])
            {
               _loc3_ = new §1!P§(param1[_loc2_],_loc2_);
               § do§.log("Initializing cutScene: " + _loc2_);
               §<@§[_loc2_] = _loc3_;
               if(§5D§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§8K§ = §1!P§.§5!L§;
               }
            }
         }
      }
      
      public static function §`e§(param1:String, param2:§2!B§) : §1!P§
      {
         var _loc3_:§1!P§ = §<@§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §&h§(param1:String) : §1!P§
      {
         var _loc2_:§1!P§ = §<@§[param1];
         if(_loc2_ && §5D§.indexOf(param1))
         {
            _loc2_.§8K§ = §1!P§.§5!L§;
         }
         return _loc2_;
      }
      
      public static function §'!>§(param1:String) : void
      {
         if(§5D§.indexOf(param1) < 0)
         {
            §5D§.push(param1);
         }
      }
   }
}
