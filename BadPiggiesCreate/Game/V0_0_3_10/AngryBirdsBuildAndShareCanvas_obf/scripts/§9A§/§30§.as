package §9A§
{
   import §%t§.§-!5§;
   import §9!G§.§]!e§;
   import flash.utils.Dictionary;
   
   public class §30§
   {
      
      private static var §7!H§:Array = [];
      
      private static var §`!S§:Dictionary = new Dictionary();
       
      
      public function §30§()
      {
         super();
      }
      
      public static function §+[§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§^!<§ = null;
         for(_loc2_ in param1)
         {
            if(!§`!S§[_loc2_])
            {
               _loc3_ = new §^!<§(param1[_loc2_],_loc2_);
               §]!e§.log("Initializing cutScene: " + _loc2_);
               §`!S§[_loc2_] = _loc3_;
               if(§7!H§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§<!o§ = §^!<§.§+!5§;
               }
            }
         }
      }
      
      public static function §9g§(param1:String, param2:§-!5§) : §^!<§
      {
         var _loc3_:§^!<§ = §`!S§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §;U§(param1:String) : §^!<§
      {
         var _loc2_:§^!<§ = §`!S§[param1];
         if(_loc2_ && §7!H§.indexOf(param1))
         {
            _loc2_.§<!o§ = §^!<§.§+!5§;
         }
         return _loc2_;
      }
      
      public static function §^]§(param1:String) : void
      {
         if(§7!H§.indexOf(param1) < 0)
         {
            §7!H§.push(param1);
         }
      }
   }
}
