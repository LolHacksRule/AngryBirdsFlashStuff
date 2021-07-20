package §_-a5§
{
   import §_-Iw§.*;
   import §_-Ja§.*;
   import §_-Kt§.*;
   import §_-lh§.*;
   import §_-qg§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-g3§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-sB§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§_-sB§ = param1;
         this.§_-MM§();
      }
      
      b2internal function §_-n-§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§_-g3§[param3][param4].createFcn = param1;
         this.§_-g3§[param3][param4].destroyFcn = param2;
         this.§_-g3§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§_-g3§[param4][param3].createFcn = param1;
            this.§_-g3§[param4][param3].destroyFcn = param2;
            this.§_-g3§[param4][param3].primary = false;
         }
      }
      
      b2internal function §_-MM§() : void
      {
         var _loc2_:int = 0;
         this.§_-g3§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-Hi§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§_-Hi§)
         {
            this.§_-g3§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-Hi§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§_-Hi§)
            {
               this.§_-g3§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§_-n-§(b2CircleContact.§_-xO§,b2CircleContact.§_-2A§,b2Shape.§_-n7§,b2Shape.§_-n7§);
         this.§_-n-§(b2PolyAndCircleContact.§_-xO§,b2PolyAndCircleContact.§_-2A§,b2Shape.§_-6T§,b2Shape.§_-n7§);
         this.§_-n-§(b2PolygonContact.§_-xO§,b2PolygonContact.§_-2A§,b2Shape.§_-6T§,b2Shape.§_-6T§);
         this.§_-n-§(b2EdgeAndCircleContact.§_-xO§,b2EdgeAndCircleContact.§_-2A§,b2Shape.§_-mn§,b2Shape.§_-n7§);
         this.§_-n-§(b2PolyAndEdgeContact.§_-xO§,b2PolyAndEdgeContact.§_-2A§,b2Shape.§_-6T§,b2Shape.§_-mn§);
      }
      
      public function §_-xO§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§_-ww§();
         var _loc4_:int = param2.§_-ww§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§_-g3§[_loc3_][_loc4_]).§_-wu§)
         {
            _loc6_ = _loc5_.§_-wu§;
            _loc5_.§_-wu§ = _loc6_.§_-NA§;
            --_loc5_.§_-Sa§;
            _loc6_.§_-i0§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§_-sB§)).§_-i0§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§_-sB§)).§_-i0§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §_-2A§(param1:b2Contact) : void
      {
         if(param1.§_-Xg§.§_-Tu§ > 0)
         {
            param1.§_-NZ§.m_body.SetAwake(true);
            param1.§_-xL§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§_-NZ§.§_-ww§();
         var _loc3_:int = param1.§_-xL§.§_-ww§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§_-g3§[_loc2_][_loc3_]).§_-Sa§;
         param1.§_-NA§ = _loc4_.§_-wu§;
         _loc4_.§_-wu§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-sB§);
      }
   }
}
