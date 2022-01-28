package §_-l7§
{
   import §_-Pu§.*;
   import §_-bA§.*;
   import §_-mg§.*;
   import §_-rz§.*;
   import §_-vk§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-H6§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-PG§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§_-PG§ = param1;
         this.§_-mV§();
      }
      
      b2internal function §_-w0§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§_-H6§[param3][param4].createFcn = param1;
         this.§_-H6§[param3][param4].destroyFcn = param2;
         this.§_-H6§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§_-H6§[param4][param3].createFcn = param1;
            this.§_-H6§[param4][param3].destroyFcn = param2;
            this.§_-H6§[param4][param3].primary = false;
         }
      }
      
      b2internal function §_-mV§() : void
      {
         var _loc2_:int = 0;
         this.§_-H6§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-Ua§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§_-Ua§)
         {
            this.§_-H6§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-Ua§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§_-Ua§)
            {
               this.§_-H6§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§_-w0§(b2CircleContact.§_-gE§,b2CircleContact.§_-6A§,b2Shape.§_-Pk§,b2Shape.§_-Pk§);
         this.§_-w0§(b2PolyAndCircleContact.§_-gE§,b2PolyAndCircleContact.§_-6A§,b2Shape.§_-u-§,b2Shape.§_-Pk§);
         this.§_-w0§(b2PolygonContact.§_-gE§,b2PolygonContact.§_-6A§,b2Shape.§_-u-§,b2Shape.§_-u-§);
         this.§_-w0§(b2EdgeAndCircleContact.§_-gE§,b2EdgeAndCircleContact.§_-6A§,b2Shape.§_-ne§,b2Shape.§_-Pk§);
         this.§_-w0§(b2PolyAndEdgeContact.§_-gE§,b2PolyAndEdgeContact.§_-6A§,b2Shape.§_-u-§,b2Shape.§_-ne§);
      }
      
      public function §_-gE§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§_-Wx§();
         var _loc4_:int = param2.§_-Wx§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§_-H6§[_loc3_][_loc4_]).§_-MC§)
         {
            _loc6_ = _loc5_.§_-MC§;
            _loc5_.§_-MC§ = _loc6_.§_-np§;
            --_loc5_.§_-ec§;
            _loc6_.§_-2d§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§_-PG§)).§_-2d§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§_-PG§)).§_-2d§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §_-6A§(param1:b2Contact) : void
      {
         if(param1.§_-tS§.§_-HT§ > 0)
         {
            param1.§_-lE§.m_body.SetAwake(true);
            param1.§_-Qr§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§_-lE§.§_-Wx§();
         var _loc3_:int = param1.§_-Qr§.§_-Wx§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§_-H6§[_loc2_][_loc3_]).§_-ec§;
         param1.§_-np§ = _loc4_.§_-MC§;
         _loc4_.§_-MC§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-PG§);
      }
   }
}
