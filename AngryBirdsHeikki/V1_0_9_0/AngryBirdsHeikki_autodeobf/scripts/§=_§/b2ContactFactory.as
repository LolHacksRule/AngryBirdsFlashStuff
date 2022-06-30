package §=_§
{
   import § !_§.*;
   import §+&§.*;
   import §-!!§.*;
   import §^!Z§.*;
   import §^t§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §^!`§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §"5§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§"5§ = param1;
         this.§9!Y§();
      }
      
      b2internal function §??§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§^!`§[param3][param4].createFcn = param1;
         this.§^!`§[param3][param4].destroyFcn = param2;
         this.§^!`§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§^!`§[param4][param3].createFcn = param1;
            this.§^!`§[param4][param3].destroyFcn = param2;
            this.§^!`§[param4][param3].primary = false;
         }
      }
      
      b2internal function §9!Y§() : void
      {
         var _loc2_:int = 0;
         this.§^!`§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§?`§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§?`§)
         {
            this.§^!`§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§?`§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§?`§)
            {
               this.§^!`§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§??§(b2CircleContact.§8b§,b2CircleContact.§<a§,b2Shape.§2T§,b2Shape.§2T§);
         this.§??§(b2PolyAndCircleContact.§8b§,b2PolyAndCircleContact.§<a§,b2Shape.§>H§,b2Shape.§2T§);
         this.§??§(b2PolygonContact.§8b§,b2PolygonContact.§<a§,b2Shape.§>H§,b2Shape.§>H§);
         this.§??§(b2EdgeAndCircleContact.§8b§,b2EdgeAndCircleContact.§<a§,b2Shape.§>"§,b2Shape.§2T§);
         this.§??§(b2PolyAndEdgeContact.§8b§,b2PolyAndEdgeContact.§<a§,b2Shape.§>H§,b2Shape.§>"§);
      }
      
      public function §8b§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§6+§();
         var _loc4_:int = param2.§6+§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§^!`§[_loc3_][_loc4_]).§[>§)
         {
            _loc6_ = _loc5_.§[>§;
            _loc5_.§[>§ = _loc6_.§]!8§;
            --_loc5_.§7!§;
            _loc6_.§=s§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§"5§)).§=s§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§"5§)).§=s§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §<a§(param1:b2Contact) : void
      {
         if(param1.§%`§.§ use§ > 0)
         {
            param1.§"!V§.m_body.SetAwake(true);
            param1.§[!§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§"!V§.§6+§();
         var _loc3_:int = param1.§[!§.§6+§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§^!`§[_loc2_][_loc3_]).§7!§;
         param1.§]!8§ = _loc4_.§[>§;
         _loc4_.§[>§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§"5§);
      }
   }
}
