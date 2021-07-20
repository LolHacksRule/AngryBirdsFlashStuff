package §#!0§
{
   import §!m§.*;
   import §+!g§.*;
   import §0!3§.*;
   import §>!8§.*;
   import §>!L§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §9!a§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §6I§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§6I§ = param1;
         this.§89§();
      }
      
      b2internal function §'c§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§9!a§[param3][param4].createFcn = param1;
         this.§9!a§[param3][param4].destroyFcn = param2;
         this.§9!a§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§9!a§[param4][param3].createFcn = param1;
            this.§9!a§[param4][param3].destroyFcn = param2;
            this.§9!a§[param4][param3].primary = false;
         }
      }
      
      b2internal function §89§() : void
      {
         var _loc2_:int = 0;
         this.§9!a§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§[I§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§[I§)
         {
            this.§9!a§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§[I§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§[I§)
            {
               this.§9!a§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§'c§(b2CircleContact.§@!L§,b2CircleContact.§"G§,b2Shape.§^%§,b2Shape.§^%§);
         this.§'c§(b2PolyAndCircleContact.§@!L§,b2PolyAndCircleContact.§"G§,b2Shape.§9Q§,b2Shape.§^%§);
         this.§'c§(b2PolygonContact.§@!L§,b2PolygonContact.§"G§,b2Shape.§9Q§,b2Shape.§9Q§);
         this.§'c§(b2EdgeAndCircleContact.§@!L§,b2EdgeAndCircleContact.§"G§,b2Shape.§#[§,b2Shape.§^%§);
         this.§'c§(b2PolyAndEdgeContact.§@!L§,b2PolyAndEdgeContact.§"G§,b2Shape.§9Q§,b2Shape.§#[§);
      }
      
      public function §@!L§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§6!-§();
         var _loc4_:int = param2.§6!-§();
         var _loc5_:b2ContactRegister = this.§9!a§[_loc3_][_loc4_];
         if(_loc5_.pool)
         {
            _loc6_ = _loc5_.pool;
            _loc5_.pool = _loc6_.§,!Z§;
            --_loc5_.§8!W§;
            _loc6_.§9=§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function = _loc5_.createFcn;
         if(_loc7_ != null)
         {
            if(_loc5_.primary)
            {
               _loc6_ = _loc7_(this.§6I§);
               _loc6_.§9=§(param1,param2);
               return _loc6_;
            }
            _loc6_ = _loc7_(this.§6I§);
            _loc6_.§9=§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §"G§(param1:b2Contact) : void
      {
         if(param1.§,S§.§5<§ > 0)
         {
            param1.§7d§.m_body.SetAwake(true);
            param1.§-F§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§7d§.§6!-§();
         var _loc3_:int = param1.§-F§.§6!-§();
         var _loc4_:b2ContactRegister = this.§9!a§[_loc2_][_loc3_];
         ++_loc4_.§8!W§;
         param1.§,!Z§ = _loc4_.pool;
         _loc4_.pool = param1;
         var _loc5_:Function = _loc4_.destroyFcn;
         _loc5_(param1,this.§6I§);
      }
   }
}
