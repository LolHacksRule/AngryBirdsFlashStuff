package §8!D§
{
   import §-!G§.*;
   import §7"'§.*;
   import §<!j§.*;
   import §=9§.*;
   import §[!Z§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §6!l§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §"7§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§"7§ = param1;
         this.§?!"§();
      }
      
      b2internal function §2!d§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§6!l§[param3][param4].createFcn = param1;
         this.§6!l§[param3][param4].destroyFcn = param2;
         this.§6!l§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§6!l§[param4][param3].createFcn = param1;
            this.§6!l§[param4][param3].destroyFcn = param2;
            this.§6!l§[param4][param3].primary = false;
         }
      }
      
      b2internal function §?!"§() : void
      {
         var _loc2_:int = 0;
         this.§6!l§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§@![§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§@![§)
         {
            this.§6!l§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§@![§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§@![§)
            {
               this.§6!l§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§2!d§(b2CircleContact.§83§,b2CircleContact.§&!`§,b2Shape.§;e§,b2Shape.§;e§);
         this.§2!d§(b2PolyAndCircleContact.§83§,b2PolyAndCircleContact.§&!`§,b2Shape.§[X§,b2Shape.§;e§);
         this.§2!d§(b2PolygonContact.§83§,b2PolygonContact.§&!`§,b2Shape.§[X§,b2Shape.§[X§);
         this.§2!d§(b2EdgeAndCircleContact.§83§,b2EdgeAndCircleContact.§&!`§,b2Shape.§9"-§,b2Shape.§;e§);
         this.§2!d§(b2PolyAndEdgeContact.§83§,b2PolyAndEdgeContact.§&!`§,b2Shape.§[X§,b2Shape.§9"-§);
      }
      
      public function §83§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.get();
         var _loc4_:int = param2.get();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§6!l§[_loc3_][_loc4_]).§!Z§)
         {
            _loc6_ = _loc5_.§!Z§;
            _loc5_.§!Z§ = _loc6_.§1""§;
            --_loc5_.§>Q§;
            _loc6_.§8d§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§"7§)).§8d§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§"7§)).§8d§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §&!`§(param1:b2Contact) : void
      {
         if(param1.§7!W§.§[!3§ > 0)
         {
            param1.§'!$§.m_body.SetAwake(true);
            param1.§>!#§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§'!$§.get();
         var _loc3_:int = param1.§>!#§.get();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§6!l§[_loc2_][_loc3_]).§>Q§;
         param1.§1""§ = _loc4_.§!Z§;
         _loc4_.§!Z§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§"7§);
      }
   }
}
