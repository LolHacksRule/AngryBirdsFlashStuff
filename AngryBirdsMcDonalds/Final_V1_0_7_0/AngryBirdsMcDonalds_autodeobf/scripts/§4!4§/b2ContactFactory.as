package §4!4§
{
   import §&!P§.*;
   import §+!o§.*;
   import §-0§.*;
   import §@g§.*;
   import §^!%§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §[Y§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §84§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§84§ = param1;
         this.§#k§();
      }
      
      b2internal function §<!H§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§[Y§[param3][param4].createFcn = param1;
         this.§[Y§[param3][param4].destroyFcn = param2;
         this.§[Y§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§[Y§[param4][param3].createFcn = param1;
            this.§[Y§[param4][param3].destroyFcn = param2;
            this.§[Y§[param4][param3].primary = false;
         }
      }
      
      b2internal function §#k§() : void
      {
         var _loc2_:int = 0;
         this.§[Y§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§]6§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§]6§)
         {
            this.§[Y§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§]6§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§]6§)
            {
               this.§[Y§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§<!H§(b2CircleContact.§6j§,b2CircleContact.§ B§,b2Shape.§'B§,b2Shape.§'B§);
         this.§<!H§(b2PolyAndCircleContact.§6j§,b2PolyAndCircleContact.§ B§,b2Shape.§@P§,b2Shape.§'B§);
         this.§<!H§(b2PolygonContact.§6j§,b2PolygonContact.§ B§,b2Shape.§@P§,b2Shape.§@P§);
         this.§<!H§(b2EdgeAndCircleContact.§6j§,b2EdgeAndCircleContact.§ B§,b2Shape.§@!n§,b2Shape.§'B§);
         this.§<!H§(b2PolyAndEdgeContact.§6j§,b2PolyAndEdgeContact.§ B§,b2Shape.§@P§,b2Shape.§@!n§);
      }
      
      public function §6j§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§use§();
         var _loc4_:int = param2.§use§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§[Y§[_loc3_][_loc4_]).§%!7§)
         {
            _loc6_ = _loc5_.§%!7§;
            _loc5_.§%!7§ = _loc6_.§2G§;
            --_loc5_.§&^§;
            _loc6_.§<L§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§84§)).§<L§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§84§)).§<L§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function § B§(param1:b2Contact) : void
      {
         if(param1.§5R§.§>r§ > 0)
         {
            param1.§0!b§.m_body.SetAwake(true);
            param1.§&a§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§0!b§.§use§();
         var _loc3_:int = param1.§&a§.§use§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§[Y§[_loc2_][_loc3_]).§&^§;
         param1.§2G§ = _loc4_.§%!7§;
         _loc4_.§%!7§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§84§);
      }
   }
}
