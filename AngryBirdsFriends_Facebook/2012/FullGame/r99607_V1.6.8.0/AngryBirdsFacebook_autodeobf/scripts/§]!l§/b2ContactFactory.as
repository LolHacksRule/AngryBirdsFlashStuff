package §]!l§
{
   import § !k§.*;
   import §!"8§.*;
   import §&I§.*;
   import §6!d§.*;
   import §in§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §]!p§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §0!k§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§0!k§ = param1;
         this.§;!"§();
      }
      
      b2internal function §]'§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§]!p§[param3][param4].createFcn = param1;
         this.§]!p§[param3][param4].destroyFcn = param2;
         this.§]!p§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§]!p§[param4][param3].createFcn = param1;
            this.§]!p§[param4][param3].destroyFcn = param2;
            this.§]!p§[param4][param3].primary = false;
         }
      }
      
      b2internal function §;!"§() : void
      {
         var _loc2_:int = 0;
         this.§]!p§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§8!S§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§8!S§)
         {
            this.§]!p§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§8!S§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§8!S§)
            {
               this.§]!p§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§]'§(b2CircleContact.§#!b§,b2CircleContact.§1?§,b2Shape.§-"=§,b2Shape.§-"=§);
         this.§]'§(b2PolyAndCircleContact.§#!b§,b2PolyAndCircleContact.§1?§,b2Shape.§?! §,b2Shape.§-"=§);
         this.§]'§(b2PolygonContact.§#!b§,b2PolygonContact.§1?§,b2Shape.§?! §,b2Shape.§?! §);
         this.§]'§(b2EdgeAndCircleContact.§#!b§,b2EdgeAndCircleContact.§1?§,b2Shape.§0_§,b2Shape.§-"=§);
         this.§]'§(b2PolyAndEdgeContact.§#!b§,b2PolyAndEdgeContact.§1?§,b2Shape.§?! §,b2Shape.§0_§);
      }
      
      public function §#!b§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§9!j§();
         var _loc4_:int = param2.§9!j§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§]!p§[_loc3_][_loc4_]).§?!1§)
         {
            _loc6_ = _loc5_.§?!1§;
            _loc5_.§?!1§ = _loc6_.§7"@§;
            --_loc5_.§1>§;
            _loc6_.§`!r§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§0!k§)).§`!r§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§0!k§)).§`!r§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §1?§(param1:b2Contact) : void
      {
         if(param1.§"t§.§`p§ > 0)
         {
            param1.§'!u§.m_body.SetAwake(true);
            param1.§ !X§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§'!u§.§9!j§();
         var _loc3_:int = param1.§ !X§.§9!j§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§]!p§[_loc2_][_loc3_]).§1>§;
         param1.§7"@§ = _loc4_.§?!1§;
         _loc4_.§?!1§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§0!k§);
      }
   }
}
