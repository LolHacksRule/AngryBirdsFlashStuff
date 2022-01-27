package §>6§
{
   import §'!a§.*;
   import §4!W§.*;
   import §6!n§.*;
   import §9!K§.*;
   import §;!Z§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §#!i§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §8"0§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§8"0§ = param1;
         this.§=!T§();
      }
      
      b2internal function §7z§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§#!i§[param3][param4].createFcn = param1;
         this.§#!i§[param3][param4].destroyFcn = param2;
         this.§#!i§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§#!i§[param4][param3].createFcn = param1;
            this.§#!i§[param4][param3].destroyFcn = param2;
            this.§#!i§[param4][param3].primary = false;
         }
      }
      
      b2internal function §=!T§() : void
      {
         var _loc2_:int = 0;
         this.§#!i§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§>!z§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§>!z§)
         {
            this.§#!i§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§>!z§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§>!z§)
            {
               this.§#!i§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§7z§(b2CircleContact.§7;§,b2CircleContact.§7"'§,b2Shape.§9t§,b2Shape.§9t§);
         this.§7z§(b2PolyAndCircleContact.§7;§,b2PolyAndCircleContact.§7"'§,b2Shape.§>b§,b2Shape.§9t§);
         this.§7z§(b2PolygonContact.§7;§,b2PolygonContact.§7"'§,b2Shape.§>b§,b2Shape.§>b§);
         this.§7z§(b2EdgeAndCircleContact.§7;§,b2EdgeAndCircleContact.§7"'§,b2Shape.§[!e§,b2Shape.§9t§);
         this.§7z§(b2PolyAndEdgeContact.§7;§,b2PolyAndEdgeContact.§7"'§,b2Shape.§>b§,b2Shape.§[!e§);
      }
      
      public function §7;§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§finally§();
         var _loc4_:int = param2.§finally§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§#!i§[_loc3_][_loc4_]).§]" §)
         {
            _loc6_ = _loc5_.§]" §;
            _loc5_.§]" § = _loc6_.§&!6§;
            --_loc5_.§;6§;
            _loc6_.§2!U§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§8"0§)).§2!U§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§8"0§)).§2!U§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §7"'§(param1:b2Contact) : void
      {
         if(param1.§-"7§.§&!G§ > 0)
         {
            param1.§1!g§.m_body.SetAwake(true);
            param1.§@4§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§1!g§.§finally§();
         var _loc3_:int = param1.§@4§.§finally§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§#!i§[_loc2_][_loc3_]).§;6§;
         param1.§&!6§ = _loc4_.§]" §;
         _loc4_.§]" § = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§8"0§);
      }
   }
}
