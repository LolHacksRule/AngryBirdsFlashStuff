package §=!n§
{
   import §'!&§.*;
   import §,Z§.*;
   import §3c§.*;
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §!!P§:Vector.<Vector.<b2ContactRegister>>;
      
      private var § B§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§ B§ = param1;
         this.§^x§();
      }
      
      b2internal function §""=§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§!!P§[param3][param4].createFcn = param1;
         this.§!!P§[param3][param4].destroyFcn = param2;
         this.§!!P§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§!!P§[param4][param3].createFcn = param1;
            this.§!!P§[param4][param3].destroyFcn = param2;
            this.§!!P§[param4][param3].primary = false;
         }
      }
      
      b2internal function §^x§() : void
      {
         var _loc2_:int = 0;
         this.§!!P§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§=",§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§=",§)
         {
            this.§!!P§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§=",§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§=",§)
            {
               this.§!!P§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§""=§(b2CircleContact.§]H§,b2CircleContact.§^!a§,b2Shape.§-M§,b2Shape.§-M§);
         this.§""=§(b2PolyAndCircleContact.§]H§,b2PolyAndCircleContact.§^!a§,b2Shape.§4"+§,b2Shape.§-M§);
         this.§""=§(b2PolygonContact.§]H§,b2PolygonContact.§^!a§,b2Shape.§4"+§,b2Shape.§4"+§);
         this.§""=§(b2EdgeAndCircleContact.§]H§,b2EdgeAndCircleContact.§^!a§,b2Shape.§0"§,b2Shape.§-M§);
         this.§""=§(b2PolyAndEdgeContact.§]H§,b2PolyAndEdgeContact.§^!a§,b2Shape.§4"+§,b2Shape.§0"§);
      }
      
      public function §]H§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§@!N§();
         var _loc4_:int = param2.§@!N§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§!!P§[_loc3_][_loc4_]).§%g§)
         {
            _loc6_ = _loc5_.§%g§;
            _loc5_.§%g§ = _loc6_.§+!o§;
            --_loc5_.§1y§;
            _loc6_.§`"<§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§ B§)).§`"<§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§ B§)).§`"<§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §^!a§(param1:b2Contact) : void
      {
         if(param1.§8!?§.§[!J§ > 0)
         {
            param1.§;"B§.m_body.SetAwake(true);
            param1.§8q§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§;"B§.§@!N§();
         var _loc3_:int = param1.§8q§.§@!N§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§!!P§[_loc2_][_loc3_]).§1y§;
         param1.§+!o§ = _loc4_.§%g§;
         _loc4_.§%g§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§ B§);
      }
   }
}
