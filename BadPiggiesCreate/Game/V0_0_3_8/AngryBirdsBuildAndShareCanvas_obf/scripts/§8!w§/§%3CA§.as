package §8!w§
{
   import § !V§.§7!P§;
   import §4u§.§<!L§;
   import flash.utils.Dictionary;
   
   public class §<A§
   {
      
      private static var §=!b§:Array = [];
      
      private static var §%V§:Dictionary = new Dictionary();
       
      
      public function §<A§()
      {
         super();
      }
      
      public static function §@!'§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§-G§ = null;
         for(_loc2_ in param1)
         {
            if(!§%V§[_loc2_])
            {
               _loc3_ = new §-G§(param1[_loc2_],_loc2_);
               §<!L§.log("Initializing cutScene: " + _loc2_);
               §%V§[_loc2_] = _loc3_;
               if(§=!b§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§>s§ = §-G§.§<!t§;
               }
            }
         }
      }
      
      public static function §`!$§(param1:String, param2:§7!P§) : §-G§
      {
         var _loc3_:§-G§ = §%V§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §]r§(param1:String) : §-G§
      {
         var _loc2_:§-G§ = §%V§[param1];
         if(_loc2_ && §=!b§.indexOf(param1))
         {
            _loc2_.§>s§ = §-G§.§<!t§;
         }
         return _loc2_;
      }
      
      public static function §>!M§(param1:String) : void
      {
         if(§=!b§.indexOf(param1) < 0)
         {
            §=!b§.push(param1);
         }
      }
   }
}
