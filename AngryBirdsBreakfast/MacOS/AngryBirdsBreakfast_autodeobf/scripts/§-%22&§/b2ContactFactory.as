package §-"&§
{
   import §"y§.*;
   import §'F§.*;
   import §3!`§.*;
   import §6Z§.*;
   import §^9§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §4!$§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §]"#§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§]"#§ = param1;
         this.§[!Z§();
      }
      
      b2internal function §0!A§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§4!$§[param3][param4].createFcn = param1;
         this.§4!$§[param3][param4].destroyFcn = param2;
         this.§4!$§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§4!$§[param4][param3].createFcn = param1;
            this.§4!$§[param4][param3].destroyFcn = param2;
            this.§4!$§[param4][param3].primary = false;
         }
      }
      
      b2internal function §[!Z§() : void
      {
         var _loc2_:int = 0;
         this.§4!$§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§@!y§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§@!y§)
         {
            this.§4!$§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§@!y§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§@!y§)
            {
               this.§4!$§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§0!A§(b2CircleContact.§2#§,b2CircleContact.§5f§,b2Shape.§9_§,b2Shape.§9_§);
         this.§0!A§(b2PolyAndCircleContact.§2#§,b2PolyAndCircleContact.§5f§,b2Shape.§2e§,b2Shape.§9_§);
         this.§0!A§(b2PolygonContact.§2#§,b2PolygonContact.§5f§,b2Shape.§2e§,b2Shape.§2e§);
         this.§0!A§(b2EdgeAndCircleContact.§2#§,b2EdgeAndCircleContact.§5f§,b2Shape.§[!Q§,b2Shape.§9_§);
         this.§0!A§(b2PolyAndEdgeContact.§2#§,b2PolyAndEdgeContact.§5f§,b2Shape.§2e§,b2Shape.§[!Q§);
      }
      
      public function §2#§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§<!A§();
         var _loc4_:int = param2.§<!A§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§4!$§[_loc3_][_loc4_]).§[#§)
         {
            _loc6_ = _loc5_.§[#§;
            _loc5_.§[#§ = _loc6_.§0!>§;
            --_loc5_.§9-§;
            _loc6_.§?!r§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§]"#§)).§?!r§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§]"#§)).§?!r§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §5f§(param1:b2Contact) : void
      {
         if(param1.§=!P§.§26§ > 0)
         {
            param1.§]R§.m_body.SetAwake(true);
            param1.§7!&§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§]R§.§<!A§();
         var _loc3_:int = param1.§7!&§.§<!A§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§4!$§[_loc2_][_loc3_]).§9-§;
         param1.§0!>§ = _loc4_.§[#§;
         _loc4_.§[#§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§]"#§);
      }
   }
}
