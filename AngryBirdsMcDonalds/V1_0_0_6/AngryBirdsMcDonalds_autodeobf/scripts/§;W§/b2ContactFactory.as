package §;W§
{
   import §%!h§.*;
   import §7!5§.*;
   import §7!Y§.*;
   import §8!n§.*;
   import §@![§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §`!K§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §-d§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§-d§ = param1;
         this.§>`§();
      }
      
      b2internal function §2!$§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§`!K§[param3][param4].createFcn = param1;
         this.§`!K§[param3][param4].destroyFcn = param2;
         this.§`!K§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§`!K§[param4][param3].createFcn = param1;
            this.§`!K§[param4][param3].destroyFcn = param2;
            this.§`!K§[param4][param3].primary = false;
         }
      }
      
      b2internal function §>`§() : void
      {
         var _loc2_:int = 0;
         this.§`!K§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§4T§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§4T§)
         {
            this.§`!K§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§4T§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§4T§)
            {
               this.§`!K§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§2!$§(b2CircleContact.§class§,b2CircleContact.§5^§,b2Shape.§9D§,b2Shape.§9D§);
         this.§2!$§(b2PolyAndCircleContact.§class§,b2PolyAndCircleContact.§5^§,b2Shape.§]!k§,b2Shape.§9D§);
         this.§2!$§(b2PolygonContact.§class§,b2PolygonContact.§5^§,b2Shape.§]!k§,b2Shape.§]!k§);
         this.§2!$§(b2EdgeAndCircleContact.§class§,b2EdgeAndCircleContact.§5^§,b2Shape.§!!U§,b2Shape.§9D§);
         this.§2!$§(b2PolyAndEdgeContact.§class§,b2PolyAndEdgeContact.§5^§,b2Shape.§]!k§,b2Shape.§!!U§);
      }
      
      public function §class§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§&!B§();
         var _loc4_:int = param2.§&!B§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§`!K§[_loc3_][_loc4_]).§4!6§)
         {
            _loc6_ = _loc5_.§4!6§;
            _loc5_.§4!6§ = _loc6_.§%&§;
            --_loc5_.§6!l§;
            _loc6_.§?!;§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§-d§)).§?!;§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§-d§)).§?!;§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §5^§(param1:b2Contact) : void
      {
         if(param1.§?Y§.§"e§ > 0)
         {
            param1.§,o§.m_body.SetAwake(true);
            param1.§0-§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§,o§.§&!B§();
         var _loc3_:int = param1.§0-§.§&!B§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§`!K§[_loc2_][_loc3_]).§6!l§;
         param1.§%&§ = _loc4_.§4!6§;
         _loc4_.§4!6§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§-d§);
      }
   }
}
