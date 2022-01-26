package §="§
{
   import §%t§.§@!%§;
   import §9!2§.§'![§;
   import flash.utils.Dictionary;
   
   public class §`!L§
   {
      
      private static var §!J§:Array = [];
      
      private static var §const§:Dictionary = new Dictionary();
       
      
      public function §`!L§()
      {
         super();
      }
      
      public static function §[!>§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§8R§ = null;
         for(_loc2_ in param1)
         {
            if(!§const§[_loc2_])
            {
               _loc3_ = new §8R§(param1[_loc2_],_loc2_);
               §@!%§.log("Initializing cutScene: " + _loc2_);
               §const§[_loc2_] = _loc3_;
               if(§!J§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§^P§ = §8R§.§>!J§;
               }
            }
         }
      }
      
      public static function §0!B§(param1:String, param2:§'![§) : §8R§
      {
         var _loc3_:§8R§ = §const§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §5y§(param1:String) : §8R§
      {
         var _loc2_:§8R§ = §const§[param1];
         if(_loc2_ && §!J§.indexOf(param1))
         {
            _loc2_.§^P§ = §8R§.§>!J§;
         }
         return _loc2_;
      }
      
      public static function §1!§(param1:String) : void
      {
         if(§!J§.indexOf(param1) < 0)
         {
            §!J§.push(param1);
         }
      }
   }
}
