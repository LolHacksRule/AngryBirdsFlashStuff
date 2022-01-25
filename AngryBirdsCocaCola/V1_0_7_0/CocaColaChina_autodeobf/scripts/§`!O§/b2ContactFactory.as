package §`!O§
{
   import § Y§.*;
   import §#!M§.*;
   import §4U§.*;
   import §<!8§.*;
   import §>![§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §?T§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §?!-§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§?!-§ = param1;
         this.§ ;§();
      }
      
      b2internal function §+A§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§?T§[param3][param4].createFcn = param1;
         this.§?T§[param3][param4].destroyFcn = param2;
         this.§?T§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§?T§[param4][param3].createFcn = param1;
            this.§?T§[param4][param3].destroyFcn = param2;
            this.§?T§[param4][param3].primary = false;
         }
      }
      
      b2internal function § ;§() : void
      {
         var _loc2_:int = 0;
         this.§?T§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§=W§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§=W§)
         {
            this.§?T§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§=W§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§=W§)
            {
               this.§?T§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§+A§(b2CircleContact.§&!W§,b2CircleContact.§'D§,b2Shape.§4!c§,b2Shape.§4!c§);
         this.§+A§(b2PolyAndCircleContact.§&!W§,b2PolyAndCircleContact.§'D§,b2Shape.§6!2§,b2Shape.§4!c§);
         this.§+A§(b2PolygonContact.§&!W§,b2PolygonContact.§'D§,b2Shape.§6!2§,b2Shape.§6!2§);
         this.§+A§(b2EdgeAndCircleContact.§&!W§,b2EdgeAndCircleContact.§'D§,b2Shape.§-!<§,b2Shape.§4!c§);
         this.§+A§(b2PolyAndEdgeContact.§&!W§,b2PolyAndEdgeContact.§'D§,b2Shape.§6!2§,b2Shape.§-!<§);
      }
      
      public function §&!W§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§6`§();
         var _loc4_:int = param2.§6`§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§?T§[_loc3_][_loc4_]).§55§)
         {
            _loc6_ = _loc5_.§55§;
            _loc5_.§55§ = _loc6_.§^!B§;
            --_loc5_.§6D§;
            _loc6_.§&4§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§?!-§)).§&4§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§?!-§)).§&4§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §'D§(param1:b2Contact) : void
      {
         if(param1.§^v§.§!L§ > 0)
         {
            param1.§'c§.m_body.SetAwake(true);
            param1.§"!^§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§'c§.§6`§();
         var _loc3_:int = param1.§"!^§.§6`§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§?T§[_loc2_][_loc3_]).§6D§;
         param1.§^!B§ = _loc4_.§55§;
         _loc4_.§55§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§?!-§);
      }
   }
}
