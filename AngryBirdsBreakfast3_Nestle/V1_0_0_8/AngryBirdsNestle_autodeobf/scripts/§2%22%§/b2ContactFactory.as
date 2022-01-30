package §2"%§
{
   import §-j§.*;
   import §7!F§.*;
   import §=!c§.*;
   import §[K§.*;
   import §[e§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §^"0§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §""0§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§""0§ = param1;
         this.§ !;§();
      }
      
      b2internal function §=4§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§^"0§[param3][param4].createFcn = param1;
         this.§^"0§[param3][param4].destroyFcn = param2;
         this.§^"0§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§^"0§[param4][param3].createFcn = param1;
            this.§^"0§[param4][param3].destroyFcn = param2;
            this.§^"0§[param4][param3].primary = false;
         }
      }
      
      b2internal function § !;§() : void
      {
         var _loc2_:int = 0;
         this.§^"0§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§5!E§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§5!E§)
         {
            this.§^"0§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§5!E§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§5!E§)
            {
               this.§^"0§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§=4§(b2CircleContact.§<!n§,b2CircleContact.§6!j§,b2Shape.§?!%§,b2Shape.§?!%§);
         this.§=4§(b2PolyAndCircleContact.§<!n§,b2PolyAndCircleContact.§6!j§,b2Shape.§+"0§,b2Shape.§?!%§);
         this.§=4§(b2PolygonContact.§<!n§,b2PolygonContact.§6!j§,b2Shape.§+"0§,b2Shape.§+"0§);
         this.§=4§(b2EdgeAndCircleContact.§<!n§,b2EdgeAndCircleContact.§6!j§,b2Shape.§%c§,b2Shape.§?!%§);
         this.§=4§(b2PolyAndEdgeContact.§<!n§,b2PolyAndEdgeContact.§6!j§,b2Shape.§+"0§,b2Shape.§%c§);
      }
      
      public function §<!n§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§&!u§();
         var _loc4_:int = param2.§&!u§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§^"0§[_loc3_][_loc4_]).§8!q§)
         {
            _loc6_ = _loc5_.§8!q§;
            _loc5_.§8!q§ = _loc6_.§4!c§;
            --_loc5_.§>!'§;
            _loc6_.§&-§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§""0§)).§&-§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§""0§)).§&-§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §6!j§(param1:b2Contact) : void
      {
         if(param1.§8n§.§^"§ > 0)
         {
            param1.§`!P§.m_body.SetAwake(true);
            param1.§%!§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§`!P§.§&!u§();
         var _loc3_:int = param1.§%!§.§&!u§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§^"0§[_loc2_][_loc3_]).§>!'§;
         param1.§4!c§ = _loc4_.§8!q§;
         _loc4_.§8!q§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§""0§);
      }
   }
}
