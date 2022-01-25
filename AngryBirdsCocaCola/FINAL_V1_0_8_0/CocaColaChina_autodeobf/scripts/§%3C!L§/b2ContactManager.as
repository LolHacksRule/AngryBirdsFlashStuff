package §<!L§
{
   import §1z§.b2Contact;
   import §1z§.b2ContactEdge;
   import §1z§.b2ContactFactory;
   import §?F§.§"l§;
   import §?F§.b2ContactPoint;
   import §?F§.b2DynamicTreeBroadPhase;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §6!B§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §0T§:§"l§;
      
      b2internal var §<k§:b2Contact;
      
      b2internal var §<R§:int;
      
      b2internal var §-!I§:b2ContactFilter;
      
      b2internal var §=c§:b2ContactListener;
      
      b2internal var §1t§:b2ContactFactory;
      
      b2internal var §]!M§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§<R§ = 0;
         this.§-!I§ = b2ContactFilter.§7!^§;
         this.§=c§ = b2ContactListener.§,M§;
         this.§1t§ = new b2ContactFactory(this.§]!M§);
         this.§0T§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §>4§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§2e§();
         while(_loc7_)
         {
            if(_loc7_.§5n§ == _loc5_)
            {
               _loc9_ = _loc7_.§'4§.§&+§();
               _loc10_ = _loc7_.§'4§.§0!!§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§+!P§;
         }
         if(_loc6_.§!#§(_loc5_) == false)
         {
            return;
         }
         if(this.§-!I§.§!#§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§1t§.§8y§(_loc3_,_loc4_)).§&+§();
         _loc4_ = _loc8_.§0!!§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§4=§ = null;
         _loc8_.§!!U§ = this.m_world.§<k§;
         if(this.m_world.§<k§ != null)
         {
            this.m_world.§<k§.§4=§ = _loc8_;
         }
         this.m_world.§<k§ = _loc8_;
         _loc8_.§;!=§.§'4§ = _loc8_;
         _loc8_.§;!=§.§5n§ = _loc6_;
         _loc8_.§;!=§.§',§ = null;
         _loc8_.§;!=§.§+!P§ = _loc5_.§<k§;
         if(_loc5_.§<k§ != null)
         {
            _loc5_.§<k§.§',§ = _loc8_.§;!=§;
         }
         _loc5_.§<k§ = _loc8_.§;!=§;
         _loc8_.§=r§.§'4§ = _loc8_;
         _loc8_.§=r§.§5n§ = _loc5_;
         _loc8_.§=r§.§',§ = null;
         _loc8_.§=r§.§+!P§ = _loc6_.§<k§;
         if(_loc6_.§<k§ != null)
         {
            _loc6_.§<k§.§',§ = _loc8_.§=r§;
         }
         _loc6_.§<k§ = _loc8_.§=r§;
         ++this.m_world.§<R§;
      }
      
      public function §>!^§() : void
      {
         this.§0T§.§``§(this.§>4§);
      }
      
      public function §#2§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§&+§();
         var _loc3_:b2Fixture = param1.§0!!§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§1!0§())
         {
            this.§=c§.EndContact(param1);
         }
         if(param1.§4=§)
         {
            param1.§4=§.§!!U§ = param1.§!!U§;
         }
         if(param1.§!!U§)
         {
            param1.§!!U§.§4=§ = param1.§4=§;
         }
         if(param1 == this.m_world.§<k§)
         {
            this.m_world.§<k§ = param1.§!!U§;
         }
         if(param1.§;!=§.§',§)
         {
            param1.§;!=§.§',§.§+!P§ = param1.§;!=§.§+!P§;
         }
         if(param1.§;!=§.§+!P§)
         {
            param1.§;!=§.§+!P§.§',§ = param1.§;!=§.§',§;
         }
         if(param1.§;!=§ == _loc4_.§<k§)
         {
            _loc4_.§<k§ = param1.§;!=§.§+!P§;
         }
         if(param1.§=r§.§',§)
         {
            param1.§=r§.§',§.§+!P§ = param1.§=r§.§+!P§;
         }
         if(param1.§=r§.§+!P§)
         {
            param1.§=r§.§+!P§.§',§ = param1.§=r§.§',§;
         }
         if(param1.§=r§ == _loc5_.§<k§)
         {
            _loc5_.§<k§ = param1.§=r§.§+!P§;
         }
         this.§1t§.§#2§(param1);
         --this.§<R§;
      }
      
      public function §5!"§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§<k§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§&+§();
            _loc3_ = _loc1_.§0!!§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§4"§();
            }
            else
            {
               if(_loc1_.§0=§ & b2Contact.§8!@§)
               {
                  if(_loc5_.§!#§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§4"§();
                     this.§#2§(_loc9_);
                     continue;
                  }
                  if(this.§-!I§.§!#§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§4"§();
                     this.§#2§(_loc9_);
                     continue;
                  }
                  _loc1_.§0=§ &= ~b2Contact.§8!@§;
               }
               _loc6_ = _loc2_.§'3§;
               _loc7_ = _loc3_.§'3§;
               if((_loc8_ = this.§0T§.§13§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§4"§();
                  this.§#2§(_loc9_);
               }
               else
               {
                  _loc1_.§8!1§(this.§=c§);
                  _loc1_ = _loc1_.§4"§();
               }
            }
         }
      }
   }
}
