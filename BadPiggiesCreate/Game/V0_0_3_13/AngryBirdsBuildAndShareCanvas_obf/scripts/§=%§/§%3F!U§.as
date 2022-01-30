package §=%§
{
   import §%!W§.§2G§;
   import §0I§.§5!%§;
   import §0I§.§`!m§;
   import §?"&§.§"!q§;
   import §?"&§.§5b§;
   import §^%§.b2WeldJoint;
   
   public class §?!U§
   {
       
      
      public function §?!U§()
      {
         super();
      }
      
      public static function §3%§(param1:Vector.<§<A§>, param2:§5b§) : void
      {
         var _loc4_:§<A§ = null;
         var _loc5_:§<A§ = null;
         if(param1.length < 2)
         {
            return;
         }
         var _loc3_:Boolean = true;
         for each(_loc4_ in param1)
         {
            for each(_loc5_ in param1)
            {
               if(§6!1§(_loc4_,_loc5_,param2))
               {
                  if(param1.length == 2 || §2G§.§5",§(_loc4_.getObject().getBody(),_loc5_.getObject().getBody()).size.length > 0)
                  {
                     param2.§3!k§(§5!%§.§@"2§,_loc4_.getObject() as §"!q§,_loc5_.getObject() as §"!q§);
                     _loc3_ = false;
                  }
               }
            }
         }
         if(_loc3_)
         {
            §%!d§(param1,param2);
         }
      }
      
      private static function §6!1§(param1:§<A§, param2:§<A§, param3:§5b§) : Boolean
      {
         if(param1 == param2)
         {
            return false;
         }
         if(!(param1.getObject() is §"!q§) || !(param2.getObject() is §"!q§))
         {
            return false;
         }
         return !param3.§^!E§(param1.getObject() as §"!q§,param2.getObject() as §"!q§);
      }
      
      public static function §%!d§(param1:Vector.<§<A§>, param2:§5b§) : void
      {
         var _loc3_:§<A§ = null;
         for each(_loc3_ in param1)
         {
            param2.§"!?§(_loc3_.getObject() as §"!q§);
         }
      }
      
      public static function §5!q§(param1:§"!q§, param2:§5b§) : void
      {
         var _loc4_:§`!m§ = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:Vector.<§`!m§> = param2.§`!r§(param1);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§ i§ is b2WeldJoint)
            {
               param2.§=!K§(_loc4_);
            }
         }
      }
      
      public static function §%y§(param1:§<A§, param2:§<A§, param3:§5b§) : void
      {
         var _loc5_:§`!m§ = null;
         var _loc6_:§"!q§ = null;
         var _loc7_:§"!q§ = null;
         var _loc8_:§"!q§ = null;
         var _loc4_:Vector.<§`!m§> = param3.§`!r§(param1.getObject() as §"!q§);
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = param3.getObject(_loc5_.index1 + 1);
            _loc7_ = param3.getObject(_loc5_.index2 + 1);
            _loc8_ = _loc6_ == param1.getObject() ? _loc7_ : _loc6_;
            param3.§3!k§(§5!%§.§@"2§,param2.getObject() as §"!q§,_loc8_);
         }
      }
   }
}
