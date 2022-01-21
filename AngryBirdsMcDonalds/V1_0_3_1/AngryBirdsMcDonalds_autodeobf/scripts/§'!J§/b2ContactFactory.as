package §'!J§
{
   import §&x§.*;
   import §-!T§.*;
   import §0,§.*;
   import §3o§.*;
   import §8!b§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §+!e§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §]!A§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§]!A§ = param1;
         this.§;-§();
      }
      
      b2internal function §+5§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§+!e§[param3][param4].createFcn = param1;
         this.§+!e§[param3][param4].destroyFcn = param2;
         this.§+!e§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§+!e§[param4][param3].createFcn = param1;
            this.§+!e§[param4][param3].destroyFcn = param2;
            this.§+!e§[param4][param3].primary = false;
         }
      }
      
      b2internal function §;-§() : void
      {
         var _loc2_:int = 0;
         this.§+!e§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§ !N§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§ !N§)
         {
            this.§+!e§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§ !N§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§ !N§)
            {
               this.§+!e§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§+5§(b2CircleContact.§;!1§,b2CircleContact.§ ;§,b2Shape.§<7§,b2Shape.§<7§);
         this.§+5§(b2PolyAndCircleContact.§;!1§,b2PolyAndCircleContact.§ ;§,b2Shape.§5!e§,b2Shape.§<7§);
         this.§+5§(b2PolygonContact.§;!1§,b2PolygonContact.§ ;§,b2Shape.§5!e§,b2Shape.§5!e§);
         this.§+5§(b2EdgeAndCircleContact.§;!1§,b2EdgeAndCircleContact.§ ;§,b2Shape.§7H§,b2Shape.§<7§);
         this.§+5§(b2PolyAndEdgeContact.§;!1§,b2PolyAndEdgeContact.§ ;§,b2Shape.§5!e§,b2Shape.§7H§);
      }
      
      public function §;!1§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§"!I§();
         var _loc4_:int = param2.§"!I§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§+!e§[_loc3_][_loc4_]).§5x§)
         {
            _loc6_ = _loc5_.§5x§;
            _loc5_.§5x§ = _loc6_.§18§;
            --_loc5_.§7§;
            _loc6_.§?r§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§]!A§)).§?r§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§]!A§)).§?r§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function § ;§(param1:b2Contact) : void
      {
         if(param1.§1z§.§'q§ > 0)
         {
            param1.§ `§.m_body.SetAwake(true);
            param1.§"!9§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§ `§.§"!I§();
         var _loc3_:int = param1.§"!9§.§"!I§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§+!e§[_loc2_][_loc3_]).§7§;
         param1.§18§ = _loc4_.§5x§;
         _loc4_.§5x§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§]!A§);
      }
   }
}
