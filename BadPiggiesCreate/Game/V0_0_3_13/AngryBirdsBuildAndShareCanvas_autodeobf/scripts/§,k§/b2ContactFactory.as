package §,k§
{
   import §-g§.*;
   import §1!z§.*;
   import §5!]§.*;
   import §7!q§.*;
   import §[M§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var § else§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §#&§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§#&§ = param1;
         this.§]!m§();
      }
      
      b2internal function §'a§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§ else§[param3][param4].createFcn = param1;
         this.§ else§[param3][param4].destroyFcn = param2;
         this.§ else§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§ else§[param4][param3].createFcn = param1;
            this.§ else§[param4][param3].destroyFcn = param2;
            this.§ else§[param4][param3].primary = false;
         }
      }
      
      b2internal function §]!m§() : void
      {
         var _loc2_:int = 0;
         this.§ else§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§9"$§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§9"$§)
         {
            this.§ else§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§9"$§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§9"$§)
            {
               this.§ else§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§'a§(b2CircleContact.§="1§,b2CircleContact.§,"0§,b2Shape.§%_§,b2Shape.§%_§);
         this.§'a§(b2PolyAndCircleContact.§="1§,b2PolyAndCircleContact.§,"0§,b2Shape.§8!3§,b2Shape.§%_§);
         this.§'a§(b2PolygonContact.§="1§,b2PolygonContact.§,"0§,b2Shape.§8!3§,b2Shape.§8!3§);
         this.§'a§(b2EdgeAndCircleContact.§="1§,b2EdgeAndCircleContact.§,"0§,b2Shape.§function§,b2Shape.§%_§);
         this.§'a§(b2PolyAndEdgeContact.§="1§,b2PolyAndEdgeContact.§,"0§,b2Shape.§8!3§,b2Shape.§function§);
      }
      
      public function §="1§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§7!r§();
         var _loc4_:int = param2.§7!r§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§ else§[_loc3_][_loc4_]).§5!H§)
         {
            _loc6_ = _loc5_.§5!H§;
            _loc5_.§5!H§ = _loc6_.§,"!§;
            --_loc5_.§ !-§;
            _loc6_.§;!V§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§#&§)).§;!V§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§#&§)).§;!V§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §,"0§(param1:b2Contact) : void
      {
         if(param1.§28§.§]Y§ > 0)
         {
            param1.§?a§.m_body.SetAwake(true);
            param1.§;!S§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§?a§.§7!r§();
         var _loc3_:int = param1.§;!S§.§7!r§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§ else§[_loc2_][_loc3_]).§ !-§;
         param1.§,"!§ = _loc4_.§5!H§;
         _loc4_.§5!H§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§#&§);
      }
   }
}
