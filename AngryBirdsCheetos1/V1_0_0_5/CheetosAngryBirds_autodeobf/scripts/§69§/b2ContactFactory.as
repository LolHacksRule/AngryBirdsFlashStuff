package §69§
{
   import §0!2§.*;
   import §1!H§.*;
   import §;]§.*;
   import §=E§.*;
   import §?!0§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §]-§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §@!=§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§@!=§ = param1;
         this.§!!M§();
      }
      
      b2internal function §!e§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§]-§[param3][param4].createFcn = param1;
         this.§]-§[param3][param4].destroyFcn = param2;
         this.§]-§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§]-§[param4][param3].createFcn = param1;
            this.§]-§[param4][param3].destroyFcn = param2;
            this.§]-§[param4][param3].primary = false;
         }
      }
      
      b2internal function §!!M§() : void
      {
         var _loc2_:int = 0;
         this.§]-§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§"?§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§"?§)
         {
            this.§]-§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§"?§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§"?§)
            {
               this.§]-§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§!e§(b2CircleContact.§?!@§,b2CircleContact.§4!L§,b2Shape.§8;§,b2Shape.§8;§);
         this.§!e§(b2PolyAndCircleContact.§?!@§,b2PolyAndCircleContact.§4!L§,b2Shape.§9!T§,b2Shape.§8;§);
         this.§!e§(b2PolygonContact.§?!@§,b2PolygonContact.§4!L§,b2Shape.§9!T§,b2Shape.§9!T§);
         this.§!e§(b2EdgeAndCircleContact.§?!@§,b2EdgeAndCircleContact.§4!L§,b2Shape.§;!5§,b2Shape.§8;§);
         this.§!e§(b2PolyAndEdgeContact.§?!@§,b2PolyAndEdgeContact.§4!L§,b2Shape.§9!T§,b2Shape.§;!5§);
      }
      
      public function §?!@§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§0!$§();
         var _loc4_:int = param2.§0!$§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§]-§[_loc3_][_loc4_]).§,-§)
         {
            _loc6_ = _loc5_.§,-§;
            _loc5_.§,-§ = _loc6_.§0]§;
            --_loc5_.§8!F§;
            _loc6_.§"o§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§@!=§)).§"o§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§@!=§)).§"o§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §4!L§(param1:b2Contact) : void
      {
         if(param1.§'&§.§39§ > 0)
         {
            param1.§<D§.m_body.SetAwake(true);
            param1.§+p§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§<D§.§0!$§();
         var _loc3_:int = param1.§+p§.§0!$§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§]-§[_loc2_][_loc3_]).§8!F§;
         param1.§0]§ = _loc4_.§,-§;
         _loc4_.§,-§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§@!=§);
      }
   }
}
