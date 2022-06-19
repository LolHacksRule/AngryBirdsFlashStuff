package §_-fl§
{
   import §_-00B§.*;
   import §_-Jf§.*;
   import §_-Kz§.*;
   import §_-OY§.*;
   import §_-Vn§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-Vd§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-m7§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§_-m7§ = param1;
         this.§_-Q§();
      }
      
      b2internal function §_-r3§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§_-Vd§[param3][param4].createFcn = param1;
         this.§_-Vd§[param3][param4].destroyFcn = param2;
         this.§_-Vd§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§_-Vd§[param4][param3].createFcn = param1;
            this.§_-Vd§[param4][param3].destroyFcn = param2;
            this.§_-Vd§[param4][param3].primary = false;
         }
      }
      
      b2internal function §_-Q§() : void
      {
         var _loc2_:int = 0;
         this.§_-Vd§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-Uw§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§_-Uw§)
         {
            this.§_-Vd§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-Uw§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§_-Uw§)
            {
               this.§_-Vd§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§_-r3§(b2CircleContact.§null §,b2CircleContact.§_-TB§,b2Shape.§_-b9§,b2Shape.§_-b9§);
         this.§_-r3§(b2PolyAndCircleContact.§null §,b2PolyAndCircleContact.§_-TB§,b2Shape.§_-8u§,b2Shape.§_-b9§);
         this.§_-r3§(b2PolygonContact.§null §,b2PolygonContact.§_-TB§,b2Shape.§_-8u§,b2Shape.§_-8u§);
         this.§_-r3§(b2EdgeAndCircleContact.§null §,b2EdgeAndCircleContact.§_-TB§,b2Shape.§_-Jk§,b2Shape.§_-b9§);
         this.§_-r3§(b2PolyAndEdgeContact.§null §,b2PolyAndEdgeContact.§_-TB§,b2Shape.§_-8u§,b2Shape.§_-Jk§);
      }
      
      public function §null §(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§_-n§();
         var _loc4_:int = param2.§_-n§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§_-Vd§[_loc3_][_loc4_]).§_-4O§)
         {
            _loc6_ = _loc5_.§_-4O§;
            _loc5_.§_-4O§ = _loc6_.§_-E1§;
            --_loc5_.§_-z8§;
            _loc6_.§_-ej§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§_-m7§)).§_-ej§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§_-m7§)).§_-ej§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §_-TB§(param1:b2Contact) : void
      {
         if(param1.§_-LF§.§_-BX§ > 0)
         {
            param1.§_-a9§.m_body.SetAwake(true);
            param1.§_-2b§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§_-a9§.§_-n§();
         var _loc3_:int = param1.§_-2b§.§_-n§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§_-Vd§[_loc2_][_loc3_]).§_-z8§;
         param1.§_-E1§ = _loc4_.§_-4O§;
         _loc4_.§_-4O§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-m7§);
      }
   }
}
