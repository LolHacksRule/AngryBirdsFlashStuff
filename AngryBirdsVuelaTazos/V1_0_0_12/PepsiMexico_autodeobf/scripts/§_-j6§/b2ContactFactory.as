package §_-j6§
{
   import §_-9z§.*;
   import §_-Bt§.*;
   import §_-EH§.*;
   import §_-Nw§.*;
   import §_-sU§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-Be§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-hu§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§_-hu§ = param1;
         this.§_-RV§();
      }
      
      b2internal function §break§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§_-Be§[param3][param4].createFcn = param1;
         this.§_-Be§[param3][param4].destroyFcn = param2;
         this.§_-Be§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§_-Be§[param4][param3].createFcn = param1;
            this.§_-Be§[param4][param3].destroyFcn = param2;
            this.§_-Be§[param4][param3].primary = false;
         }
      }
      
      b2internal function §_-RV§() : void
      {
         var _loc2_:int = 0;
         this.§_-Be§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-XC§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§_-XC§)
         {
            this.§_-Be§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-XC§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§_-XC§)
            {
               this.§_-Be§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§break§(b2CircleContact.§_-1Z§,b2CircleContact.§else§,b2Shape.§_-1M§,b2Shape.§_-1M§);
         this.§break§(b2PolyAndCircleContact.§_-1Z§,b2PolyAndCircleContact.§else§,b2Shape.§_-Tn§,b2Shape.§_-1M§);
         this.§break§(b2PolygonContact.§_-1Z§,b2PolygonContact.§else§,b2Shape.§_-Tn§,b2Shape.§_-Tn§);
         this.§break§(b2EdgeAndCircleContact.§_-1Z§,b2EdgeAndCircleContact.§else§,b2Shape.§_-x5§,b2Shape.§_-1M§);
         this.§break§(b2PolyAndEdgeContact.§_-1Z§,b2PolyAndEdgeContact.§else§,b2Shape.§_-Tn§,b2Shape.§_-x5§);
      }
      
      public function §_-1Z§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§_-7L§();
         var _loc4_:int = param2.§_-7L§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§_-Be§[_loc3_][_loc4_]).§_-TB§)
         {
            _loc6_ = _loc5_.§_-TB§;
            _loc5_.§_-TB§ = _loc6_.§_-GH§;
            --_loc5_.§_-fl§;
            _loc6_.§_-7h§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§_-hu§)).§_-7h§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§_-hu§)).§_-7h§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §else§(param1:b2Contact) : void
      {
         if(param1.§_-x9§.§_-pT§ > 0)
         {
            param1.§_-om§.m_body.SetAwake(true);
            param1.§_-X8§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§_-om§.§_-7L§();
         var _loc3_:int = param1.§_-X8§.§_-7L§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§_-Be§[_loc2_][_loc3_]).§_-fl§;
         param1.§_-GH§ = _loc4_.§_-TB§;
         _loc4_.§_-TB§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-hu§);
      }
   }
}
