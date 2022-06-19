package §_-ZX§
{
   import § if§.*;
   import §_-43§.*;
   import §_-F2§.*;
   import §_-Jx§.*;
   import §_-d6§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-3r§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-fi§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§_-fi§ = param1;
         this.§_-EC§();
      }
      
      b2internal function §_-Fn§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§_-3r§[param3][param4].createFcn = param1;
         this.§_-3r§[param3][param4].destroyFcn = param2;
         this.§_-3r§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§_-3r§[param4][param3].createFcn = param1;
            this.§_-3r§[param4][param3].destroyFcn = param2;
            this.§_-3r§[param4][param3].primary = false;
         }
      }
      
      b2internal function §_-EC§() : void
      {
         var _loc2_:int = 0;
         this.§_-3r§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-oI§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§_-oI§)
         {
            this.§_-3r§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-oI§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§_-oI§)
            {
               this.§_-3r§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§_-Fn§(b2CircleContact.§_-6l§,b2CircleContact.§_-TI§,b2Shape.§_-4p§,b2Shape.§_-4p§);
         this.§_-Fn§(b2PolyAndCircleContact.§_-6l§,b2PolyAndCircleContact.§_-TI§,b2Shape.§_-Wf§,b2Shape.§_-4p§);
         this.§_-Fn§(b2PolygonContact.§_-6l§,b2PolygonContact.§_-TI§,b2Shape.§_-Wf§,b2Shape.§_-Wf§);
         this.§_-Fn§(b2EdgeAndCircleContact.§_-6l§,b2EdgeAndCircleContact.§_-TI§,b2Shape.§_-t9§,b2Shape.§_-4p§);
         this.§_-Fn§(b2PolyAndEdgeContact.§_-6l§,b2PolyAndEdgeContact.§_-TI§,b2Shape.§_-Wf§,b2Shape.§_-t9§);
      }
      
      public function §_-6l§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§_-cT§();
         var _loc4_:int = param2.§_-cT§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§_-3r§[_loc3_][_loc4_]).§_-8§)
         {
            _loc6_ = _loc5_.§_-8§;
            _loc5_.§_-8§ = _loc6_.§_-4N§;
            --_loc5_.§_-dr§;
            _loc6_.§_-1c§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§_-fi§)).§_-1c§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§_-fi§)).§_-1c§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §_-TI§(param1:b2Contact) : void
      {
         if(param1.§_-GH§.§_-002§ > 0)
         {
            param1.§_-pQ§.m_body.SetAwake(true);
            param1.§_-mY§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§_-pQ§.§_-cT§();
         var _loc3_:int = param1.§_-mY§.§_-cT§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§_-3r§[_loc2_][_loc3_]).§_-dr§;
         param1.§_-4N§ = _loc4_.§_-8§;
         _loc4_.§_-8§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-fi§);
      }
   }
}
