package §>!'§
{
   import §!R§.*;
   import §1B§.*;
   import §9i§.*;
   import §]7§.*;
   import §]q§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §=!R§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §7g§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§7g§ = param1;
         this.§!!'§();
      }
      
      b2internal function §]!T§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§=!R§[param3][param4].createFcn = param1;
         this.§=!R§[param3][param4].destroyFcn = param2;
         this.§=!R§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§=!R§[param4][param3].createFcn = param1;
            this.§=!R§[param4][param3].destroyFcn = param2;
            this.§=!R§[param4][param3].primary = false;
         }
      }
      
      b2internal function §!!'§() : void
      {
         var _loc2_:int = 0;
         this.§=!R§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§]O§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§]O§)
         {
            this.§=!R§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§]O§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§]O§)
            {
               this.§=!R§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§]!T§(b2CircleContact.§ %§,b2CircleContact.§%_§,b2Shape.§9!X§,b2Shape.§9!X§);
         this.§]!T§(b2PolyAndCircleContact.§ %§,b2PolyAndCircleContact.§%_§,b2Shape.§1!N§,b2Shape.§9!X§);
         this.§]!T§(b2PolygonContact.§ %§,b2PolygonContact.§%_§,b2Shape.§1!N§,b2Shape.§1!N§);
         this.§]!T§(b2EdgeAndCircleContact.§ %§,b2EdgeAndCircleContact.§%_§,b2Shape.§6!V§,b2Shape.§9!X§);
         this.§]!T§(b2PolyAndEdgeContact.§ %§,b2PolyAndEdgeContact.§%_§,b2Shape.§1!N§,b2Shape.§6!V§);
      }
      
      public function § %§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§#+§();
         var _loc4_:int = param2.§#+§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§=!R§[_loc3_][_loc4_]).§9!B§)
         {
            _loc6_ = _loc5_.§9!B§;
            _loc5_.§9!B§ = _loc6_.§>y§;
            --_loc5_.§`j§;
            _loc6_.§<! §(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§7g§)).§<! §(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§7g§)).§<! §(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §%_§(param1:b2Contact) : void
      {
         if(param1.§?!N§.§,!!§ > 0)
         {
            param1.§7c§.m_body.SetAwake(true);
            param1.§!!@§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§7c§.§#+§();
         var _loc3_:int = param1.§!!@§.§#+§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§=!R§[_loc2_][_loc3_]).§`j§;
         param1.§>y§ = _loc4_.§9!B§;
         _loc4_.§9!B§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§7g§);
      }
   }
}
