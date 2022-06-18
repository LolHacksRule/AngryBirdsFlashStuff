package §3!O§
{
   import § !5§.*;
   import §+,§.*;
   import §-!$§.*;
   import §?§.*;
   import §[W§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §3!P§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §8!B§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§8!B§ = param1;
         this.§&!0§();
      }
      
      b2internal function §0@§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§3!P§[param3][param4].createFcn = param1;
         this.§3!P§[param3][param4].destroyFcn = param2;
         this.§3!P§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§3!P§[param4][param3].createFcn = param1;
            this.§3!P§[param4][param3].destroyFcn = param2;
            this.§3!P§[param4][param3].primary = false;
         }
      }
      
      b2internal function §&!0§() : void
      {
         var _loc2_:int = 0;
         this.§3!P§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§+!$§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§+!$§)
         {
            this.§3!P§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§+!$§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§+!$§)
            {
               this.§3!P§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§0@§(b2CircleContact.§2Q§,b2CircleContact.§;t§,b2Shape.§@B§,b2Shape.§@B§);
         this.§0@§(b2PolyAndCircleContact.§2Q§,b2PolyAndCircleContact.§;t§,b2Shape.§0D§,b2Shape.§@B§);
         this.§0@§(b2PolygonContact.§2Q§,b2PolygonContact.§;t§,b2Shape.§0D§,b2Shape.§0D§);
         this.§0@§(b2EdgeAndCircleContact.§2Q§,b2EdgeAndCircleContact.§;t§,b2Shape.§]!]§,b2Shape.§@B§);
         this.§0@§(b2PolyAndEdgeContact.§2Q§,b2PolyAndEdgeContact.§;t§,b2Shape.§0D§,b2Shape.§]!]§);
      }
      
      public function §2Q§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§@i§();
         var _loc4_:int = param2.§@i§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§3!P§[_loc3_][_loc4_]).§[f§)
         {
            _loc6_ = _loc5_.§[f§;
            _loc5_.§[f§ = _loc6_.§60§;
            --_loc5_.§>i§;
            _loc6_.§[X§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§8!B§)).§[X§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§8!B§)).§[X§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §;t§(param1:b2Contact) : void
      {
         if(param1.§'!,§.§6!G§ > 0)
         {
            param1.§-"§.m_body.SetAwake(true);
            param1.§@8§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§-"§.§@i§();
         var _loc3_:int = param1.§@8§.§@i§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§3!P§[_loc2_][_loc3_]).§>i§;
         param1.§60§ = _loc4_.§[f§;
         _loc4_.§[f§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§8!B§);
      }
   }
}
