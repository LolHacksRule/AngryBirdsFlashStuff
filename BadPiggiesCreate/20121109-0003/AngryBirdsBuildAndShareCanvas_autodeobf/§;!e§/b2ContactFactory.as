package §;!e§
{
   import §"J§.*;
   import §%4§.*;
   import §2k§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §[!y§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §9"6§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§9"6§ = param1;
         this.§3!h§();
      }
      
      b2internal function §&M§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§[!y§[param3][param4].createFcn = param1;
         this.§[!y§[param3][param4].destroyFcn = param2;
         this.§[!y§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§[!y§[param4][param3].createFcn = param1;
            this.§[!y§[param4][param3].destroyFcn = param2;
            this.§[!y§[param4][param3].primary = false;
         }
      }
      
      b2internal function §3!h§() : void
      {
         var _loc2_:int = 0;
         this.§[!y§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§1!v§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§1!v§)
         {
            this.§[!y§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§1!v§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§1!v§)
            {
               this.§[!y§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§&M§(b2CircleContact.§`!P§,b2CircleContact.§3!0§,b2Shape.§;n§,b2Shape.§;n§);
         this.§&M§(b2PolyAndCircleContact.§`!P§,b2PolyAndCircleContact.§3!0§,b2Shape.§<!D§,b2Shape.§;n§);
         this.§&M§(b2PolygonContact.§`!P§,b2PolygonContact.§3!0§,b2Shape.§<!D§,b2Shape.§<!D§);
         this.§&M§(b2EdgeAndCircleContact.§`!P§,b2EdgeAndCircleContact.§3!0§,b2Shape.§=!E§,b2Shape.§;n§);
         this.§&M§(b2PolyAndEdgeContact.§`!P§,b2PolyAndEdgeContact.§3!0§,b2Shape.§<!D§,b2Shape.§=!E§);
      }
      
      public function §`!P§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§;!F§();
         var _loc4_:int = param2.§;!F§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§[!y§[_loc3_][_loc4_]).§^!r§)
         {
            _loc6_ = _loc5_.§^!r§;
            _loc5_.§^!r§ = _loc6_.§7!'§;
            --_loc5_.§<!§;
            _loc6_.§+N§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§9"6§)).§+N§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§9"6§)).§+N§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §3!0§(param1:b2Contact) : void
      {
         if(param1.§ !"§.§`!>§ > 0)
         {
            param1.§9!<§.m_body.SetAwake(true);
            param1.§%,§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§9!<§.§;!F§();
         var _loc3_:int = param1.§%,§.§;!F§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§[!y§[_loc2_][_loc3_]).§<!§;
         param1.§7!'§ = _loc4_.§^!r§;
         _loc4_.§^!r§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§9"6§);
      }
   }
}
