package §1!N§
{
   import §1!"§.§%9§;
   import §4!#§.§60§;
   import §4!#§.§[R§;
   import §4"$§.b2WeldJoint;
   import §?",§.§7"?§;
   import §?",§.§>!l§;
   
   public class §+!2§
   {
       
      
      public function §+!2§()
      {
         super();
      }
      
      public static function §"D§(param1:Vector.<§"!k§>, param2:§[R§) : void
      {
         var _loc4_:§"!k§ = null;
         var _loc5_:§"!k§ = null;
         if(param1.length < 2)
         {
            return;
         }
         var _loc3_:Boolean = true;
         for each(_loc4_ in param1)
         {
            for each(_loc5_ in param1)
            {
               if(§0!B§(_loc4_,_loc5_,param2))
               {
                  if(param1.length == 2 || §%9§.§3k§(_loc4_.getObject().getBody(),_loc5_.getObject().getBody()).size.length > 0)
                  {
                     param2.§6$§(§>!l§.§34§,_loc4_.getObject() as §60§,_loc5_.getObject() as §60§);
                     _loc3_ = false;
                  }
               }
            }
         }
         if(_loc3_)
         {
            §;%§(param1,param2);
         }
      }
      
      private static function §0!B§(param1:§"!k§, param2:§"!k§, param3:§[R§) : Boolean
      {
         if(param1 == param2)
         {
            return false;
         }
         if(!(param1.getObject() is §60§) || !(param2.getObject() is §60§))
         {
            return false;
         }
         return !param3.§2f§(param1.getObject() as §60§,param2.getObject() as §60§);
      }
      
      public static function §;%§(param1:Vector.<§"!k§>, param2:§[R§) : void
      {
         var _loc3_:§"!k§ = null;
         for each(_loc3_ in param1)
         {
            param2.§<!1§(_loc3_.getObject() as §60§);
         }
      }
      
      public static function §#!C§(param1:§60§, param2:§[R§) : void
      {
         var _loc4_:§7"?§ = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:Vector.<§7"?§> = param2.§"#§(param1);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§,#§ is b2WeldJoint)
            {
               param2.§<!f§(_loc4_);
            }
         }
      }
      
      public static function §#!I§(param1:§"!k§, param2:§"!k§, param3:§[R§) : void
      {
         var _loc5_:§7"?§ = null;
         var _loc6_:§60§ = null;
         var _loc7_:§60§ = null;
         var _loc8_:§60§ = null;
         var _loc4_:Vector.<§7"?§> = param3.§"#§(param1.getObject() as §60§);
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = param3.getObject(_loc5_.index1 + 1);
            _loc7_ = param3.getObject(_loc5_.index2 + 1);
            _loc8_ = _loc6_ == param1.getObject() ? _loc7_ : _loc6_;
            param3.§6$§(§>!l§.§34§,param2.getObject() as §60§,_loc8_);
         }
      }
   }
}
