package §6!g§
{
   import §+S§.*;
   import §,!V§.*;
   import §8T§.*;
   import §<!D§.*;
   import §?!n§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §]!&§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §<_§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§<_§ = param1;
         this.§=x§();
      }
      
      b2internal function §^]§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§]!&§[param3][param4].createFcn = param1;
         this.§]!&§[param3][param4].destroyFcn = param2;
         this.§]!&§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§]!&§[param4][param3].createFcn = param1;
            this.§]!&§[param4][param3].destroyFcn = param2;
            this.§]!&§[param4][param3].primary = false;
         }
      }
      
      b2internal function §=x§() : void
      {
         var _loc2_:int = 0;
         this.§]!&§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§4!'§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§4!'§)
         {
            this.§]!&§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§4!'§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§4!'§)
            {
               this.§]!&§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§^]§(b2CircleContact.§[u§,b2CircleContact.§60§,b2Shape.§8M§,b2Shape.§8M§);
         this.§^]§(b2PolyAndCircleContact.§[u§,b2PolyAndCircleContact.§60§,b2Shape.§%'§,b2Shape.§8M§);
         this.§^]§(b2PolygonContact.§[u§,b2PolygonContact.§60§,b2Shape.§%'§,b2Shape.§%'§);
         this.§^]§(b2EdgeAndCircleContact.§[u§,b2EdgeAndCircleContact.§60§,b2Shape.§&!n§,b2Shape.§8M§);
         this.§^]§(b2PolyAndEdgeContact.§[u§,b2PolyAndEdgeContact.§60§,b2Shape.§%'§,b2Shape.§&!n§);
      }
      
      public function §[u§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§1l§();
         var _loc4_:int = param2.§1l§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§]!&§[_loc3_][_loc4_]).§1t§)
         {
            _loc6_ = _loc5_.§1t§;
            _loc5_.§1t§ = _loc6_.§[h§;
            --_loc5_.§?!B§;
            _loc6_.§2!R§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§<_§)).§2!R§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§<_§)).§2!R§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §60§(param1:b2Contact) : void
      {
         if(param1.§&!9§.§;!e§ > 0)
         {
            param1.§3!K§.m_body.SetAwake(true);
            param1.§!!b§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§3!K§.§1l§();
         var _loc3_:int = param1.§!!b§.§1l§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§]!&§[_loc2_][_loc3_]).§?!B§;
         param1.§[h§ = _loc4_.§1t§;
         _loc4_.§1t§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§<_§);
      }
   }
}
