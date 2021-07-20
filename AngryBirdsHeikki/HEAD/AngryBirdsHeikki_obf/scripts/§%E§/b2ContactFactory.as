package §%E§
{
   import §+d§.*;
   import §6%§.*;
   import §8`§.*;
   import §=n§.*;
   import §`!^§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §4-§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §;!H§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§;!H§ = param1;
         this.§0'§();
      }
      
      b2internal function §^e§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§4-§[param3][param4].createFcn = param1;
         this.§4-§[param3][param4].destroyFcn = param2;
         this.§4-§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§4-§[param4][param3].createFcn = param1;
            this.§4-§[param4][param3].destroyFcn = param2;
            this.§4-§[param4][param3].primary = false;
         }
      }
      
      b2internal function §0'§() : void
      {
         var _loc2_:int = 0;
         this.§4-§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§5!+§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§5!+§)
         {
            this.§4-§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§5!+§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§5!+§)
            {
               this.§4-§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§^e§(b2CircleContact.§2!f§,b2CircleContact.§9!1§,b2Shape.§%!@§,b2Shape.§%!@§);
         this.§^e§(b2PolyAndCircleContact.§2!f§,b2PolyAndCircleContact.§9!1§,b2Shape.§0B§,b2Shape.§%!@§);
         this.§^e§(b2PolygonContact.§2!f§,b2PolygonContact.§9!1§,b2Shape.§0B§,b2Shape.§0B§);
         this.§^e§(b2EdgeAndCircleContact.§2!f§,b2EdgeAndCircleContact.§9!1§,b2Shape.§<!g§,b2Shape.§%!@§);
         this.§^e§(b2PolyAndEdgeContact.§2!f§,b2PolyAndEdgeContact.§9!1§,b2Shape.§0B§,b2Shape.§<!g§);
      }
      
      public function §2!f§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§,!d§();
         var _loc4_:int = param2.§,!d§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§4-§[_loc3_][_loc4_]).§!!e§)
         {
            _loc6_ = _loc5_.§!!e§;
            _loc5_.§!!e§ = _loc6_.§8A§;
            --_loc5_.§-R§;
            _loc6_.§"!K§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§;!H§)).§"!K§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§;!H§)).§"!K§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §9!1§(param1:b2Contact) : void
      {
         if(param1.§>!b§.§;!e§ > 0)
         {
            param1.§[!d§.m_body.SetAwake(true);
            param1.§#!^§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§[!d§.§,!d§();
         var _loc3_:int = param1.§#!^§.§,!d§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§4-§[_loc2_][_loc3_]).§-R§;
         param1.§8A§ = _loc4_.§!!e§;
         _loc4_.§!!e§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§;!H§);
      }
   }
}
