package §[-§
{
   import §!!#§.*;
   import §4! §.*;
   import §9t§.*;
   import §[!E§.*;
   import §^q§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §;P§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §8=§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§8=§ = param1;
         this.§?G§();
      }
      
      b2internal function §7p§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§;P§[param3][param4].createFcn = param1;
         this.§;P§[param3][param4].destroyFcn = param2;
         this.§;P§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§;P§[param4][param3].createFcn = param1;
            this.§;P§[param4][param3].destroyFcn = param2;
            this.§;P§[param4][param3].primary = false;
         }
      }
      
      b2internal function §?G§() : void
      {
         var _loc2_:int = 0;
         this.§;P§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§^E§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§^E§)
         {
            this.§;P§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§^E§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§^E§)
            {
               this.§;P§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§7p§(b2CircleContact.§1P§,b2CircleContact.§88§,b2Shape.§5E§,b2Shape.§5E§);
         this.§7p§(b2PolyAndCircleContact.§1P§,b2PolyAndCircleContact.§88§,b2Shape.§+4§,b2Shape.§5E§);
         this.§7p§(b2PolygonContact.§1P§,b2PolygonContact.§88§,b2Shape.§+4§,b2Shape.§+4§);
         this.§7p§(b2EdgeAndCircleContact.§1P§,b2EdgeAndCircleContact.§88§,b2Shape.§!d§,b2Shape.§5E§);
         this.§7p§(b2PolyAndEdgeContact.§1P§,b2PolyAndEdgeContact.§88§,b2Shape.§+4§,b2Shape.§!d§);
      }
      
      public function §1P§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§9P§();
         var _loc4_:int = param2.§9P§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§;P§[_loc3_][_loc4_]).§5!7§)
         {
            _loc6_ = _loc5_.§5!7§;
            _loc5_.§5!7§ = _loc6_.§%m§;
            --_loc5_.§`!8§;
            _loc6_.§ Z§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§8=§)).§ Z§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§8=§)).§ Z§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §88§(param1:b2Contact) : void
      {
         if(param1.§@!O§.§^d§ > 0)
         {
            param1.§@! §.m_body.SetAwake(true);
            param1.§>d§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§@! §.§9P§();
         var _loc3_:int = param1.§>d§.§9P§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§;P§[_loc2_][_loc3_]).§`!8§;
         param1.§%m§ = _loc4_.§5!7§;
         _loc4_.§5!7§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§8=§);
      }
   }
}
