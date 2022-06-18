package §[#L§
{
   import §%!9§.*;
   import §+#f§.*;
   import §1!+§.*;
   import §7"^§.*;
   import §9#K§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §5S§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §%3§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§%3§ = param1;
         this.§7#G§();
      }
      
      b2internal function §'#V§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§5S§[param3][param4].createFcn = param1;
         this.§5S§[param3][param4].destroyFcn = param2;
         this.§5S§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§5S§[param4][param3].createFcn = param1;
            this.§5S§[param4][param3].destroyFcn = param2;
            this.§5S§[param4][param3].primary = false;
         }
      }
      
      b2internal function §7#G§() : void
      {
         var _loc2_:int = 0;
         this.§5S§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§-"7§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§-"7§)
         {
            this.§5S§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§-"7§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§-"7§)
            {
               this.§5S§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§'#V§(b2CircleContact.§@!7§,b2CircleContact.§@#V§,b2Shape.§ j§,b2Shape.§ j§);
         this.§'#V§(b2PolyAndCircleContact.§@!7§,b2PolyAndCircleContact.§@#V§,b2Shape.§"!<§,b2Shape.§ j§);
         this.§'#V§(b2PolygonContact.§@!7§,b2PolygonContact.§@#V§,b2Shape.§"!<§,b2Shape.§"!<§);
         this.§'#V§(b2EdgeAndCircleContact.§@!7§,b2EdgeAndCircleContact.§@#V§,b2Shape.§%$,§,b2Shape.§ j§);
         this.§'#V§(b2PolyAndEdgeContact.§@!7§,b2PolyAndEdgeContact.§@#V§,b2Shape.§"!<§,b2Shape.§%$,§);
      }
      
      public function §@!7§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§%"+§();
         var _loc4_:int = param2.§%"+§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§5S§[_loc3_][_loc4_]).§2!F§)
         {
            _loc6_ = _loc5_.§2!F§;
            _loc5_.§2!F§ = _loc6_.§3!=§;
            --_loc5_.§>G§;
            if(_loc5_.primary)
            {
               _loc6_.§=!H§(param1,param2);
            }
            else
            {
               _loc6_.§=!H§(param2,param1);
            }
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§%3§)).§=!H§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§%3§)).§=!H§(param2,param1);
            _loc6_.§4#`§ = true;
            return _loc6_;
         }
         return null;
      }
      
      public function §@#V§(param1:b2Contact) : void
      {
         var _loc6_:int = 0;
         if(param1.§%#B§.§@"i§ > 0)
         {
            param1.§'!9§.m_body.SetAwake(true);
            param1.§%#h§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§'!9§.§%"+§();
         var _loc3_:int = param1.§%#h§.§%"+§();
         if(param1.§4#`§)
         {
            _loc2_ = param1.§%#h§.§%"+§();
            _loc3_ = param1.§'!9§.§%"+§();
         }
         if(_loc2_ == 0 && _loc3_ == 1)
         {
            _loc6_ = 1;
         }
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§5S§[_loc2_][_loc3_]).§>G§;
         param1.§3!=§ = _loc4_.§2!F§;
         _loc4_.§2!F§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§%3§);
      }
   }
}
