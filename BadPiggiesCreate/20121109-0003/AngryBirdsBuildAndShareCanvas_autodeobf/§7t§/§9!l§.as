package §7t§
{
   import §&!P§.§^!!§;
   import §&!P§.§``§;
   import §,!0§.b2WeldJoint;
   import §6!A§.§%l§;
   import §[!P§.§8!z§;
   import §[!P§.§@R§;
   
   public class §9!l§
   {
       
      
      public function §9!l§()
      {
         super();
      }
      
      public static function §6""§(param1:Vector.<§7a§>, param2:§^!!§) : void
      {
         var _loc4_:§7a§ = null;
         var _loc5_:§7a§ = null;
         if(param1.length < 2)
         {
            return;
         }
         var _loc3_:Boolean = true;
         for each(_loc4_ in param1)
         {
            for each(_loc5_ in param1)
            {
               if(§5!?§(_loc4_,_loc5_,param2))
               {
                  if(param1.length == 2 || §%l§.§ "-§(_loc4_.getObject().getBody(),_loc5_.getObject().getBody()).size.length > 0)
                  {
                     param2.§2"6§(§8!z§.§`,§,_loc4_.getObject() as §``§,_loc5_.getObject() as §``§);
                     _loc3_ = false;
                  }
               }
            }
         }
         if(_loc3_)
         {
            §;F§(param1,param2);
         }
      }
      
      private static function §5!?§(param1:§7a§, param2:§7a§, param3:§^!!§) : Boolean
      {
         if(param1 == param2)
         {
            return false;
         }
         if(!(param1.getObject() is §``§) || !(param2.getObject() is §``§))
         {
            return false;
         }
         return !param3.§8b§(param1.getObject() as §``§,param2.getObject() as §``§);
      }
      
      public static function §;F§(param1:Vector.<§7a§>, param2:§^!!§) : void
      {
         var _loc3_:§7a§ = null;
         for each(_loc3_ in param1)
         {
            param2.§=!&§(_loc3_.getObject() as §``§);
         }
      }
      
      public static function §5D§(param1:§``§, param2:§^!!§) : void
      {
         var _loc4_:§@R§ = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:Vector.<§@R§> = param2.§>!]§(param1);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§=!%§ is b2WeldJoint)
            {
               param2.§'K§(_loc4_);
            }
         }
      }
      
      public static function §%1§(param1:§7a§, param2:§7a§, param3:§^!!§) : void
      {
         var _loc5_:§@R§ = null;
         var _loc6_:§``§ = null;
         var _loc7_:§``§ = null;
         var _loc8_:§``§ = null;
         var _loc4_:Vector.<§@R§> = param3.§>!]§(param1.getObject() as §``§);
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = param3.getObject(_loc5_.index1 + 1);
            _loc7_ = param3.getObject(_loc5_.index2 + 1);
            _loc8_ = _loc6_ == param1.getObject() ? _loc7_ : _loc6_;
            param3.§2"6§(§8!z§.§`,§,param2.getObject() as §``§,_loc8_);
         }
      }
   }
}
