package §>s§
{
   import §,X§.*;
   import §1%§.*;
   import §8!H§.*;
   import §?!&§.*;
   import §`!H§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §-p§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §5!X§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§5!X§ = param1;
         this.§>![§();
      }
      
      b2internal function §+d§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§-p§[param3][param4].createFcn = param1;
         this.§-p§[param3][param4].destroyFcn = param2;
         this.§-p§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§-p§[param4][param3].createFcn = param1;
            this.§-p§[param4][param3].destroyFcn = param2;
            this.§-p§[param4][param3].primary = false;
         }
      }
      
      b2internal function §>![§() : void
      {
         var _loc2_:int = 0;
         this.§-p§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§-w§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§-w§)
         {
            this.§-p§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§-w§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§-w§)
            {
               this.§-p§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§+d§(b2CircleContact.§;!]§,b2CircleContact.§"!Q§,b2Shape.§'o§,b2Shape.§'o§);
         this.§+d§(b2PolyAndCircleContact.§;!]§,b2PolyAndCircleContact.§"!Q§,b2Shape.§1!f§,b2Shape.§'o§);
         this.§+d§(b2PolygonContact.§;!]§,b2PolygonContact.§"!Q§,b2Shape.§1!f§,b2Shape.§1!f§);
         this.§+d§(b2EdgeAndCircleContact.§;!]§,b2EdgeAndCircleContact.§"!Q§,b2Shape.§]&§,b2Shape.§'o§);
         this.§+d§(b2PolyAndEdgeContact.§;!]§,b2PolyAndEdgeContact.§"!Q§,b2Shape.§1!f§,b2Shape.§]&§);
      }
      
      public function §;!]§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§3r§();
         var _loc4_:int = param2.§3r§();
         var _loc5_:b2ContactRegister = this.§-p§[_loc3_][_loc4_];
         if(_loc5_.pool)
         {
            _loc6_ = _loc5_.pool;
            _loc5_.pool = _loc6_.§!J§;
            --_loc5_.§^'§;
            _loc6_.§`!B§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function = _loc5_.createFcn;
         if(_loc7_ != null)
         {
            if(_loc5_.primary)
            {
               _loc6_ = _loc7_(this.§5!X§);
               _loc6_.§`!B§(param1,param2);
               return _loc6_;
            }
            _loc6_ = _loc7_(this.§5!X§);
            _loc6_.§`!B§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §"!Q§(param1:b2Contact) : void
      {
         if(param1.§]0§.§7I§ > 0)
         {
            param1.§]r§.m_body.SetAwake(true);
            param1.§"!F§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§]r§.§3r§();
         var _loc3_:int = param1.§"!F§.§3r§();
         var _loc4_:b2ContactRegister = this.§-p§[_loc2_][_loc3_];
         ++_loc4_.§^'§;
         param1.§!J§ = _loc4_.pool;
         _loc4_.pool = param1;
         var _loc5_:Function = _loc4_.destroyFcn;
         _loc5_(param1,this.§5!X§);
      }
   }
}
