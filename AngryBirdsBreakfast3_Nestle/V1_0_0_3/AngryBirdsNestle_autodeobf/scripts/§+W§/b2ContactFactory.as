package §+W§
{
   import § !%§.*;
   import §,!k§.*;
   import §6f§.*;
   import §;'§.*;
   import §?m§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §;!7§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §#p§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§#p§ = param1;
         this.§>!7§();
      }
      
      b2internal function § !b§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§;!7§[param3][param4].createFcn = param1;
         this.§;!7§[param3][param4].destroyFcn = param2;
         this.§;!7§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§;!7§[param4][param3].createFcn = param1;
            this.§;!7§[param4][param3].destroyFcn = param2;
            this.§;!7§[param4][param3].primary = false;
         }
      }
      
      b2internal function §>!7§() : void
      {
         var _loc2_:int = 0;
         this.§;!7§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§3"%§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§3"%§)
         {
            this.§;!7§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§3"%§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§3"%§)
            {
               this.§;!7§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§ !b§(b2CircleContact.§-",§,b2CircleContact.§'!h§,b2Shape.§;"4§,b2Shape.§;"4§);
         this.§ !b§(b2PolyAndCircleContact.§-",§,b2PolyAndCircleContact.§'!h§,b2Shape.§!Y§,b2Shape.§;"4§);
         this.§ !b§(b2PolygonContact.§-",§,b2PolygonContact.§'!h§,b2Shape.§!Y§,b2Shape.§!Y§);
         this.§ !b§(b2EdgeAndCircleContact.§-",§,b2EdgeAndCircleContact.§'!h§,b2Shape.§3J§,b2Shape.§;"4§);
         this.§ !b§(b2PolyAndEdgeContact.§-",§,b2PolyAndEdgeContact.§'!h§,b2Shape.§!Y§,b2Shape.§3J§);
      }
      
      public function §-",§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§]"$§();
         var _loc4_:int = param2.§]"$§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§;!7§[_loc3_][_loc4_]).§5!,§)
         {
            _loc6_ = _loc5_.§5!,§;
            _loc5_.§5!,§ = _loc6_.§1F§;
            --_loc5_.§6!J§;
            _loc6_.§,E§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§#p§)).§,E§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§#p§)).§,E§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §'!h§(param1:b2Contact) : void
      {
         if(param1.§8!;§.§%!x§ > 0)
         {
            param1.§+"'§.m_body.SetAwake(true);
            param1.§;!Z§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§+"'§.§]"$§();
         var _loc3_:int = param1.§;!Z§.§]"$§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§;!7§[_loc2_][_loc3_]).§6!J§;
         param1.§1F§ = _loc4_.§5!,§;
         _loc4_.§5!,§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§#p§);
      }
   }
}
