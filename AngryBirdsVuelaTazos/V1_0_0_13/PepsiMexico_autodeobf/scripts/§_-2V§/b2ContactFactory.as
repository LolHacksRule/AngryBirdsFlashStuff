package §_-2V§
{
   import §_-8i§.*;
   import §_-SM§.*;
   import §_-qW§.*;
   import §_-wZ§.*;
   import §var§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-Xy§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-DO§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§_-DO§ = param1;
         this.§break§();
      }
      
      b2internal function §_-4o§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§_-Xy§[param3][param4].createFcn = param1;
         this.§_-Xy§[param3][param4].destroyFcn = param2;
         this.§_-Xy§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§_-Xy§[param4][param3].createFcn = param1;
            this.§_-Xy§[param4][param3].destroyFcn = param2;
            this.§_-Xy§[param4][param3].primary = false;
         }
      }
      
      b2internal function §break§() : void
      {
         var _loc2_:int = 0;
         this.§_-Xy§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-c4§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§_-c4§)
         {
            this.§_-Xy§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-c4§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§_-c4§)
            {
               this.§_-Xy§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§_-4o§(b2CircleContact.§_-0K§,b2CircleContact.§_-l6§,b2Shape.§_-LV§,b2Shape.§_-LV§);
         this.§_-4o§(b2PolyAndCircleContact.§_-0K§,b2PolyAndCircleContact.§_-l6§,b2Shape.§_-Bp§,b2Shape.§_-LV§);
         this.§_-4o§(b2PolygonContact.§_-0K§,b2PolygonContact.§_-l6§,b2Shape.§_-Bp§,b2Shape.§_-Bp§);
         this.§_-4o§(b2EdgeAndCircleContact.§_-0K§,b2EdgeAndCircleContact.§_-l6§,b2Shape.§_-pV§,b2Shape.§_-LV§);
         this.§_-4o§(b2PolyAndEdgeContact.§_-0K§,b2PolyAndEdgeContact.§_-l6§,b2Shape.§_-Bp§,b2Shape.§_-pV§);
      }
      
      public function §_-0K§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§_-kK§();
         var _loc4_:int = param2.§_-kK§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§_-Xy§[_loc3_][_loc4_]).§_-NG§)
         {
            _loc6_ = _loc5_.§_-NG§;
            _loc5_.§_-NG§ = _loc6_.§_-4b§;
            --_loc5_.§_-Ud§;
            _loc6_.§_-ut§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§_-DO§)).§_-ut§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§_-DO§)).§_-ut§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §_-l6§(param1:b2Contact) : void
      {
         if(param1.§_-iN§.§_-QB§ > 0)
         {
            param1.§_-ow§.m_body.SetAwake(true);
            param1.§_-10§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§_-ow§.§_-kK§();
         var _loc3_:int = param1.§_-10§.§_-kK§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§_-Xy§[_loc2_][_loc3_]).§_-Ud§;
         param1.§_-4b§ = _loc4_.§_-NG§;
         _loc4_.§_-NG§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-DO§);
      }
   }
}
