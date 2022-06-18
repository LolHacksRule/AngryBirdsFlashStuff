package §&U§
{
   import §"x§.*;
   import §#,§.*;
   import §4]§.*;
   import §7$§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §"!O§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §``§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§``§ = param1;
         this.§2!7§();
      }
      
      b2internal function §[Y§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§"!O§[param3][param4].createFcn = param1;
         this.§"!O§[param3][param4].destroyFcn = param2;
         this.§"!O§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§"!O§[param4][param3].createFcn = param1;
            this.§"!O§[param4][param3].destroyFcn = param2;
            this.§"!O§[param4][param3].primary = false;
         }
      }
      
      b2internal function §2!7§() : void
      {
         var _loc2_:int = 0;
         this.§"!O§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§+L§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§+L§)
         {
            this.§"!O§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§+L§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§+L§)
            {
               this.§"!O§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§[Y§(b2CircleContact.§[?§,b2CircleContact.§^!K§,b2Shape.§8_§,b2Shape.§8_§);
         this.§[Y§(b2PolyAndCircleContact.§[?§,b2PolyAndCircleContact.§^!K§,b2Shape.§+N§,b2Shape.§8_§);
         this.§[Y§(b2PolygonContact.§[?§,b2PolygonContact.§^!K§,b2Shape.§+N§,b2Shape.§+N§);
         this.§[Y§(b2EdgeAndCircleContact.§[?§,b2EdgeAndCircleContact.§^!K§,b2Shape.§9O§,b2Shape.§8_§);
         this.§[Y§(b2PolyAndEdgeContact.§[?§,b2PolyAndEdgeContact.§^!K§,b2Shape.§+N§,b2Shape.§9O§);
      }
      
      public function §[?§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§,!W§();
         var _loc4_:int = param2.§,!W§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§"!O§[_loc3_][_loc4_]).§4S§)
         {
            _loc6_ = _loc5_.§4S§;
            _loc5_.§4S§ = _loc6_.§ !P§;
            --_loc5_.§72§;
            _loc6_.§[]§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§``§)).§[]§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§``§)).§[]§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §^!K§(param1:b2Contact) : void
      {
         if(param1.§]k§.§<!Y§ > 0)
         {
            param1.§`3§.m_body.SetAwake(true);
            param1.§+!D§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§`3§.§,!W§();
         var _loc3_:int = param1.§+!D§.§,!W§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§"!O§[_loc2_][_loc3_]).§72§;
         param1.§ !P§ = _loc4_.§4S§;
         _loc4_.§4S§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§``§);
      }
   }
}
