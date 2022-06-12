package §%%§
{
   import §1'§.§=!Q§;
   import §1'§.§`!J§;
   import §8!k§.b2WeldJoint;
   import §?""§.§%#§;
   import §]r§.§2"%§;
   import §]r§.§9!R§;
   
   public class §=!K§
   {
       
      
      public function §=!K§()
      {
         super();
      }
      
      public static function §3!u§(param1:Vector.<§7!O§>, param2:§2"%§) : void
      {
         var _loc4_:§7!O§ = null;
         var _loc5_:§7!O§ = null;
         if(param1.length < 2)
         {
            return;
         }
         var _loc3_:Boolean = true;
         for each(_loc4_ in param1)
         {
            for each(_loc5_ in param1)
            {
               if(§`r§(_loc4_,_loc5_,param2))
               {
                  if(param1.length == 2 || §%#§.§^!D§(_loc4_.getObject().getBody(),_loc5_.getObject().getBody()).size.length > 0)
                  {
                     param2.§,!H§(§`!J§.§]4§,_loc4_.getObject() as §9!R§,_loc5_.getObject() as §9!R§);
                     _loc3_ = false;
                  }
               }
            }
         }
         if(_loc3_)
         {
            §#"6§(param1,param2);
         }
      }
      
      private static function §`r§(param1:§7!O§, param2:§7!O§, param3:§2"%§) : Boolean
      {
         if(param1 == param2)
         {
            return false;
         }
         if(!(param1.getObject() is §9!R§) || !(param2.getObject() is §9!R§))
         {
            return false;
         }
         return !param3.§[!>§(param1.getObject() as §9!R§,param2.getObject() as §9!R§);
      }
      
      public static function §#"6§(param1:Vector.<§7!O§>, param2:§2"%§) : void
      {
         var _loc3_:§7!O§ = null;
         for each(_loc3_ in param1)
         {
            param2.§<!§(_loc3_.getObject() as §9!R§);
         }
      }
      
      public static function §'!L§(param1:§9!R§, param2:§2"%§) : void
      {
         var _loc4_:§=!Q§ = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:Vector.<§=!Q§> = param2.§6!m§(param1);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§-4§ is b2WeldJoint)
            {
               param2.§4^§(_loc4_);
            }
         }
      }
      
      public static function §"x§(param1:§7!O§, param2:§7!O§, param3:§2"%§) : void
      {
         var _loc5_:§=!Q§ = null;
         var _loc6_:§9!R§ = null;
         var _loc7_:§9!R§ = null;
         var _loc8_:§9!R§ = null;
         var _loc4_:Vector.<§=!Q§> = param3.§6!m§(param1.getObject() as §9!R§);
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = param3.getObject(_loc5_.index1 + 1);
            _loc7_ = param3.getObject(_loc5_.index2 + 1);
            _loc8_ = _loc6_ == param1.getObject() ? _loc7_ : _loc6_;
            param3.§,!H§(§`!J§.§]4§,param2.getObject() as §9!R§,_loc8_);
         }
      }
   }
}
