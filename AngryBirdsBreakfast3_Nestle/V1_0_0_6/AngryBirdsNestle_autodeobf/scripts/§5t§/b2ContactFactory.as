package §5t§
{
   import §!;§.*;
   import §,v§.*;
   import §-!A§.*;
   import §3!4§.*;
   import §@h§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §@"%§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §&Q§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§&Q§ = param1;
         this.§&F§();
      }
      
      b2internal function §@k§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§@"%§[param3][param4].createFcn = param1;
         this.§@"%§[param3][param4].destroyFcn = param2;
         this.§@"%§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§@"%§[param4][param3].createFcn = param1;
            this.§@"%§[param4][param3].destroyFcn = param2;
            this.§@"%§[param4][param3].primary = false;
         }
      }
      
      b2internal function §&F§() : void
      {
         var _loc2_:int = 0;
         this.§@"%§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§2g§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§2g§)
         {
            this.§@"%§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§2g§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§2g§)
            {
               this.§@"%§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§@k§(b2CircleContact.§@Q§,b2CircleContact.§#!N§,b2Shape.§3t§,b2Shape.§3t§);
         this.§@k§(b2PolyAndCircleContact.§@Q§,b2PolyAndCircleContact.§#!N§,b2Shape.§7p§,b2Shape.§3t§);
         this.§@k§(b2PolygonContact.§@Q§,b2PolygonContact.§#!N§,b2Shape.§7p§,b2Shape.§7p§);
         this.§@k§(b2EdgeAndCircleContact.§@Q§,b2EdgeAndCircleContact.§#!N§,b2Shape.§#=§,b2Shape.§3t§);
         this.§@k§(b2PolyAndEdgeContact.§@Q§,b2PolyAndEdgeContact.§#!N§,b2Shape.§7p§,b2Shape.§#=§);
      }
      
      public function §@Q§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§@!D§();
         var _loc4_:int = param2.§@!D§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§@"%§[_loc3_][_loc4_]).§'f§)
         {
            _loc6_ = _loc5_.§'f§;
            _loc5_.§'f§ = _loc6_.§7!+§;
            --_loc5_.§-!w§;
            _loc6_.§6m§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§&Q§)).§6m§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§&Q§)).§6m§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §#!N§(param1:b2Contact) : void
      {
         if(param1.§^I§.§8!S§ > 0)
         {
            param1.§6!$§.m_body.SetAwake(true);
            param1.§37§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§6!$§.§@!D§();
         var _loc3_:int = param1.§37§.§@!D§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§@"%§[_loc2_][_loc3_]).§-!w§;
         param1.§7!+§ = _loc4_.§'f§;
         _loc4_.§'f§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§&Q§);
      }
   }
}
