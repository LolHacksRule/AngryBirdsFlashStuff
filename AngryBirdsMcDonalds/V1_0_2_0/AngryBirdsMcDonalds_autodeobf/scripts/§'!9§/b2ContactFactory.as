package §'!9§
{
   import §"U§.*;
   import §,7§.*;
   import §3!g§.*;
   import §<!!§.*;
   import §=!X§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §?7§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §?;§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§?;§ = param1;
         this.§@!7§();
      }
      
      b2internal function §]!=§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§?7§[param3][param4].createFcn = param1;
         this.§?7§[param3][param4].destroyFcn = param2;
         this.§?7§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§?7§[param4][param3].createFcn = param1;
            this.§?7§[param4][param3].destroyFcn = param2;
            this.§?7§[param4][param3].primary = false;
         }
      }
      
      b2internal function §@!7§() : void
      {
         var _loc2_:int = 0;
         this.§?7§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§^!§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§^!§)
         {
            this.§?7§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§^!§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§^!§)
            {
               this.§?7§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§]!=§(b2CircleContact.§ 9§,b2CircleContact.§+$§,b2Shape.§%b§,b2Shape.§%b§);
         this.§]!=§(b2PolyAndCircleContact.§ 9§,b2PolyAndCircleContact.§+$§,b2Shape.§0!7§,b2Shape.§%b§);
         this.§]!=§(b2PolygonContact.§ 9§,b2PolygonContact.§+$§,b2Shape.§0!7§,b2Shape.§0!7§);
         this.§]!=§(b2EdgeAndCircleContact.§ 9§,b2EdgeAndCircleContact.§+$§,b2Shape.§ h§,b2Shape.§%b§);
         this.§]!=§(b2PolyAndEdgeContact.§ 9§,b2PolyAndEdgeContact.§+$§,b2Shape.§0!7§,b2Shape.§ h§);
      }
      
      public function § 9§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§^!A§();
         var _loc4_:int = param2.§^!A§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§?7§[_loc3_][_loc4_]).§+!?§)
         {
            _loc6_ = _loc5_.§+!?§;
            _loc5_.§+!?§ = _loc6_.§ set§;
            --_loc5_.§3w§;
            _loc6_.§4`§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§?;§)).§4`§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§?;§)).§4`§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §+$§(param1:b2Contact) : void
      {
         if(param1.§9y§.§&!-§ > 0)
         {
            param1.§2!G§.m_body.SetAwake(true);
            param1.§#!S§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§2!G§.§^!A§();
         var _loc3_:int = param1.§#!S§.§^!A§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§?7§[_loc2_][_loc3_]).§3w§;
         param1.§ set§ = _loc4_.§+!?§;
         _loc4_.§+!?§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§?;§);
      }
   }
}
