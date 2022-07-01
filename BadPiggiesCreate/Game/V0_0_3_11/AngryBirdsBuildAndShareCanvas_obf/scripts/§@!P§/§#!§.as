package §@!P§
{
   import § ""§.§%,§;
   import § ""§.§6!u§;
   import § q§.b2WeldJoint;
   import §<!p§.§ !'§;
   import §]!!§.§"X§;
   import §]!!§.§^s§;
   
   public class §#!§
   {
       
      
      public function §#!§()
      {
         super();
      }
      
      public static function §@!0§(param1:Vector.<§?"%§>, param2:§6!u§) : void
      {
         var _loc4_:§?"%§ = null;
         var _loc5_:§?"%§ = null;
         if(param1.length < 2)
         {
            return;
         }
         var _loc3_:Boolean = true;
         for each(_loc4_ in param1)
         {
            for each(_loc5_ in param1)
            {
               if(§+!,§(_loc4_,_loc5_,param2))
               {
                  if(param1.length == 2 || § !'§.§]!1§(_loc4_.getObject().getBody(),_loc5_.getObject().getBody()).size.length > 0)
                  {
                     param2.§`!^§(§^s§.§'k§,_loc4_.getObject() as §%,§,_loc5_.getObject() as §%,§);
                     _loc3_ = false;
                  }
               }
            }
         }
         if(_loc3_)
         {
            §+!A§(param1,param2);
         }
      }
      
      private static function §+!,§(param1:§?"%§, param2:§?"%§, param3:§6!u§) : Boolean
      {
         if(param1 == param2)
         {
            return false;
         }
         if(!(param1.getObject() is §%,§) || !(param2.getObject() is §%,§))
         {
            return false;
         }
         return !param3.set(param1.getObject() as §%,§,param2.getObject() as §%,§);
      }
      
      public static function §+!A§(param1:Vector.<§?"%§>, param2:§6!u§) : void
      {
         var _loc3_:§?"%§ = null;
         for each(_loc3_ in param1)
         {
            param2.§4!S§(_loc3_.getObject() as §%,§);
         }
      }
      
      public static function §<!'§(param1:§%,§, param2:§6!u§) : void
      {
         var _loc4_:§"X§ = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:Vector.<§"X§> = param2.§6!S§(param1);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§@a§ is b2WeldJoint)
            {
               param2.§set §(_loc4_);
            }
         }
      }
      
      public static function §&O§(param1:§?"%§, param2:§?"%§, param3:§6!u§) : void
      {
         var _loc5_:§"X§ = null;
         var _loc6_:§%,§ = null;
         var _loc7_:§%,§ = null;
         var _loc8_:§%,§ = null;
         var _loc4_:Vector.<§"X§> = param3.§6!S§(param1.getObject() as §%,§);
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = param3.getObject(_loc5_.index1 + 1);
            _loc7_ = param3.getObject(_loc5_.index2 + 1);
            _loc8_ = _loc6_ == param1.getObject() ? _loc7_ : _loc6_;
            param3.§`!^§(§^s§.§'k§,param2.getObject() as §%,§,_loc8_);
         }
      }
   }
}
