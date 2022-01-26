package §_-cw§
{
   import §_-26§.*;
   import §_-WW§.*;
   import §_-dx§.*;
   import §_-iO§.*;
   import §_-tK§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §_-eb§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §_-ia§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§_-ia§ = param1;
         this.§_-s1§();
      }
      
      b2internal function §_-r-§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§_-eb§[param3][param4].createFcn = param1;
         this.§_-eb§[param3][param4].destroyFcn = param2;
         this.§_-eb§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§_-eb§[param4][param3].createFcn = param1;
            this.§_-eb§[param4][param3].destroyFcn = param2;
            this.§_-eb§[param4][param3].primary = false;
         }
      }
      
      b2internal function §_-s1§() : void
      {
         var _loc2_:int = 0;
         this.§_-eb§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§_-HE§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§_-HE§)
         {
            this.§_-eb§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§_-HE§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§_-HE§)
            {
               this.§_-eb§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§_-r-§(b2CircleContact.§_-JU§,b2CircleContact.§_-Hh§,b2Shape.§_-UU§,b2Shape.§_-UU§);
         this.§_-r-§(b2PolyAndCircleContact.§_-JU§,b2PolyAndCircleContact.§_-Hh§,b2Shape.§_-fB§,b2Shape.§_-UU§);
         this.§_-r-§(b2PolygonContact.§_-JU§,b2PolygonContact.§_-Hh§,b2Shape.§_-fB§,b2Shape.§_-fB§);
         this.§_-r-§(b2EdgeAndCircleContact.§_-JU§,b2EdgeAndCircleContact.§_-Hh§,b2Shape.§_-Ci§,b2Shape.§_-UU§);
         this.§_-r-§(b2PolyAndEdgeContact.§_-JU§,b2PolyAndEdgeContact.§_-Hh§,b2Shape.§_-fB§,b2Shape.§_-Ci§);
      }
      
      public function §_-JU§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§_-AY§();
         var _loc4_:int = param2.§_-AY§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§_-eb§[_loc3_][_loc4_]).§_-nQ§)
         {
            _loc6_ = _loc5_.§_-nQ§;
            _loc5_.§_-nQ§ = _loc6_.§_-Lg§;
            --_loc5_.§_-5j§;
            _loc6_.§_-Mm§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§_-ia§)).§_-Mm§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§_-ia§)).§_-Mm§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §_-Hh§(param1:b2Contact) : void
      {
         if(param1.§_-Er§.§_-sx§ > 0)
         {
            param1.§_-Ny§.m_body.SetAwake(true);
            param1.§_-83§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§_-Ny§.§_-AY§();
         var _loc3_:int = param1.§_-83§.§_-AY§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§_-eb§[_loc2_][_loc3_]).§_-5j§;
         param1.§_-Lg§ = _loc4_.§_-nQ§;
         _loc4_.§_-nQ§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§_-ia§);
      }
   }
}
