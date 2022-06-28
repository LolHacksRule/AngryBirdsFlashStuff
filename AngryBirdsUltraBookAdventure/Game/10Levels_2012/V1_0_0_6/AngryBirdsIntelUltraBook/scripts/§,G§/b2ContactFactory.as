package §,G§
{
   import §#V§.*;
   import §,C§.*;
   import §3!m§.*;
   import §8w§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §]>§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §7!a§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§7!a§ = param1;
         this.§3!N§();
      }
      
      b2internal function §7!R§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§]>§[param3][param4].createFcn = param1;
         this.§]>§[param3][param4].destroyFcn = param2;
         this.§]>§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§]>§[param4][param3].createFcn = param1;
            this.§]>§[param4][param3].destroyFcn = param2;
            this.§]>§[param4][param3].primary = false;
         }
      }
      
      b2internal function §3!N§() : void
      {
         var _loc2_:int = 0;
         this.§]>§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§6§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§6§)
         {
            this.§]>§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§6§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§6§)
            {
               this.§]>§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§7!R§(b2CircleContact.§1#§,b2CircleContact.§,!W§,b2Shape.§1"§,b2Shape.§1"§);
         this.§7!R§(b2PolyAndCircleContact.§1#§,b2PolyAndCircleContact.§,!W§,b2Shape.§+!N§,b2Shape.§1"§);
         this.§7!R§(b2PolygonContact.§1#§,b2PolygonContact.§,!W§,b2Shape.§+!N§,b2Shape.§+!N§);
         this.§7!R§(b2EdgeAndCircleContact.§1#§,b2EdgeAndCircleContact.§,!W§,b2Shape.§`!<§,b2Shape.§1"§);
         this.§7!R§(b2PolyAndEdgeContact.§1#§,b2PolyAndEdgeContact.§,!W§,b2Shape.§+!N§,b2Shape.§`!<§);
      }
      
      public function §1#§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§'!_§();
         var _loc4_:int = param2.§'!_§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§]>§[_loc3_][_loc4_]).§8]§)
         {
            _loc6_ = _loc5_.§8]§;
            _loc5_.§8]§ = _loc6_.§@o§;
            --_loc5_.§`w§;
            _loc6_.§@!b§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§7!a§)).§@!b§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§7!a§)).§@!b§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §,!W§(param1:b2Contact) : void
      {
         if(param1.§2?§.§2V§ > 0)
         {
            param1.§3t§.m_body.SetAwake(true);
            param1.§[i§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§3t§.§'!_§();
         var _loc3_:int = param1.§[i§.§'!_§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§]>§[_loc2_][_loc3_]).§`w§;
         param1.§@o§ = _loc4_.§8]§;
         _loc4_.§8]§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§7!a§);
      }
   }
}
