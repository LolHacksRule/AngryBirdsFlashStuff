package §_-K2§
{
   import §_-4n§.*;
   import §_-bW§.*;
   import §_-iw§.*;
   import §_-yJ§.*;
   import §const§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-9x§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-cp§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§_-cp§ = param1;
         this.§_-KK§();
      }
      
      b2internal function §_-H3§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§_-9x§[param3][param4].createFcn = param1;
         this.§_-9x§[param3][param4].destroyFcn = param2;
         this.§_-9x§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§_-9x§[param4][param3].createFcn = param1;
            this.§_-9x§[param4][param3].destroyFcn = param2;
            this.§_-9x§[param4][param3].primary = false;
         }
      }
      
      b2internal function §_-KK§() : void
      {
         var _loc2_:int = 0;
         this.§_-9x§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-vr§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§_-vr§)
         {
            this.§_-9x§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-vr§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§_-vr§)
            {
               this.§_-9x§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§_-H3§(b2CircleContact.§_-mA§,b2CircleContact.§_-T9§,b2Shape.§_-x7§,b2Shape.§_-x7§);
         this.§_-H3§(b2PolyAndCircleContact.§_-mA§,b2PolyAndCircleContact.§_-T9§,b2Shape.§_-yl§,b2Shape.§_-x7§);
         this.§_-H3§(b2PolygonContact.§_-mA§,b2PolygonContact.§_-T9§,b2Shape.§_-yl§,b2Shape.§_-yl§);
         this.§_-H3§(b2EdgeAndCircleContact.§_-mA§,b2EdgeAndCircleContact.§_-T9§,b2Shape.§_-Rn§,b2Shape.§_-x7§);
         this.§_-H3§(b2PolyAndEdgeContact.§_-mA§,b2PolyAndEdgeContact.§_-T9§,b2Shape.§_-yl§,b2Shape.§_-Rn§);
      }
      
      public function §_-mA§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§_-hZ§();
         var _loc4_:int = param2.§_-hZ§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§_-9x§[_loc3_][_loc4_]).§_-9T§)
         {
            _loc6_ = _loc5_.§_-9T§;
            _loc5_.§_-9T§ = _loc6_.§_-1k§;
            --_loc5_.§_-jD§;
            _loc6_.§_-iK§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§_-cp§)).§_-iK§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§_-cp§)).§_-iK§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §_-T9§(param1:b2Contact) : void
      {
         if(param1.§_-Vd§.§_-9g§ > 0)
         {
            param1.§_-S9§.m_body.SetAwake(true);
            param1.§_-Z7§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§_-S9§.§_-hZ§();
         var _loc3_:int = param1.§_-Z7§.§_-hZ§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§_-9x§[_loc2_][_loc3_]).§_-jD§;
         param1.§_-1k§ = _loc4_.§_-9T§;
         _loc4_.§_-9T§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-cp§);
      }
   }
}
