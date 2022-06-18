package §3Z§
{
   import § y§.*;
   import §&!+§.*;
   import §4!&§.*;
   import §8!%§.*;
   import §<!^§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §,!T§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §-!+§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§-!+§ = param1;
         this.§4u§();
      }
      
      b2internal function §?a§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§,!T§[param3][param4].createFcn = param1;
         this.§,!T§[param3][param4].destroyFcn = param2;
         this.§,!T§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§,!T§[param4][param3].createFcn = param1;
            this.§,!T§[param4][param3].destroyFcn = param2;
            this.§,!T§[param4][param3].primary = false;
         }
      }
      
      b2internal function §4u§() : void
      {
         var _loc2_:int = 0;
         this.§,!T§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§?f§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§?f§)
         {
            this.§,!T§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§?f§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§?f§)
            {
               this.§,!T§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§?a§(b2CircleContact.§?j§,b2CircleContact.§4c§,b2Shape.§5! §,b2Shape.§5! §);
         this.§?a§(b2PolyAndCircleContact.§?j§,b2PolyAndCircleContact.§4c§,b2Shape.§7F§,b2Shape.§5! §);
         this.§?a§(b2PolygonContact.§?j§,b2PolygonContact.§4c§,b2Shape.§7F§,b2Shape.§7F§);
         this.§?a§(b2EdgeAndCircleContact.§?j§,b2EdgeAndCircleContact.§4c§,b2Shape.§1!C§,b2Shape.§5! §);
         this.§?a§(b2PolyAndEdgeContact.§?j§,b2PolyAndEdgeContact.§4c§,b2Shape.§7F§,b2Shape.§1!C§);
      }
      
      public function §?j§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§?!S§();
         var _loc4_:int = param2.§?!S§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§,!T§[_loc3_][_loc4_]).§1y§)
         {
            _loc6_ = _loc5_.§1y§;
            _loc5_.§1y§ = _loc6_.§1!A§;
            --_loc5_.§>![§;
            _loc6_.§]!S§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§-!+§)).§]!S§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§-!+§)).§]!S§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §4c§(param1:b2Contact) : void
      {
         if(param1.§2!=§.§'l§ > 0)
         {
            param1.§>^§.m_body.SetAwake(true);
            param1.§;!Z§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§>^§.§?!S§();
         var _loc3_:int = param1.§;!Z§.§?!S§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§,!T§[_loc2_][_loc3_]).§>![§;
         param1.§1!A§ = _loc4_.§1y§;
         _loc4_.§1y§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§-!+§);
      }
   }
}
