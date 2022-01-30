package §?^§
{
   import §%!I§.§ C§;
   import §%!I§.§3g§;
   import §7!&§.§!o§;
   import §="§.§="-§;
   import §="§.§`T§;
   import §^!2§.b2WeldJoint;
   
   public class §8"$§
   {
       
      
      public function §8"$§()
      {
         super();
      }
      
      public static function §@g§(param1:Vector.<§0Q§>, param2:§="-§) : void
      {
         var _loc4_:§0Q§ = null;
         var _loc5_:§0Q§ = null;
         if(param1.length < 2)
         {
            return;
         }
         var _loc3_:Boolean = true;
         for each(_loc4_ in param1)
         {
            for each(_loc5_ in param1)
            {
               if(§6!i§(_loc4_,_loc5_,param2))
               {
                  if(param1.length == 2 || §!o§.§-!v§(_loc4_.getObject().getBody(),_loc5_.getObject().getBody()).size.length > 0)
                  {
                     param2.§<!§(§ C§.§7!t§,_loc4_.getObject() as §`T§,_loc5_.getObject() as §`T§);
                     _loc3_ = false;
                  }
               }
            }
         }
         if(_loc3_)
         {
            § !#§(param1,param2);
         }
      }
      
      private static function §6!i§(param1:§0Q§, param2:§0Q§, param3:§="-§) : Boolean
      {
         if(param1 == param2)
         {
            return false;
         }
         if(!(param1.getObject() is §`T§) || !(param2.getObject() is §`T§))
         {
            return false;
         }
         return !param3.§9!R§(param1.getObject() as §`T§,param2.getObject() as §`T§);
      }
      
      public static function § !#§(param1:Vector.<§0Q§>, param2:§="-§) : void
      {
         var _loc3_:§0Q§ = null;
         for each(_loc3_ in param1)
         {
            param2.§-!-§(_loc3_.getObject() as §`T§);
         }
      }
      
      public static function §'=§(param1:§`T§, param2:§="-§) : void
      {
         var _loc4_:§3g§ = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:Vector.<§3g§> = param2.§9" §(param1);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§5!?§ is b2WeldJoint)
            {
               param2.§?M§(_loc4_);
            }
         }
      }
      
      public static function §>!G§(param1:§0Q§, param2:§0Q§, param3:§="-§) : void
      {
         var _loc5_:§3g§ = null;
         var _loc6_:§`T§ = null;
         var _loc7_:§`T§ = null;
         var _loc8_:§`T§ = null;
         var _loc4_:Vector.<§3g§> = param3.§9" §(param1.getObject() as §`T§);
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = param3.getObject(_loc5_.index1 + 1);
            _loc7_ = param3.getObject(_loc5_.index2 + 1);
            _loc8_ = _loc6_ == param1.getObject() ? _loc7_ : _loc6_;
            param3.§<!§(§ C§.§7!t§,param2.getObject() as §`T§,_loc8_);
         }
      }
   }
}
