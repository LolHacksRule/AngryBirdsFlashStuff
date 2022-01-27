package §;!U§
{
   import §!O§.*;
   import §0!=§.*;
   import §0!?§.*;
   import §0^§.*;
   import §`!E§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §7h§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §;B§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§;B§ = param1;
         this.§'!U§();
      }
      
      b2internal function §5t§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§7h§[param3][param4].createFcn = param1;
         this.§7h§[param3][param4].destroyFcn = param2;
         this.§7h§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§7h§[param4][param3].createFcn = param1;
            this.§7h§[param4][param3].destroyFcn = param2;
            this.§7h§[param4][param3].primary = false;
         }
      }
      
      b2internal function §'!U§() : void
      {
         var _loc2_:int = 0;
         this.§7h§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§0?§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§0?§)
         {
            this.§7h§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§0?§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§0?§)
            {
               this.§7h§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§5t§(b2CircleContact.§6>§,b2CircleContact.§>s§,b2Shape.§8!%§,b2Shape.§8!%§);
         this.§5t§(b2PolyAndCircleContact.§6>§,b2PolyAndCircleContact.§>s§,b2Shape.§ !T§,b2Shape.§8!%§);
         this.§5t§(b2PolygonContact.§6>§,b2PolygonContact.§>s§,b2Shape.§ !T§,b2Shape.§ !T§);
         this.§5t§(b2EdgeAndCircleContact.§6>§,b2EdgeAndCircleContact.§>s§,b2Shape.§,z§,b2Shape.§8!%§);
         this.§5t§(b2PolyAndEdgeContact.§6>§,b2PolyAndEdgeContact.§>s§,b2Shape.§ !T§,b2Shape.§,z§);
      }
      
      public function §6>§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§7"§();
         var _loc4_:int = param2.§7"§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§7h§[_loc3_][_loc4_]).§0T§)
         {
            _loc6_ = _loc5_.§0T§;
            _loc5_.§0T§ = _loc6_.§=!T§;
            --_loc5_.§#t§;
            _loc6_.§@%§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§;B§)).§@%§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§;B§)).§@%§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §>s§(param1:b2Contact) : void
      {
         if(param1.§8g§.§+#§ > 0)
         {
            param1.§&'§.m_body.SetAwake(true);
            param1.§[!d§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§&'§.§7"§();
         var _loc3_:int = param1.§[!d§.§7"§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§7h§[_loc2_][_loc3_]).§#t§;
         param1.§=!T§ = _loc4_.§0T§;
         _loc4_.§0T§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§;B§);
      }
   }
}
