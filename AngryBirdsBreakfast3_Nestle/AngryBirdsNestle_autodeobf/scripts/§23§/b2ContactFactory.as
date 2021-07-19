package §23§
{
   import §!§.*;
   import §'!_§.*;
   import §0"!§.*;
   import §=!!§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §#!=§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §;!b§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§;!b§ = param1;
         this.§`D§();
      }
      
      b2internal function §2!a§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§#!=§[param3][param4].createFcn = param1;
         this.§#!=§[param3][param4].destroyFcn = param2;
         this.§#!=§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§#!=§[param4][param3].createFcn = param1;
            this.§#!=§[param4][param3].destroyFcn = param2;
            this.§#!=§[param4][param3].primary = false;
         }
      }
      
      b2internal function §`D§() : void
      {
         var _loc2_:int = 0;
         this.§#!=§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§"a§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§"a§)
         {
            this.§#!=§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§"a§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§"a§)
            {
               this.§#!=§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§2!a§(b2CircleContact.§'!D§,b2CircleContact.§7!d§,b2Shape.§+!B§,b2Shape.§+!B§);
         this.§2!a§(b2PolyAndCircleContact.§'!D§,b2PolyAndCircleContact.§7!d§,b2Shape.§3!;§,b2Shape.§+!B§);
         this.§2!a§(b2PolygonContact.§'!D§,b2PolygonContact.§7!d§,b2Shape.§3!;§,b2Shape.§3!;§);
         this.§2!a§(b2EdgeAndCircleContact.§'!D§,b2EdgeAndCircleContact.§7!d§,b2Shape.§ 8§,b2Shape.§+!B§);
         this.§2!a§(b2PolyAndEdgeContact.§'!D§,b2PolyAndEdgeContact.§7!d§,b2Shape.§3!;§,b2Shape.§ 8§);
      }
      
      public function §'!D§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§4!v§();
         var _loc4_:int = param2.§4!v§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§#!=§[_loc3_][_loc4_]).§'!<§)
         {
            _loc6_ = _loc5_.§'!<§;
            _loc5_.§'!<§ = _loc6_.§6!c§;
            --_loc5_.§[!7§;
            _loc6_.§[!2§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§;!b§)).§[!2§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§;!b§)).§[!2§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §7!d§(param1:b2Contact) : void
      {
         if(param1.§=!u§.§4!5§ > 0)
         {
            param1.§2!k§.m_body.SetAwake(true);
            param1.§4!l§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§2!k§.§4!v§();
         var _loc3_:int = param1.§4!l§.§4!v§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§#!=§[_loc2_][_loc3_]).§[!7§;
         param1.§6!c§ = _loc4_.§'!<§;
         _loc4_.§'!<§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§;!b§);
      }
   }
}
