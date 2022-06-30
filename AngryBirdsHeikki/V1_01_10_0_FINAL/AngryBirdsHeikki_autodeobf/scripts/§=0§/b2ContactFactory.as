package §=0§
{
   import §!4§.*;
   import §3!R§.*;
   import §6A§.*;
   import §7q§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §9!H§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §[!<§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§[!<§ = param1;
         this.§3!O§();
      }
      
      b2internal function §2!Q§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§9!H§[param3][param4].createFcn = param1;
         this.§9!H§[param3][param4].destroyFcn = param2;
         this.§9!H§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§9!H§[param4][param3].createFcn = param1;
            this.§9!H§[param4][param3].destroyFcn = param2;
            this.§9!H§[param4][param3].primary = false;
         }
      }
      
      b2internal function §3!O§() : void
      {
         var _loc2_:int = 0;
         this.§9!H§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§"b§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§"b§)
         {
            this.§9!H§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§"b§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§"b§)
            {
               this.§9!H§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§2!Q§(b2CircleContact.§;O§,b2CircleContact.§;!^§,b2Shape.§,!#§,b2Shape.§,!#§);
         this.§2!Q§(b2PolyAndCircleContact.§;O§,b2PolyAndCircleContact.§;!^§,b2Shape.§=!'§,b2Shape.§,!#§);
         this.§2!Q§(b2PolygonContact.§;O§,b2PolygonContact.§;!^§,b2Shape.§=!'§,b2Shape.§=!'§);
         this.§2!Q§(b2EdgeAndCircleContact.§;O§,b2EdgeAndCircleContact.§;!^§,b2Shape.§%m§,b2Shape.§,!#§);
         this.§2!Q§(b2PolyAndEdgeContact.§;O§,b2PolyAndEdgeContact.§;!^§,b2Shape.§=!'§,b2Shape.§%m§);
      }
      
      public function §;O§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§0i§();
         var _loc4_:int = param2.§0i§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§9!H§[_loc3_][_loc4_]).§<!"§)
         {
            _loc6_ = _loc5_.§<!"§;
            _loc5_.§<!"§ = _loc6_.§>W§;
            --_loc5_.§"F§;
            _loc6_.§;!C§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§[!<§)).§;!C§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§[!<§)).§;!C§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §;!^§(param1:b2Contact) : void
      {
         if(param1.§1`§.§;6§ > 0)
         {
            param1.§&4§.m_body.SetAwake(true);
            param1.§;,§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§&4§.§0i§();
         var _loc3_:int = param1.§;,§.§0i§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§9!H§[_loc2_][_loc3_]).§"F§;
         param1.§>W§ = _loc4_.§<!"§;
         _loc4_.§<!"§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§[!<§);
      }
   }
}
