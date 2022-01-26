package §_-DM§
{
   import §_-Et§.*;
   import §_-I2§.*;
   import §_-Zl§.*;
   import §_-rg§.*;
   import §_-uS§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-Lj§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-if§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§_-if§ = param1;
         this.§_-nH§();
      }
      
      b2internal function §_-AM§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§_-Lj§[param3][param4].createFcn = param1;
         this.§_-Lj§[param3][param4].destroyFcn = param2;
         this.§_-Lj§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§_-Lj§[param4][param3].createFcn = param1;
            this.§_-Lj§[param4][param3].destroyFcn = param2;
            this.§_-Lj§[param4][param3].primary = false;
         }
      }
      
      b2internal function §_-nH§() : void
      {
         var _loc2_:int = 0;
         this.§_-Lj§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-go§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§_-go§)
         {
            this.§_-Lj§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-go§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§_-go§)
            {
               this.§_-Lj§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§_-AM§(b2CircleContact.§_-i-§,b2CircleContact.§_-1m§,b2Shape.§_-sH§,b2Shape.§_-sH§);
         this.§_-AM§(b2PolyAndCircleContact.§_-i-§,b2PolyAndCircleContact.§_-1m§,b2Shape.§_-Sw§,b2Shape.§_-sH§);
         this.§_-AM§(b2PolygonContact.§_-i-§,b2PolygonContact.§_-1m§,b2Shape.§_-Sw§,b2Shape.§_-Sw§);
         this.§_-AM§(b2EdgeAndCircleContact.§_-i-§,b2EdgeAndCircleContact.§_-1m§,b2Shape.§_-bK§,b2Shape.§_-sH§);
         this.§_-AM§(b2PolyAndEdgeContact.§_-i-§,b2PolyAndEdgeContact.§_-1m§,b2Shape.§_-Sw§,b2Shape.§_-bK§);
      }
      
      public function §_-i-§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§_-Iy§();
         var _loc4_:int = param2.§_-Iy§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§_-Lj§[_loc3_][_loc4_]).§_-Aq§)
         {
            _loc6_ = _loc5_.§_-Aq§;
            _loc5_.§_-Aq§ = _loc6_.§_-AX§;
            --_loc5_.§_-kb§;
            _loc6_.§_-t3§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§_-if§)).§_-t3§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§_-if§)).§_-t3§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §_-1m§(param1:b2Contact) : void
      {
         if(param1.§_-R2§.§_-GS§ > 0)
         {
            param1.§_-di§.m_body.SetAwake(true);
            param1.include.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§_-di§.§_-Iy§();
         var _loc3_:int = param1.include.§_-Iy§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§_-Lj§[_loc2_][_loc3_]).§_-kb§;
         param1.§_-AX§ = _loc4_.§_-Aq§;
         _loc4_.§_-Aq§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-if§);
      }
   }
}
