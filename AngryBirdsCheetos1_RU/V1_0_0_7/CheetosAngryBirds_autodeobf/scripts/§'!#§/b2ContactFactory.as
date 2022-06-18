package §'!#§
{
   import §'!3§.*;
   import §3q§.*;
   import §9!$§.*;
   import §?0§.*;
   import §@,§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §-5§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §-!`§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§-!`§ = param1;
         this.§]@§();
      }
      
      b2internal function §7!<§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§-5§[param3][param4].createFcn = param1;
         this.§-5§[param3][param4].destroyFcn = param2;
         this.§-5§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§-5§[param4][param3].createFcn = param1;
            this.§-5§[param4][param3].destroyFcn = param2;
            this.§-5§[param4][param3].primary = false;
         }
      }
      
      b2internal function §]@§() : void
      {
         var _loc2_:int = 0;
         this.§-5§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§2@§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§2@§)
         {
            this.§-5§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§2@§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§2@§)
            {
               this.§-5§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§7!<§(b2CircleContact.§ V§,b2CircleContact.§"z§,b2Shape.§2i§,b2Shape.§2i§);
         this.§7!<§(b2PolyAndCircleContact.§ V§,b2PolyAndCircleContact.§"z§,b2Shape.§2!1§,b2Shape.§2i§);
         this.§7!<§(b2PolygonContact.§ V§,b2PolygonContact.§"z§,b2Shape.§2!1§,b2Shape.§2!1§);
         this.§7!<§(b2EdgeAndCircleContact.§ V§,b2EdgeAndCircleContact.§"z§,b2Shape.§ _§,b2Shape.§2i§);
         this.§7!<§(b2PolyAndEdgeContact.§ V§,b2PolyAndEdgeContact.§"z§,b2Shape.§2!1§,b2Shape.§ _§);
      }
      
      public function § V§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§1!A§();
         var _loc4_:int = param2.§1!A§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§-5§[_loc3_][_loc4_]).§&![§)
         {
            _loc6_ = _loc5_.§&![§;
            _loc5_.§&![§ = _loc6_.§>!W§;
            --_loc5_.§'-§;
            _loc6_.§5!X§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§-!`§)).§5!X§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§-!`§)).§5!X§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §"z§(param1:b2Contact) : void
      {
         if(param1.§0!M§.§+!K§ > 0)
         {
            param1.§8!7§.m_body.SetAwake(true);
            param1.§86§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§8!7§.§1!A§();
         var _loc3_:int = param1.§86§.§1!A§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§-5§[_loc2_][_loc3_]).§'-§;
         param1.§>!W§ = _loc4_.§&![§;
         _loc4_.§&![§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§-!`§);
      }
   }
}
