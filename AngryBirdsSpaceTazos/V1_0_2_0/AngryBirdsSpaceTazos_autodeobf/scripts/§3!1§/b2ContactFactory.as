package §3!1§
{
   import §#!X§.*;
   import §&!S§.*;
   import §3m§.*;
   import §?f§.*;
   import §@!@§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §-!u§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §9!H§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§9!H§ = param1;
         this.§7"9§();
      }
      
      b2internal function §>_§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§-!u§[param3][param4].createFcn = param1;
         this.§-!u§[param3][param4].destroyFcn = param2;
         this.§-!u§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§-!u§[param4][param3].createFcn = param1;
            this.§-!u§[param4][param3].destroyFcn = param2;
            this.§-!u§[param4][param3].primary = false;
         }
      }
      
      b2internal function §7"9§() : void
      {
         var _loc2_:int = 0;
         this.§-!u§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§4!J§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§4!J§)
         {
            this.§-!u§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§4!J§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§4!J§)
            {
               this.§-!u§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§>_§(b2CircleContact.§;8§,b2CircleContact.§5[§,b2Shape.§>"?§,b2Shape.§>"?§);
         this.§>_§(b2PolyAndCircleContact.§;8§,b2PolyAndCircleContact.§5[§,b2Shape.§"P§,b2Shape.§>"?§);
         this.§>_§(b2PolygonContact.§;8§,b2PolygonContact.§5[§,b2Shape.§"P§,b2Shape.§"P§);
         this.§>_§(b2EdgeAndCircleContact.§;8§,b2EdgeAndCircleContact.§5[§,b2Shape.§9+§,b2Shape.§>"?§);
         this.§>_§(b2PolyAndEdgeContact.§;8§,b2PolyAndEdgeContact.§5[§,b2Shape.§"P§,b2Shape.§9+§);
      }
      
      public function §;8§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§,!k§();
         var _loc4_:int = param2.§,!k§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§-!u§[_loc3_][_loc4_]).§71§)
         {
            _loc6_ = _loc5_.§71§;
            _loc5_.§71§ = _loc6_.§`!s§;
            --_loc5_.§ "!§;
            _loc6_.§3"8§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§9!H§)).§3"8§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§9!H§)).§3"8§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §5[§(param1:b2Contact) : void
      {
         if(param1.§;!z§.§61§ > 0)
         {
            param1.§break§.m_body.SetAwake(true);
            param1.§`!y§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§break§.§,!k§();
         var _loc3_:int = param1.§`!y§.§,!k§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§-!u§[_loc2_][_loc3_]).§ "!§;
         param1.§`!s§ = _loc4_.§71§;
         _loc4_.§71§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§9!H§);
      }
   }
}
