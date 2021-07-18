package §'"6§
{
   import §!"3§.*;
   import §'"-§.*;
   import §,"[§.*;
   import §6!^§.*;
   import §6"1§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §'D§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §>!`§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§>!`§ = param1;
         this.§+!1§();
      }
      
      b2internal function §0"S§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§'D§[param3][param4].createFcn = param1;
         this.§'D§[param3][param4].destroyFcn = param2;
         this.§'D§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§'D§[param4][param3].createFcn = param1;
            this.§'D§[param4][param3].destroyFcn = param2;
            this.§'D§[param4][param3].primary = false;
         }
      }
      
      b2internal function §+!1§() : void
      {
         var _loc2_:int = 0;
         this.§'D§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§,!@§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§,!@§)
         {
            this.§'D§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§,!@§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§,!@§)
            {
               this.§'D§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§0"S§(b2CircleContact.§3!N§,b2CircleContact.§2!s§,b2Shape.§ "&§,b2Shape.§ "&§);
         this.§0"S§(b2PolyAndCircleContact.§3!N§,b2PolyAndCircleContact.§2!s§,b2Shape.§8x§,b2Shape.§ "&§);
         this.§0"S§(b2PolygonContact.§3!N§,b2PolygonContact.§2!s§,b2Shape.§8x§,b2Shape.§8x§);
         this.§0"S§(b2EdgeAndCircleContact.§3!N§,b2EdgeAndCircleContact.§2!s§,b2Shape.§?!7§,b2Shape.§ "&§);
         this.§0"S§(b2PolyAndEdgeContact.§3!N§,b2PolyAndEdgeContact.§2!s§,b2Shape.§8x§,b2Shape.§?!7§);
      }
      
      public function §3!N§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§>!f§();
         var _loc4_:int = param2.§>!f§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§'D§[_loc3_][_loc4_]).§?"N§)
         {
            _loc6_ = _loc5_.§?"N§;
            _loc5_.§?"N§ = _loc6_.§?!g§;
            --_loc5_.§"!,§;
            _loc6_.§<"U§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§>!`§)).§<"U§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§>!`§)).§<"U§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §2!s§(param1:b2Contact) : void
      {
         if(param1.§<!+§.§0,§ > 0)
         {
            param1.§4!?§.m_body.SetAwake(true);
            param1.§3!B§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§4!?§.§>!f§();
         var _loc3_:int = param1.§3!B§.§>!f§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§'D§[_loc2_][_loc3_]).§"!,§;
         param1.§?!g§ = _loc4_.§?"N§;
         _loc4_.§?"N§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§>!`§);
      }
   }
}
