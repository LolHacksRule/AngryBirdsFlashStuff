package §8Y§
{
   import §&U§.*;
   import §0!G§.*;
   import §2!F§.*;
   import §9"§.*;
   import §`j§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §?"§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §,]§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§,]§ = param1;
         this.§&!4§();
      }
      
      b2internal function §%!_§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§?"§[param3][param4].createFcn = param1;
         this.§?"§[param3][param4].destroyFcn = param2;
         this.§?"§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§?"§[param4][param3].createFcn = param1;
            this.§?"§[param4][param3].destroyFcn = param2;
            this.§?"§[param4][param3].primary = false;
         }
      }
      
      b2internal function §&!4§() : void
      {
         var _loc2_:int = 0;
         this.§?"§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§53§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§53§)
         {
            this.§?"§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§53§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§53§)
            {
               this.§?"§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§%!_§(b2CircleContact.§>y§,b2CircleContact.§;@§,b2Shape.§&!L§,b2Shape.§&!L§);
         this.§%!_§(b2PolyAndCircleContact.§>y§,b2PolyAndCircleContact.§;@§,b2Shape.§,!K§,b2Shape.§&!L§);
         this.§%!_§(b2PolygonContact.§>y§,b2PolygonContact.§;@§,b2Shape.§,!K§,b2Shape.§,!K§);
         this.§%!_§(b2EdgeAndCircleContact.§>y§,b2EdgeAndCircleContact.§;@§,b2Shape.§ Y§,b2Shape.§&!L§);
         this.§%!_§(b2PolyAndEdgeContact.§>y§,b2PolyAndEdgeContact.§;@§,b2Shape.§,!K§,b2Shape.§ Y§);
      }
      
      public function §>y§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§"!M§();
         var _loc4_:int = param2.§"!M§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§?"§[_loc3_][_loc4_]).§+!§)
         {
            _loc6_ = _loc5_.§+!§;
            _loc5_.§+!§ = _loc6_.§#!&§;
            --_loc5_.§-5§;
            _loc6_.§8j§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§,]§)).§8j§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§,]§)).§8j§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §;@§(param1:b2Contact) : void
      {
         if(param1.§&C§.§!$§ > 0)
         {
            param1.§1!,§.m_body.SetAwake(true);
            param1.§7+§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§1!,§.§"!M§();
         var _loc3_:int = param1.§7+§.§"!M§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§?"§[_loc2_][_loc3_]).§-5§;
         param1.§#!&§ = _loc4_.§+!§;
         _loc4_.§+!§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§,]§);
      }
   }
}
