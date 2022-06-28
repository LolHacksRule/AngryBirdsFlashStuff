package §_-0DM§
{
   import §_-03n§.*;
   import §_-5§.*;
   import §_-Yp§.*;
   import §_-aU§.*;
   import §_-gE§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-9j§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-qZ§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§_-qZ§ = param1;
         this.§_-W-§();
      }
      
      b2internal function §_-o3§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§_-9j§[param3][param4].createFcn = param1;
         this.§_-9j§[param3][param4].destroyFcn = param2;
         this.§_-9j§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§_-9j§[param4][param3].createFcn = param1;
            this.§_-9j§[param4][param3].destroyFcn = param2;
            this.§_-9j§[param4][param3].primary = false;
         }
      }
      
      b2internal function §_-W-§() : void
      {
         var _loc2_:int = 0;
         this.§_-9j§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-ZC§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§_-ZC§)
         {
            this.§_-9j§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-ZC§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§_-ZC§)
            {
               this.§_-9j§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§_-o3§(b2CircleContact.§_-xb§,b2CircleContact.§_-01§,b2Shape.§_-rv§,b2Shape.§_-rv§);
         this.§_-o3§(b2PolyAndCircleContact.§_-xb§,b2PolyAndCircleContact.§_-01§,b2Shape.§_-04L§,b2Shape.§_-rv§);
         this.§_-o3§(b2PolygonContact.§_-xb§,b2PolygonContact.§_-01§,b2Shape.§_-04L§,b2Shape.§_-04L§);
         this.§_-o3§(b2EdgeAndCircleContact.§_-xb§,b2EdgeAndCircleContact.§_-01§,b2Shape.§_-Ee§,b2Shape.§_-rv§);
         this.§_-o3§(b2PolyAndEdgeContact.§_-xb§,b2PolyAndEdgeContact.§_-01§,b2Shape.§_-04L§,b2Shape.§_-Ee§);
      }
      
      public function §_-xb§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§_-oF§();
         var _loc4_:int = param2.§_-oF§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§_-9j§[_loc3_][_loc4_]).§_-Gm§)
         {
            _loc6_ = _loc5_.§_-Gm§;
            _loc5_.§_-Gm§ = _loc6_.§_-oz§;
            --_loc5_.§_-bx§;
            _loc6_.§_-8Y§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§_-qZ§)).§_-8Y§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§_-qZ§)).§_-8Y§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §_-01§(param1:b2Contact) : void
      {
         if(param1.§_-07u§.§_-XO§ > 0)
         {
            param1.§_-f-§.m_body.SetAwake(true);
            param1.§_-N-§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§_-f-§.§_-oF§();
         var _loc3_:int = param1.§_-N-§.§_-oF§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§_-9j§[_loc2_][_loc3_]).§_-bx§;
         param1.§_-oz§ = _loc4_.§_-Gm§;
         _loc4_.§_-Gm§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-qZ§);
      }
   }
}
