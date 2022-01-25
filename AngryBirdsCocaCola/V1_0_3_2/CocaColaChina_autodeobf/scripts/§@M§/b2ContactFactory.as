package §@M§
{
   import §"!R§.*;
   import §'&§.*;
   import §;!7§.*;
   import §=!U§.*;
   import §implements§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §+!V§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §2!Q§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§2!Q§ = param1;
         this.§'!>§();
      }
      
      b2internal function §`!R§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§+!V§[param3][param4].createFcn = param1;
         this.§+!V§[param3][param4].destroyFcn = param2;
         this.§+!V§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§+!V§[param4][param3].createFcn = param1;
            this.§+!V§[param4][param3].destroyFcn = param2;
            this.§+!V§[param4][param3].primary = false;
         }
      }
      
      b2internal function §'!>§() : void
      {
         var _loc2_:int = 0;
         this.§+!V§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§"^§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§"^§)
         {
            this.§+!V§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§"^§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§"^§)
            {
               this.§+!V§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§`!R§(b2CircleContact.§0!^§,b2CircleContact.§9!K§,b2Shape.§@#§,b2Shape.§@#§);
         this.§`!R§(b2PolyAndCircleContact.§0!^§,b2PolyAndCircleContact.§9!K§,b2Shape.§+Q§,b2Shape.§@#§);
         this.§`!R§(b2PolygonContact.§0!^§,b2PolygonContact.§9!K§,b2Shape.§+Q§,b2Shape.§+Q§);
         this.§`!R§(b2EdgeAndCircleContact.§0!^§,b2EdgeAndCircleContact.§9!K§,b2Shape.§,J§,b2Shape.§@#§);
         this.§`!R§(b2PolyAndEdgeContact.§0!^§,b2PolyAndEdgeContact.§9!K§,b2Shape.§+Q§,b2Shape.§,J§);
      }
      
      public function §0!^§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§@e§();
         var _loc4_:int = param2.§@e§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§+!V§[_loc3_][_loc4_]).§-!Y§)
         {
            _loc6_ = _loc5_.§-!Y§;
            _loc5_.§-!Y§ = _loc6_.§9`§;
            --_loc5_.§`!c§;
            _loc6_.§8^§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§2!Q§)).§8^§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§2!Q§)).§8^§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §9!K§(param1:b2Contact) : void
      {
         if(param1.§=,§.§!!_§ > 0)
         {
            param1.§'M§.m_body.SetAwake(true);
            param1.§=!A§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§'M§.§@e§();
         var _loc3_:int = param1.§=!A§.§@e§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§+!V§[_loc2_][_loc3_]).§`!c§;
         param1.§9`§ = _loc4_.§-!Y§;
         _loc4_.§-!Y§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§2!Q§);
      }
   }
}
