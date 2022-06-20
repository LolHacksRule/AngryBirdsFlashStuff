package §!D§
{
   import §#]§.*;
   import §4!!§.*;
   import §48§.*;
   import §55§.*;
   import §<!`§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §!>§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §"!7§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§"!7§ = param1;
         this.§5!r§();
      }
      
      b2internal function §&!p§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§!>§[param3][param4].createFcn = param1;
         this.§!>§[param3][param4].destroyFcn = param2;
         this.§!>§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§!>§[param4][param3].createFcn = param1;
            this.§!>§[param4][param3].destroyFcn = param2;
            this.§!>§[param4][param3].primary = false;
         }
      }
      
      b2internal function §5!r§() : void
      {
         var _loc2_:int = 0;
         this.§!>§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§'"A§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§'"A§)
         {
            this.§!>§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§'"A§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§'"A§)
            {
               this.§!>§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§&!p§(b2CircleContact.§?!Q§,b2CircleContact.§'S§,b2Shape.§'!U§,b2Shape.§'!U§);
         this.§&!p§(b2PolyAndCircleContact.§?!Q§,b2PolyAndCircleContact.§'S§,b2Shape.§@!#§,b2Shape.§'!U§);
         this.§&!p§(b2PolygonContact.§?!Q§,b2PolygonContact.§'S§,b2Shape.§@!#§,b2Shape.§@!#§);
         this.§&!p§(b2EdgeAndCircleContact.§?!Q§,b2EdgeAndCircleContact.§'S§,b2Shape.§`M§,b2Shape.§'!U§);
         this.§&!p§(b2PolyAndEdgeContact.§?!Q§,b2PolyAndEdgeContact.§'S§,b2Shape.§@!#§,b2Shape.§`M§);
      }
      
      public function §?!Q§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§"r§();
         var _loc4_:int = param2.§"r§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§!>§[_loc3_][_loc4_]).§;§)
         {
            _loc6_ = _loc5_.§;§;
            _loc5_.§;§ = _loc6_.§%"@§;
            --_loc5_.§;"0§;
            _loc6_.§<t§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§"!7§)).§<t§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§"!7§)).§<t§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §'S§(param1:b2Contact) : void
      {
         if(param1.§@! §.§^M§ > 0)
         {
            param1.§3t§.m_body.SetAwake(true);
            param1.§?!p§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§3t§.§"r§();
         var _loc3_:int = param1.§?!p§.§"r§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§!>§[_loc2_][_loc3_]).§;"0§;
         param1.§%"@§ = _loc4_.§;§;
         _loc4_.§;§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§"!7§);
      }
   }
}
