package §%%§
{
   import §&"5§.§7!P§;
   import §=!M§.§9!P§;
   import flash.utils.Dictionary;
   
   public class §5!a§
   {
      
      private static var §`A§:Array = [];
      
      private static var §]W§:Dictionary = new Dictionary();
       
      
      public function §5!a§()
      {
         super();
      }
      
      public static function §'!5§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§6!_§ = null;
         for(_loc2_ in param1)
         {
            if(!§]W§[_loc2_])
            {
               _loc3_ = new §6!_§(param1[_loc2_],_loc2_);
               §9!P§.log("Initializing cutScene: " + _loc2_);
               §]W§[_loc2_] = _loc3_;
               if(§`A§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§^v§ = §6!_§.§0!Q§;
               }
            }
         }
      }
      
      public static function §7!x§(param1:String, param2:§7!P§) : §6!_§
      {
         var _loc3_:§6!_§ = §]W§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §3!2§(param1:String) : §6!_§
      {
         var _loc2_:§6!_§ = §]W§[param1];
         if(_loc2_ && §`A§.indexOf(param1))
         {
            _loc2_.§^v§ = §6!_§.§0!Q§;
         }
         return _loc2_;
      }
      
      public static function §;t§(param1:String) : void
      {
         if(§`A§.indexOf(param1) < 0)
         {
            §`A§.push(param1);
         }
      }
   }
}
