package §6!9§
{
   import §#!"§.*;
   import §&L§.*;
   import §'s§.*;
   import §+!,§.*;
   import §]=§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §5!<§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §;!,§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§;!,§ = param1;
         this.§>!I§();
      }
      
      b2internal function §&]§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§5!<§[param3][param4].createFcn = param1;
         this.§5!<§[param3][param4].destroyFcn = param2;
         this.§5!<§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§5!<§[param4][param3].createFcn = param1;
            this.§5!<§[param4][param3].destroyFcn = param2;
            this.§5!<§[param4][param3].primary = false;
         }
      }
      
      b2internal function §>!I§() : void
      {
         var _loc2_:int = 0;
         this.§5!<§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§&`§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§&`§)
         {
            this.§5!<§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§&`§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§&`§)
            {
               this.§5!<§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§&]§(b2CircleContact.§]!U§,b2CircleContact.§"P§,b2Shape.§!!W§,b2Shape.§!!W§);
         this.§&]§(b2PolyAndCircleContact.§]!U§,b2PolyAndCircleContact.§"P§,b2Shape.§2r§,b2Shape.§!!W§);
         this.§&]§(b2PolygonContact.§]!U§,b2PolygonContact.§"P§,b2Shape.§2r§,b2Shape.§2r§);
         this.§&]§(b2EdgeAndCircleContact.§]!U§,b2EdgeAndCircleContact.§"P§,b2Shape.§>!"§,b2Shape.§!!W§);
         this.§&]§(b2PolyAndEdgeContact.§]!U§,b2PolyAndEdgeContact.§"P§,b2Shape.§2r§,b2Shape.§>!"§);
      }
      
      public function §]!U§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§-V§();
         var _loc4_:int = param2.§-V§();
         var _loc5_:b2ContactRegister = this.§5!<§[_loc3_][_loc4_];
         if(_loc5_.pool)
         {
            _loc6_ = _loc5_.pool;
            _loc5_.pool = _loc6_.§,1§;
            --_loc5_.§0$§;
            _loc6_.§@!D§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function = _loc5_.createFcn;
         if(_loc7_ != null)
         {
            if(_loc5_.primary)
            {
               _loc6_ = _loc7_(this.§;!,§);
               _loc6_.§@!D§(param1,param2);
               return _loc6_;
            }
            _loc6_ = _loc7_(this.§;!,§);
            _loc6_.§@!D§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §"P§(param1:b2Contact) : void
      {
         if(param1.§^O§.§'!j§ > 0)
         {
            param1.§41§.m_body.SetAwake(true);
            param1.§[0§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§41§.§-V§();
         var _loc3_:int = param1.§[0§.§-V§();
         var _loc4_:b2ContactRegister = this.§5!<§[_loc2_][_loc3_];
         ++_loc4_.§0$§;
         param1.§,1§ = _loc4_.pool;
         _loc4_.pool = param1;
         var _loc5_:Function = _loc4_.destroyFcn;
         _loc5_(param1,this.§;!,§);
      }
   }
}
