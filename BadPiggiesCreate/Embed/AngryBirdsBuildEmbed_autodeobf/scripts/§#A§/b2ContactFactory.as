package §#A§
{
   import § !t§.*;
   import §#b§.*;
   import §'!;§.*;
   import §<!B§.*;
   import §?s§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §&!H§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §4!5§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§4!5§ = param1;
         this.§6!Z§();
      }
      
      b2internal function §]!?§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§&!H§[param3][param4].createFcn = param1;
         this.§&!H§[param3][param4].destroyFcn = param2;
         this.§&!H§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§&!H§[param4][param3].createFcn = param1;
            this.§&!H§[param4][param3].destroyFcn = param2;
            this.§&!H§[param4][param3].primary = false;
         }
      }
      
      b2internal function §6!Z§() : void
      {
         var _loc2_:int = 0;
         this.§&!H§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§=D§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§=D§)
         {
            this.§&!H§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§=D§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§=D§)
            {
               this.§&!H§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§]!?§(b2CircleContact.§?J§,b2CircleContact.§;!#§,b2Shape.§@!>§,b2Shape.§@!>§);
         this.§]!?§(b2PolyAndCircleContact.§?J§,b2PolyAndCircleContact.§;!#§,b2Shape.§>>§,b2Shape.§@!>§);
         this.§]!?§(b2PolygonContact.§?J§,b2PolygonContact.§;!#§,b2Shape.§>>§,b2Shape.§>>§);
         this.§]!?§(b2EdgeAndCircleContact.§?J§,b2EdgeAndCircleContact.§;!#§,b2Shape.§<5§,b2Shape.§@!>§);
         this.§]!?§(b2PolyAndEdgeContact.§?J§,b2PolyAndEdgeContact.§;!#§,b2Shape.§>>§,b2Shape.§<5§);
      }
      
      public function §?J§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§"!j§();
         var _loc4_:int = param2.§"!j§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§&!H§[_loc3_][_loc4_]).§"!e§)
         {
            _loc6_ = _loc5_.§"!e§;
            _loc5_.§"!e§ = _loc6_.§ <§;
            --_loc5_.§]!#§;
            _loc6_.§^!]§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§4!5§)).§^!]§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§4!5§)).§^!]§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §;!#§(param1:b2Contact) : void
      {
         if(param1.§@%§.§+!X§ > 0)
         {
            param1.§4b§.m_body.SetAwake(true);
            param1.§"'§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§4b§.§"!j§();
         var _loc3_:int = param1.§"'§.§"!j§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§&!H§[_loc2_][_loc3_]).§]!#§;
         param1.§ <§ = _loc4_.§"!e§;
         _loc4_.§"!e§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§4!5§);
      }
   }
}
