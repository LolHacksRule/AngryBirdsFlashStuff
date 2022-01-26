package §with§
{
   import §_-b4§.*;
   import §_-cG§.*;
   import §_-cP§.*;
   import §_-yI§.*;
   import §try§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-cV§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-Ts§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§_-Ts§ = param1;
         this.§_-Aw§();
      }
      
      b2internal function §_-x-§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§_-cV§[param3][param4].createFcn = param1;
         this.§_-cV§[param3][param4].destroyFcn = param2;
         this.§_-cV§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§_-cV§[param4][param3].createFcn = param1;
            this.§_-cV§[param4][param3].destroyFcn = param2;
            this.§_-cV§[param4][param3].primary = false;
         }
      }
      
      b2internal function §_-Aw§() : void
      {
         var _loc2_:int = 0;
         this.§_-cV§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-hK§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§_-hK§)
         {
            this.§_-cV§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-hK§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§_-hK§)
            {
               this.§_-cV§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§_-x-§(b2CircleContact.§_-JJ§,b2CircleContact.§_-y3§,b2Shape.§_-RR§,b2Shape.§_-RR§);
         this.§_-x-§(b2PolyAndCircleContact.§_-JJ§,b2PolyAndCircleContact.§_-y3§,b2Shape.§_-fT§,b2Shape.§_-RR§);
         this.§_-x-§(b2PolygonContact.§_-JJ§,b2PolygonContact.§_-y3§,b2Shape.§_-fT§,b2Shape.§_-fT§);
         this.§_-x-§(b2EdgeAndCircleContact.§_-JJ§,b2EdgeAndCircleContact.§_-y3§,b2Shape.§_-iw§,b2Shape.§_-RR§);
         this.§_-x-§(b2PolyAndEdgeContact.§_-JJ§,b2PolyAndEdgeContact.§_-y3§,b2Shape.§_-fT§,b2Shape.§_-iw§);
      }
      
      public function §_-JJ§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§_-sl§();
         var _loc4_:int = param2.§_-sl§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§_-cV§[_loc3_][_loc4_]).§_-0-Q§)
         {
            _loc6_ = _loc5_.§_-0-Q§;
            _loc5_.§_-0-Q§ = _loc6_.§_-QK§;
            --_loc5_.§_-4z§;
            _loc6_.§_-Ji§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§_-Ts§)).§_-Ji§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§_-Ts§)).§_-Ji§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §_-y3§(param1:b2Contact) : void
      {
         if(param1.§_-Fp§.§_-KL§ > 0)
         {
            param1.§_-6B§.m_body.SetAwake(true);
            param1.§_-lO§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§_-6B§.§_-sl§();
         var _loc3_:int = param1.§_-lO§.§_-sl§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§_-cV§[_loc2_][_loc3_]).§_-4z§;
         param1.§_-QK§ = _loc4_.§_-0-Q§;
         _loc4_.§_-0-Q§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-Ts§);
      }
   }
}
