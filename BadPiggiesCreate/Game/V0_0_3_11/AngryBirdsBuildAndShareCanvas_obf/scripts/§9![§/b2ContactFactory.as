package §9![§
{
   import § 6§.*;
   import §+L§.*;
   import §1!3§.*;
   import §7z§.*;
   import §^+§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §7f§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §0!5§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§0!5§ = param1;
         this.§9!z§();
      }
      
      b2internal function §]Y§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§7f§[param3][param4].createFcn = param1;
         this.§7f§[param3][param4].destroyFcn = param2;
         this.§7f§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§7f§[param4][param3].createFcn = param1;
            this.§7f§[param4][param3].destroyFcn = param2;
            this.§7f§[param4][param3].primary = false;
         }
      }
      
      b2internal function §9!z§() : void
      {
         var _loc2_:int = 0;
         this.§7f§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§19§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§19§)
         {
            this.§7f§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§19§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§19§)
            {
               this.§7f§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§]Y§(b2CircleContact.§7T§,b2CircleContact.§#"&§,b2Shape.§'6§,b2Shape.§'6§);
         this.§]Y§(b2PolyAndCircleContact.§7T§,b2PolyAndCircleContact.§#"&§,b2Shape.§4!Q§,b2Shape.§'6§);
         this.§]Y§(b2PolygonContact.§7T§,b2PolygonContact.§#"&§,b2Shape.§4!Q§,b2Shape.§4!Q§);
         this.§]Y§(b2EdgeAndCircleContact.§7T§,b2EdgeAndCircleContact.§#"&§,b2Shape.§-"$§,b2Shape.§'6§);
         this.§]Y§(b2PolyAndEdgeContact.§7T§,b2PolyAndEdgeContact.§#"&§,b2Shape.§4!Q§,b2Shape.§-"$§);
      }
      
      public function §7T§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§,!B§();
         var _loc4_:int = param2.§,!B§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§7f§[_loc3_][_loc4_]).§]!?§)
         {
            _loc6_ = _loc5_.§]!?§;
            _loc5_.§]!?§ = _loc6_.§7t§;
            --_loc5_.§#!N§;
            _loc6_.§^m§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§0!5§)).§^m§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§0!5§)).§^m§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §#"&§(param1:b2Contact) : void
      {
         if(param1.§7"-§.§7i§ > 0)
         {
            param1.§2G§.m_body.SetAwake(true);
            param1.§]![§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§2G§.§,!B§();
         var _loc3_:int = param1.§]![§.§,!B§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§7f§[_loc2_][_loc3_]).§#!N§;
         param1.§7t§ = _loc4_.§]!?§;
         _loc4_.§]!?§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§0!5§);
      }
   }
}
