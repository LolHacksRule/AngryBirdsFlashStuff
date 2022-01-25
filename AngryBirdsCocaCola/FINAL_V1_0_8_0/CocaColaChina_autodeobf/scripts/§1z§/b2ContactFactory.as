package §1z§
{
   import § Y§.*;
   import §6V§.*;
   import §<!L§.*;
   import §?F§.*;
   import §[!$§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §81§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §]!M§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§]!M§ = param1;
         this.§2[§();
      }
      
      b2internal function §&L§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§81§[param3][param4].createFcn = param1;
         this.§81§[param3][param4].destroyFcn = param2;
         this.§81§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§81§[param4][param3].createFcn = param1;
            this.§81§[param4][param3].destroyFcn = param2;
            this.§81§[param4][param3].primary = false;
         }
      }
      
      b2internal function §2[§() : void
      {
         var _loc2_:int = 0;
         this.§81§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§,!6§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§,!6§)
         {
            this.§81§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§,!6§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§,!6§)
            {
               this.§81§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§&L§(b2CircleContact.§8y§,b2CircleContact.§#2§,b2Shape.§[w§,b2Shape.§[w§);
         this.§&L§(b2PolyAndCircleContact.§8y§,b2PolyAndCircleContact.§#2§,b2Shape.§"!c§,b2Shape.§[w§);
         this.§&L§(b2PolygonContact.§8y§,b2PolygonContact.§#2§,b2Shape.§"!c§,b2Shape.§"!c§);
         this.§&L§(b2EdgeAndCircleContact.§8y§,b2EdgeAndCircleContact.§#2§,b2Shape.§=m§,b2Shape.§[w§);
         this.§&L§(b2PolyAndEdgeContact.§8y§,b2PolyAndEdgeContact.§#2§,b2Shape.§"!c§,b2Shape.§=m§);
      }
      
      public function §8y§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§1k§();
         var _loc4_:int = param2.§1k§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§81§[_loc3_][_loc4_]).§10§)
         {
            _loc6_ = _loc5_.§10§;
            _loc5_.§10§ = _loc6_.§!!U§;
            --_loc5_.§7$§;
            _loc6_.§>[§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§]!M§)).§>[§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§]!M§)).§>[§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §#2§(param1:b2Contact) : void
      {
         if(param1.§%Q§.§6p§ > 0)
         {
            param1.§[![§.m_body.SetAwake(true);
            param1.§1J§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§[![§.§1k§();
         var _loc3_:int = param1.§1J§.§1k§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§81§[_loc2_][_loc3_]).§7$§;
         param1.§!!U§ = _loc4_.§10§;
         _loc4_.§10§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§]!M§);
      }
   }
}
