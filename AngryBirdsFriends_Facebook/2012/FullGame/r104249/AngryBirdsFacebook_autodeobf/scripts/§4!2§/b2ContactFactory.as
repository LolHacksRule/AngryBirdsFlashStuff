package §4!2§
{
   import § !0§.*;
   import §&!Y§.*;
   import §+!d§.*;
   import §7F§.*;
   import §@!a§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §=T§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §!!_§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§!!_§ = param1;
         this.§2!Y§();
      }
      
      b2internal function §?!+§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§=T§[param3][param4].createFcn = param1;
         this.§=T§[param3][param4].destroyFcn = param2;
         this.§=T§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§=T§[param4][param3].createFcn = param1;
            this.§=T§[param4][param3].destroyFcn = param2;
            this.§=T§[param4][param3].primary = false;
         }
      }
      
      b2internal function §2!Y§() : void
      {
         var _loc2_:int = 0;
         this.§=T§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§"!,§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§"!,§)
         {
            this.§=T§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§"!,§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§"!,§)
            {
               this.§=T§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§?!+§(b2CircleContact.§]!e§,b2CircleContact.§]!f§,b2Shape.§9!y§,b2Shape.§9!y§);
         this.§?!+§(b2PolyAndCircleContact.§]!e§,b2PolyAndCircleContact.§]!f§,b2Shape.§-c§,b2Shape.§9!y§);
         this.§?!+§(b2PolygonContact.§]!e§,b2PolygonContact.§]!f§,b2Shape.§-c§,b2Shape.§-c§);
         this.§?!+§(b2EdgeAndCircleContact.§]!e§,b2EdgeAndCircleContact.§]!f§,b2Shape.§^"'§,b2Shape.§9!y§);
         this.§?!+§(b2PolyAndEdgeContact.§]!e§,b2PolyAndEdgeContact.§]!f§,b2Shape.§-c§,b2Shape.§^"'§);
      }
      
      public function §]!e§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§;!w§();
         var _loc4_:int = param2.§;!w§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§=T§[_loc3_][_loc4_]).§-!h§)
         {
            _loc6_ = _loc5_.§-!h§;
            _loc5_.§-!h§ = _loc6_.§&!n§;
            --_loc5_.§-!2§;
            _loc6_.§["=§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§!!_§)).§["=§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§!!_§)).§["=§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §]!f§(param1:b2Contact) : void
      {
         if(param1.§'R§.§<"5§ > 0)
         {
            param1.§9!E§.m_body.SetAwake(true);
            param1.§5m§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§9!E§.§;!w§();
         var _loc3_:int = param1.§5m§.§;!w§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§=T§[_loc2_][_loc3_]).§-!2§;
         param1.§&!n§ = _loc4_.§-!h§;
         _loc4_.§-!h§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§!!_§);
      }
   }
}
