package §1%§
{
   import §8!H§.b2internal;
   import §>s§.b2Contact;
   import §>s§.b2ContactEdge;
   import §>s§.b2ContactFactory;
   import §`!H§.§>u§;
   import §`!H§.b2ContactPoint;
   import §`!H§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §,!O§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §+!2§:§>u§;
      
      b2internal var §;T§:b2Contact;
      
      b2internal var §9!?§:int;
      
      b2internal var §";§:b2ContactFilter;
      
      b2internal var §-m§:b2ContactListener;
      
      b2internal var §4I§:b2ContactFactory;
      
      b2internal var §5!X§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§9!?§ = 0;
         this.§";§ = b2ContactFilter.§+!<§;
         this.§-m§ = b2ContactListener.§;W§;
         this.§4I§ = new b2ContactFactory(this.§5!X§);
         this.§+!2§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §;L§(param1:*, param2:*) : void
      {
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(_loc5_ == _loc6_)
         {
            return;
         }
         var _loc7_:b2ContactEdge = _loc6_.§"!c§();
         while(_loc7_)
         {
            if(_loc7_.§;-§ == _loc5_)
            {
               _loc9_ = _loc7_.§#!#§.§%! §();
               _loc10_ = _loc7_.§#!#§.§4#§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§86§;
         }
         if(_loc6_.§8`§(_loc5_) == false)
         {
            return;
         }
         if(this.§";§.§8`§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact = this.§4I§.§;!]§(_loc3_,_loc4_);
         _loc3_ = _loc8_.§%! §();
         _loc4_ = _loc8_.§4#§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§4!0§ = null;
         _loc8_.§!J§ = this.m_world.§;T§;
         if(this.m_world.§;T§ != null)
         {
            this.m_world.§;T§.§4!0§ = _loc8_;
         }
         this.m_world.§;T§ = _loc8_;
         _loc8_.§`P§.§#!#§ = _loc8_;
         _loc8_.§`P§.§;-§ = _loc6_;
         _loc8_.§`P§.§9§ = null;
         _loc8_.§`P§.§86§ = _loc5_.§;T§;
         if(_loc5_.§;T§ != null)
         {
            _loc5_.§;T§.§9§ = _loc8_.§`P§;
         }
         _loc5_.§;T§ = _loc8_.§`P§;
         _loc8_.§%'§.§#!#§ = _loc8_;
         _loc8_.§%'§.§;-§ = _loc5_;
         _loc8_.§%'§.§9§ = null;
         _loc8_.§%'§.§86§ = _loc6_.§;T§;
         if(_loc6_.§;T§ != null)
         {
            _loc6_.§;T§.§9§ = _loc8_.§%'§;
         }
         _loc6_.§;T§ = _loc8_.§%'§;
         ++this.m_world.§9!?§;
      }
      
      public function § !§() : void
      {
         this.§+!2§.§<!Q§(this.§;L§);
      }
      
      public function §"!Q§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§%! §();
         var _loc3_:b2Fixture = param1.§4#§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§%!T§())
         {
            this.§-m§.EndContact(param1);
         }
         if(param1.§4!0§)
         {
            param1.§4!0§.§!J§ = param1.§!J§;
         }
         if(param1.§!J§)
         {
            param1.§!J§.§4!0§ = param1.§4!0§;
         }
         if(param1 == this.m_world.§;T§)
         {
            this.m_world.§;T§ = param1.§!J§;
         }
         if(param1.§`P§.§9§)
         {
            param1.§`P§.§9§.§86§ = param1.§`P§.§86§;
         }
         if(param1.§`P§.§86§)
         {
            param1.§`P§.§86§.§9§ = param1.§`P§.§9§;
         }
         if(param1.§`P§ == _loc4_.§;T§)
         {
            _loc4_.§;T§ = param1.§`P§.§86§;
         }
         if(param1.§%'§.§9§)
         {
            param1.§%'§.§9§.§86§ = param1.§%'§.§86§;
         }
         if(param1.§%'§.§86§)
         {
            param1.§%'§.§86§.§9§ = param1.§%'§.§9§;
         }
         if(param1.§%'§ == _loc5_.§;T§)
         {
            _loc5_.§;T§ = param1.§%'§.§86§;
         }
         this.§4I§.§"!Q§(param1);
         --this.§9!?§;
      }
      
      public function §4!C§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§;T§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§%! §();
            _loc3_ = _loc1_.§4#§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§5<§();
            }
            else
            {
               if(_loc1_.§8A§ & b2Contact.§;S§)
               {
                  if(_loc5_.§8`§(_loc4_) == false)
                  {
                     _loc9_ = _loc1_;
                     _loc1_ = _loc9_.§5<§();
                     this.§"!Q§(_loc9_);
                     continue;
                  }
                  if(this.§";§.§8`§(_loc2_,_loc3_) == false)
                  {
                     _loc9_ = _loc1_;
                     _loc1_ = _loc9_.§5<§();
                     this.§"!Q§(_loc9_);
                     continue;
                  }
                  _loc1_.§8A§ &= ~b2Contact.§;S§;
               }
               _loc6_ = _loc2_.§#F§;
               _loc7_ = _loc3_.§#F§;
               _loc8_ = this.§+!2§.§>!N§(_loc6_,_loc7_);
               if(_loc8_ == false)
               {
                  _loc9_ = _loc1_;
                  _loc1_ = _loc9_.§5<§();
                  this.§"!Q§(_loc9_);
               }
               else
               {
                  _loc1_.§&7§(this.§-m§);
                  _loc1_ = _loc1_.§5<§();
               }
            }
         }
      }
   }
}
