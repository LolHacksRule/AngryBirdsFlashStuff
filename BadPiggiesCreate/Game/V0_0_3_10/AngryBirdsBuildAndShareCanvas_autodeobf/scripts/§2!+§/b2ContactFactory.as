package §2!+§
{
   import §!S§.*;
   import §1!1§.*;
   import §6U§.*;
   import §?!h§.*;
   import §`]§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §?"+§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §#!b§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§#!b§ = param1;
         this.§4q§();
      }
      
      b2internal function §""1§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§?"+§[param3][param4].createFcn = param1;
         this.§?"+§[param3][param4].destroyFcn = param2;
         this.§?"+§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§?"+§[param4][param3].createFcn = param1;
            this.§?"+§[param4][param3].destroyFcn = param2;
            this.§?"+§[param4][param3].primary = false;
         }
      }
      
      b2internal function §4q§() : void
      {
         var _loc2_:int = 0;
         this.§?"+§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§4U§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§4U§)
         {
            this.§?"+§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§4U§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§4U§)
            {
               this.§?"+§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§""1§(b2CircleContact.§6t§,b2CircleContact.§=!!§,b2Shape.§^C§,b2Shape.§^C§);
         this.§""1§(b2PolyAndCircleContact.§6t§,b2PolyAndCircleContact.§=!!§,b2Shape.§`"6§,b2Shape.§^C§);
         this.§""1§(b2PolygonContact.§6t§,b2PolygonContact.§=!!§,b2Shape.§`"6§,b2Shape.§`"6§);
         this.§""1§(b2EdgeAndCircleContact.§6t§,b2EdgeAndCircleContact.§=!!§,b2Shape.§?!M§,b2Shape.§^C§);
         this.§""1§(b2PolyAndEdgeContact.§6t§,b2PolyAndEdgeContact.§=!!§,b2Shape.§`"6§,b2Shape.§?!M§);
      }
      
      public function §6t§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§8!d§();
         var _loc4_:int = param2.§8!d§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§?"+§[_loc3_][_loc4_]).§1"'§)
         {
            _loc6_ = _loc5_.§1"'§;
            _loc5_.§1"'§ = _loc6_.§7<§;
            --_loc5_.§ !a§;
            _loc6_.§+Q§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§#!b§)).§+Q§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§#!b§)).§+Q§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §=!!§(param1:b2Contact) : void
      {
         if(param1.§^!?§.§]7§ > 0)
         {
            param1.§"!1§.m_body.SetAwake(true);
            param1.§5!K§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§"!1§.§8!d§();
         var _loc3_:int = param1.§5!K§.§8!d§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§?"+§[_loc2_][_loc3_]).§ !a§;
         param1.§7<§ = _loc4_.§1"'§;
         _loc4_.§1"'§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§#!b§);
      }
   }
}
