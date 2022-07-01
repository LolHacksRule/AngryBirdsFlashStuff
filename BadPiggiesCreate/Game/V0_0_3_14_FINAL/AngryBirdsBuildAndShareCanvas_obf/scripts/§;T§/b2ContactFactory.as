package §;T§
{
   import §"!9§.*;
   import §+S§.*;
   import §2"=§.*;
   import §5!o§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §=!B§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §=!6§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§=!6§ = param1;
         this.§#2§();
      }
      
      b2internal function § "0§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§=!B§[param3][param4].createFcn = param1;
         this.§=!B§[param3][param4].destroyFcn = param2;
         this.§=!B§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§=!B§[param4][param3].createFcn = param1;
            this.§=!B§[param4][param3].destroyFcn = param2;
            this.§=!B§[param4][param3].primary = false;
         }
      }
      
      b2internal function §#2§() : void
      {
         var _loc2_:int = 0;
         this.§=!B§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§;!Q§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§;!Q§)
         {
            this.§=!B§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§;!Q§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§;!Q§)
            {
               this.§=!B§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§ "0§(b2CircleContact.§-!x§,b2CircleContact.§;&§,b2Shape.§[x§,b2Shape.§[x§);
         this.§ "0§(b2PolyAndCircleContact.§-!x§,b2PolyAndCircleContact.§;&§,b2Shape.§4A§,b2Shape.§[x§);
         this.§ "0§(b2PolygonContact.§-!x§,b2PolygonContact.§;&§,b2Shape.§4A§,b2Shape.§4A§);
         this.§ "0§(b2EdgeAndCircleContact.§-!x§,b2EdgeAndCircleContact.§;&§,b2Shape.§;!O§,b2Shape.§[x§);
         this.§ "0§(b2PolyAndEdgeContact.§-!x§,b2PolyAndEdgeContact.§;&§,b2Shape.§4A§,b2Shape.§;!O§);
      }
      
      public function §-!x§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§+!O§();
         var _loc4_:int = param2.§+!O§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§=!B§[_loc3_][_loc4_]).§,e§)
         {
            _loc6_ = _loc5_.§,e§;
            _loc5_.§,e§ = _loc6_.§>""§;
            --_loc5_.§7!y§;
            _loc6_.§%i§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§=!6§)).§%i§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§=!6§)).§%i§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §;&§(param1:b2Contact) : void
      {
         if(param1.§=&§.§<!c§ > 0)
         {
            param1.§5"$§.m_body.SetAwake(true);
            param1.dynamic.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§5"$§.§+!O§();
         var _loc3_:int = param1.dynamic.§+!O§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§=!B§[_loc2_][_loc3_]).§7!y§;
         param1.§>""§ = _loc4_.§,e§;
         _loc4_.§,e§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§=!6§);
      }
   }
}
