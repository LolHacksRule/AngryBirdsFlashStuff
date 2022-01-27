package §30§
{
   import § o§.*;
   import §"0§.*;
   import §-r§.*;
   import §6!H§.*;
   import §]!S§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §]i§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §`!Y§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§`!Y§ = param1;
         this.§]!-§();
      }
      
      b2internal function §'u§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§]i§[param3][param4].createFcn = param1;
         this.§]i§[param3][param4].destroyFcn = param2;
         this.§]i§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§]i§[param4][param3].createFcn = param1;
            this.§]i§[param4][param3].destroyFcn = param2;
            this.§]i§[param4][param3].primary = false;
         }
      }
      
      b2internal function §]!-§() : void
      {
         var _loc2_:int = 0;
         this.§]i§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§2!6§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§2!6§)
         {
            this.§]i§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§2!6§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§2!6§)
            {
               this.§]i§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§'u§(b2CircleContact.§#!M§,b2CircleContact.§[!$§,b2Shape.§,-§,b2Shape.§,-§);
         this.§'u§(b2PolyAndCircleContact.§#!M§,b2PolyAndCircleContact.§[!$§,b2Shape.§"![§,b2Shape.§,-§);
         this.§'u§(b2PolygonContact.§#!M§,b2PolygonContact.§[!$§,b2Shape.§"![§,b2Shape.§"![§);
         this.§'u§(b2EdgeAndCircleContact.§#!M§,b2EdgeAndCircleContact.§[!$§,b2Shape.§#!D§,b2Shape.§,-§);
         this.§'u§(b2PolyAndEdgeContact.§#!M§,b2PolyAndEdgeContact.§[!$§,b2Shape.§"![§,b2Shape.§#!D§);
      }
      
      public function §#!M§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§7!_§();
         var _loc4_:int = param2.§7!_§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§]i§[_loc3_][_loc4_]).§"!7§)
         {
            _loc6_ = _loc5_.§"!7§;
            _loc5_.§"!7§ = _loc6_.§-![§;
            --_loc5_.§7!L§;
            _loc6_.§2'§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§`!Y§)).§2'§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§`!Y§)).§2'§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §[!$§(param1:b2Contact) : void
      {
         if(param1.§-0§.§break§ > 0)
         {
            param1.§45§.m_body.SetAwake(true);
            param1.§?G§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§45§.§7!_§();
         var _loc3_:int = param1.§?G§.§7!_§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§]i§[_loc2_][_loc3_]).§7!L§;
         param1.§-![§ = _loc4_.§"!7§;
         _loc4_.§"!7§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§`!Y§);
      }
   }
}
