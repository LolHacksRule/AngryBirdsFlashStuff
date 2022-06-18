package §'z§
{
   import §"v§.*;
   import §&i§.*;
   import §5!K§.*;
   import §]M§.*;
   import §each §.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §^!§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §"m§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§"m§ = param1;
         this.§&!R§();
      }
      
      b2internal function §0e§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§^!§[param3][param4].createFcn = param1;
         this.§^!§[param3][param4].destroyFcn = param2;
         this.§^!§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§^!§[param4][param3].createFcn = param1;
            this.§^!§[param4][param3].destroyFcn = param2;
            this.§^!§[param4][param3].primary = false;
         }
      }
      
      b2internal function §&!R§() : void
      {
         var _loc2_:int = 0;
         this.§^!§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§8!"§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§8!"§)
         {
            this.§^!§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§8!"§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§8!"§)
            {
               this.§^!§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§0e§(b2CircleContact.§#![§,b2CircleContact.§%P§,b2Shape.§63§,b2Shape.§63§);
         this.§0e§(b2PolyAndCircleContact.§#![§,b2PolyAndCircleContact.§%P§,b2Shape.§case §,b2Shape.§63§);
         this.§0e§(b2PolygonContact.§#![§,b2PolygonContact.§%P§,b2Shape.§case §,b2Shape.§case §);
         this.§0e§(b2EdgeAndCircleContact.§#![§,b2EdgeAndCircleContact.§%P§,b2Shape.§%B§,b2Shape.§63§);
         this.§0e§(b2PolyAndEdgeContact.§#![§,b2PolyAndEdgeContact.§%P§,b2Shape.§case §,b2Shape.§%B§);
      }
      
      public function §#![§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§"5§();
         var _loc4_:int = param2.§"5§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§^!§[_loc3_][_loc4_]).§"@§)
         {
            _loc6_ = _loc5_.§"@§;
            _loc5_.§"@§ = _loc6_.§`!T§;
            --_loc5_.§^r§;
            _loc6_.§"L§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§"m§)).§"L§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§"m§)).§"L§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §%P§(param1:b2Contact) : void
      {
         if(param1.§8b§.§<n§ > 0)
         {
            param1.§&L§.m_body.SetAwake(true);
            param1.§8! §.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§&L§.§"5§();
         var _loc3_:int = param1.§8! §.§"5§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§^!§[_loc2_][_loc3_]).§^r§;
         param1.§`!T§ = _loc4_.§"@§;
         _loc4_.§"@§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§"m§);
      }
   }
}
