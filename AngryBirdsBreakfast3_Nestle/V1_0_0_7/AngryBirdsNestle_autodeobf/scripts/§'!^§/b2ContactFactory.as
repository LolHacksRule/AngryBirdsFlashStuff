package §'!^§
{
   import §!!o§.*;
   import §!r§.*;
   import §-!2§.*;
   import §0!j§.*;
   import §8!K§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §3T§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §0!0§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§0!0§ = param1;
         this.§,"!§();
      }
      
      b2internal function §"!f§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§3T§[param3][param4].createFcn = param1;
         this.§3T§[param3][param4].destroyFcn = param2;
         this.§3T§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§3T§[param4][param3].createFcn = param1;
            this.§3T§[param4][param3].destroyFcn = param2;
            this.§3T§[param4][param3].primary = false;
         }
      }
      
      b2internal function §,"!§() : void
      {
         var _loc2_:int = 0;
         this.§3T§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§@m§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§@m§)
         {
            this.§3T§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§@m§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§@m§)
            {
               this.§3T§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§"!f§(b2CircleContact.§6!#§,b2CircleContact.§,b§,b2Shape.§>!D§,b2Shape.§>!D§);
         this.§"!f§(b2PolyAndCircleContact.§6!#§,b2PolyAndCircleContact.§,b§,b2Shape.§3!f§,b2Shape.§>!D§);
         this.§"!f§(b2PolygonContact.§6!#§,b2PolygonContact.§,b§,b2Shape.§3!f§,b2Shape.§3!f§);
         this.§"!f§(b2EdgeAndCircleContact.§6!#§,b2EdgeAndCircleContact.§,b§,b2Shape.§!!>§,b2Shape.§>!D§);
         this.§"!f§(b2PolyAndEdgeContact.§6!#§,b2PolyAndEdgeContact.§,b§,b2Shape.§3!f§,b2Shape.§!!>§);
      }
      
      public function §6!#§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§6`§();
         var _loc4_:int = param2.§6`§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§3T§[_loc3_][_loc4_]).§&7§)
         {
            _loc6_ = _loc5_.§&7§;
            _loc5_.§&7§ = _loc6_.§0!&§;
            --_loc5_.§9!"§;
            _loc6_.§;§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§0!0§)).§;§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§0!0§)).§;§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §,b§(param1:b2Contact) : void
      {
         if(param1.§]%§.§0#§ > 0)
         {
            param1.§5"4§.m_body.SetAwake(true);
            param1.§4!F§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§5"4§.§6`§();
         var _loc3_:int = param1.§4!F§.§6`§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§3T§[_loc2_][_loc3_]).§9!"§;
         param1.§0!&§ = _loc4_.§&7§;
         _loc4_.§&7§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§0!0§);
      }
   }
}
