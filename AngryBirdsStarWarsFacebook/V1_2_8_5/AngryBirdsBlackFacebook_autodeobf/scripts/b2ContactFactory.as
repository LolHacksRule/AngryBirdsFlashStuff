package
{
   import §1!2§.*;
   import §7!I§.*;
   import §7"A§.*;
   import §>"_§.*;
   import §>r§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §'"u§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §5"R§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§5"R§ = param1;
         this.§-%§();
      }
      
      b2internal function §2"4§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§'"u§[param3][param4].createFcn = param1;
         this.§'"u§[param3][param4].destroyFcn = param2;
         this.§'"u§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§'"u§[param4][param3].createFcn = param1;
            this.§'"u§[param4][param3].destroyFcn = param2;
            this.§'"u§[param4][param3].primary = false;
         }
      }
      
      b2internal function §-%§() : void
      {
         var _loc2_:int = 0;
         this.§'"u§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§-r§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§-r§)
         {
            this.§'"u§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§-r§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§-r§)
            {
               this.§'"u§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§2"4§(b2CircleContact.§ "a§,b2CircleContact.§ !g§,b2Shape.§8"y§,b2Shape.§8"y§);
         this.§2"4§(b2PolyAndCircleContact.§ "a§,b2PolyAndCircleContact.§ !g§,b2Shape.§+"<§,b2Shape.§8"y§);
         this.§2"4§(b2PolygonContact.§ "a§,b2PolygonContact.§ !g§,b2Shape.§+"<§,b2Shape.§+"<§);
         this.§2"4§(b2EdgeAndCircleContact.§ "a§,b2EdgeAndCircleContact.§ !g§,b2Shape.§;"-§,b2Shape.§8"y§);
         this.§2"4§(b2PolyAndEdgeContact.§ "a§,b2PolyAndEdgeContact.§ !g§,b2Shape.§+"<§,b2Shape.§;"-§);
      }
      
      public function § "a§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§+"M§();
         var _loc4_:int = param2.§+"M§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§'"u§[_loc3_][_loc4_]).§,"c§)
         {
            _loc6_ = _loc5_.§,"c§;
            _loc5_.§,"c§ = _loc6_.§?"Z§;
            --_loc5_.§@"@§;
            _loc6_.§`"v§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§5"R§)).§`"v§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§5"R§)).§`"v§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function § !g§(param1:b2Contact) : void
      {
         if(param1.§-#3§.§="#§ > 0)
         {
            param1.§,"2§.m_body.SetAwake(true);
            param1.§1M§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§,"2§.§+"M§();
         var _loc3_:int = param1.§1M§.§+"M§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§'"u§[_loc2_][_loc3_]).§@"@§;
         param1.§?"Z§ = _loc4_.§,"c§;
         _loc4_.§,"c§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§5"R§);
      }
   }
}
