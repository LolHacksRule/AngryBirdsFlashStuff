package §!!o§
{
   import §,P§.*;
   import §-%§.*;
   import §9"5§.*;
   import §>!R§.*;
   import §>"&§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §-![§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §?!R§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§?!R§ = param1;
         this.§1!n§();
      }
      
      b2internal function §9!x§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§-![§[param3][param4].createFcn = param1;
         this.§-![§[param3][param4].destroyFcn = param2;
         this.§-![§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§-![§[param4][param3].createFcn = param1;
            this.§-![§[param4][param3].destroyFcn = param2;
            this.§-![§[param4][param3].primary = false;
         }
      }
      
      b2internal function §1!n§() : void
      {
         var _loc2_:int = 0;
         this.§-![§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§"%§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§"%§)
         {
            this.§-![§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§"%§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§"%§)
            {
               this.§-![§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§9!x§(b2CircleContact.§0!8§,b2CircleContact.§&`§,b2Shape.§+;§,b2Shape.§+;§);
         this.§9!x§(b2PolyAndCircleContact.§0!8§,b2PolyAndCircleContact.§&`§,b2Shape.§`g§,b2Shape.§+;§);
         this.§9!x§(b2PolygonContact.§0!8§,b2PolygonContact.§&`§,b2Shape.§`g§,b2Shape.§`g§);
         this.§9!x§(b2EdgeAndCircleContact.§0!8§,b2EdgeAndCircleContact.§&`§,b2Shape.§-!g§,b2Shape.§+;§);
         this.§9!x§(b2PolyAndEdgeContact.§0!8§,b2PolyAndEdgeContact.§&`§,b2Shape.§`g§,b2Shape.§-!g§);
      }
      
      public function §0!8§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§4!C§();
         var _loc4_:int = param2.§4!C§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§-![§[_loc3_][_loc4_]).§]s§)
         {
            _loc6_ = _loc5_.§]s§;
            _loc5_.§]s§ = _loc6_.§]4§;
            --_loc5_.§[!1§;
            _loc6_.§=a§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§?!R§)).§=a§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§?!R§)).§=a§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §&`§(param1:b2Contact) : void
      {
         if(param1.§@"$§.§"!;§ > 0)
         {
            param1.§4<§.m_body.SetAwake(true);
            param1.§6%§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§4<§.§4!C§();
         var _loc3_:int = param1.§6%§.§4!C§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§-![§[_loc2_][_loc3_]).§[!1§;
         param1.§]4§ = _loc4_.§]s§;
         _loc4_.§]s§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§?!R§);
      }
   }
}
