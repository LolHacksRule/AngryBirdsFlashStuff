package §0# §
{
   import §0J§.*;
   import §8#t§.*;
   import §[!3§.*;
   import §]!o§.*;
   import §`# §.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §=#N§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §>!=§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§>!=§ = param1;
         this.§-$"§();
      }
      
      b2internal function §0P§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§=#N§[param3][param4].createFcn = param1;
         this.§=#N§[param3][param4].destroyFcn = param2;
         this.§=#N§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§=#N§[param4][param3].createFcn = param1;
            this.§=#N§[param4][param3].destroyFcn = param2;
            this.§=#N§[param4][param3].primary = false;
         }
      }
      
      b2internal function §-$"§() : void
      {
         var _loc2_:int = 0;
         this.§=#N§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§,!t§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§,!t§)
         {
            this.§=#N§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§,!t§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§,!t§)
            {
               this.§=#N§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§0P§(b2CircleContact.§9b§,b2CircleContact.§-!2§,b2Shape.§=#T§,b2Shape.§=#T§);
         this.§0P§(b2PolyAndCircleContact.§9b§,b2PolyAndCircleContact.§-!2§,b2Shape.§]#6§,b2Shape.§=#T§);
         this.§0P§(b2PolygonContact.§9b§,b2PolygonContact.§-!2§,b2Shape.§]#6§,b2Shape.§]#6§);
         this.§0P§(b2EdgeAndCircleContact.§9b§,b2EdgeAndCircleContact.§-!2§,b2Shape.§+v§,b2Shape.§=#T§);
         this.§0P§(b2PolyAndEdgeContact.§9b§,b2PolyAndEdgeContact.§-!2§,b2Shape.§]#6§,b2Shape.§+v§);
      }
      
      public function §9b§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§52§();
         var _loc4_:int = param2.§52§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§=#N§[_loc3_][_loc4_]).§8!J§)
         {
            _loc6_ = _loc5_.§8!J§;
            _loc5_.§8!J§ = _loc6_.§0$9§;
            --_loc5_.§,"u§;
            if(_loc5_.primary)
            {
               _loc6_.§9#t§(param1,param2);
            }
            else
            {
               _loc6_.§9#t§(param2,param1);
            }
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§>!=§)).§9#t§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§>!=§)).§9#t§(param2,param1);
            _loc6_.§2!I§ = true;
            return _loc6_;
         }
         return null;
      }
      
      public function §-!2§(param1:b2Contact) : void
      {
         if(param1.§0!T§.§?!j§ > 0)
         {
            param1.§7";§.m_body.SetAwake(true);
            param1.§4"J§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§7";§.§52§();
         var _loc3_:int = param1.§4"J§.§52§();
         if(param1.§2!I§)
         {
            _loc2_ = param1.§4"J§.§52§();
            _loc3_ = param1.§7";§.§52§();
         }
         if(_loc2_ == 0 && _loc3_ == 1)
         {
         }
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§=#N§[_loc2_][_loc3_]).§,"u§;
         param1.§0$9§ = _loc4_.§8!J§;
         _loc4_.§8!J§ = param1;
         _loc4_.destroyFcn(param1,this.§>!=§);
      }
   }
}
