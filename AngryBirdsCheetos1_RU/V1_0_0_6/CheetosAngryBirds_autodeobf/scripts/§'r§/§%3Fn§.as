package §'r§
{
   import §"k§.§02§;
   import §'D§.§8e§;
   import flash.utils.Dictionary;
   
   public class §?n§
   {
      
      private static var §1!#§:Array = [];
      
      private static var §7!%§:Dictionary = new Dictionary();
       
      
      public function §?n§()
      {
         super();
      }
      
      public static function §!I§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§<!"§ = null;
         for(_loc2_ in param1)
         {
            if(!§7!%§[_loc2_])
            {
               _loc3_ = new §<!"§(param1[_loc2_],_loc2_);
               §8e§.log("Initializing cutScene: " + _loc2_);
               §7!%§[_loc2_] = _loc3_;
               if(§1!#§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§8!_§ = §<!"§.§,^§;
               }
            }
         }
      }
      
      public static function §^!8§(param1:String, param2:§02§) : §<!"§
      {
         var _loc3_:§<!"§ = §7!%§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §`M§(param1:String) : §<!"§
      {
         var _loc2_:§<!"§ = §7!%§[param1];
         if(_loc2_ && §1!#§.indexOf(param1))
         {
            _loc2_.§8!_§ = §<!"§.§,^§;
         }
         return _loc2_;
      }
      
      public static function §%!9§(param1:String) : void
      {
         if(§1!#§.indexOf(param1) < 0)
         {
            §1!#§.push(param1);
         }
      }
   }
}
