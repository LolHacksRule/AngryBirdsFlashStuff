package §7r§
{
   import § !V§.b2WeldJoint;
   import §+!o§.§?"-§;
   import §+!o§.§]"5§;
   import §3"5§.§ !,§;
   import §3"5§.§6O§;
   import §6" §.§&l§;
   
   public class §,"!§
   {
       
      
      public function §,"!§()
      {
         super();
      }
      
      public static function §@!u§(param1:Vector.<§=q§>, param2:§?"-§) : void
      {
         var _loc4_:§=q§ = null;
         var _loc5_:§=q§ = null;
         if(param1.length < 2)
         {
            return;
         }
         var _loc3_:Boolean = true;
         for each(_loc4_ in param1)
         {
            for each(_loc5_ in param1)
            {
               if(§"!O§(_loc4_,_loc5_,param2))
               {
                  if(param1.length == 2 || §&l§.§5k§(_loc4_.getObject().getBody(),_loc5_.getObject().getBody()).size.length > 0)
                  {
                     param2.§8!A§(§6O§.§+k§,_loc4_.getObject() as §]"5§,_loc5_.getObject() as §]"5§);
                     _loc3_ = false;
                  }
               }
            }
         }
         if(_loc3_)
         {
            §4!,§(param1,param2);
         }
      }
      
      private static function §"!O§(param1:§=q§, param2:§=q§, param3:§?"-§) : Boolean
      {
         if(param1 == param2)
         {
            return false;
         }
         if(!(param1.getObject() is §]"5§) || !(param2.getObject() is §]"5§))
         {
            return false;
         }
         return !param3.§-!Z§(param1.getObject() as §]"5§,param2.getObject() as §]"5§);
      }
      
      public static function §4!,§(param1:Vector.<§=q§>, param2:§?"-§) : void
      {
         var _loc3_:§=q§ = null;
         for each(_loc3_ in param1)
         {
            param2.§>O§(_loc3_.getObject() as §]"5§);
         }
      }
      
      public static function §<c§(param1:§]"5§, param2:§?"-§) : void
      {
         var _loc4_:§ !,§ = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:Vector.<§ !,§> = param2.§]c§(param1);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§5""§ is b2WeldJoint)
            {
               param2.§%'§(_loc4_);
            }
         }
      }
      
      public static function §%!c§(param1:§=q§, param2:§=q§, param3:§?"-§) : void
      {
         var _loc5_:§ !,§ = null;
         var _loc6_:§]"5§ = null;
         var _loc7_:§]"5§ = null;
         var _loc8_:§]"5§ = null;
         var _loc4_:Vector.<§ !,§> = param3.§]c§(param1.getObject() as §]"5§);
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = param3.getObject(_loc5_.index1 + 1);
            _loc7_ = param3.getObject(_loc5_.index2 + 1);
            _loc8_ = _loc6_ == param1.getObject() ? _loc7_ : _loc6_;
            param3.§8!A§(§6O§.§+k§,param2.getObject() as §]"5§,_loc8_);
         }
      }
   }
}
