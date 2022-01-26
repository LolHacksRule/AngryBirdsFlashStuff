package §@^§
{
   import §%]§.*;
   import §,!3§.*;
   import §3'§.*;
   import §=u§.*;
   import §?!F§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §<b§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §5V§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§5V§ = param1;
         this.§&Z§();
      }
      
      b2internal function §77§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§<b§[param3][param4].createFcn = param1;
         this.§<b§[param3][param4].destroyFcn = param2;
         this.§<b§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§<b§[param4][param3].createFcn = param1;
            this.§<b§[param4][param3].destroyFcn = param2;
            this.§<b§[param4][param3].primary = false;
         }
      }
      
      b2internal function §&Z§() : void
      {
         var _loc2_:int = 0;
         this.§<b§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§"F§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§"F§)
         {
            this.§<b§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§"F§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§"F§)
            {
               this.§<b§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§77§(b2CircleContact.§<!E§,b2CircleContact.§[!,§,b2Shape.§2!J§,b2Shape.§2!J§);
         this.§77§(b2PolyAndCircleContact.§<!E§,b2PolyAndCircleContact.§[!,§,b2Shape.§1!J§,b2Shape.§2!J§);
         this.§77§(b2PolygonContact.§<!E§,b2PolygonContact.§[!,§,b2Shape.§1!J§,b2Shape.§1!J§);
         this.§77§(b2EdgeAndCircleContact.§<!E§,b2EdgeAndCircleContact.§[!,§,b2Shape.§<r§,b2Shape.§2!J§);
         this.§77§(b2PolyAndEdgeContact.§<!E§,b2PolyAndEdgeContact.§[!,§,b2Shape.§1!J§,b2Shape.§<r§);
      }
      
      public function §<!E§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§[!H§();
         var _loc4_:int = param2.§[!H§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§<b§[_loc3_][_loc4_]).§9M§)
         {
            _loc6_ = _loc5_.§9M§;
            _loc5_.§9M§ = _loc6_.§+[§;
            --_loc5_.§`C§;
            _loc6_.§super§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§5V§)).§super§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§5V§)).§super§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §[!,§(param1:b2Contact) : void
      {
         if(param1.§#!"§.§in § > 0)
         {
            param1.§9!0§.m_body.SetAwake(true);
            param1.§#;§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§9!0§.§[!H§();
         var _loc3_:int = param1.§#;§.§[!H§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§<b§[_loc2_][_loc3_]).§`C§;
         param1.§+[§ = _loc4_.§9M§;
         _loc4_.§9M§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§5V§);
      }
   }
}
