package §&x§
{
   import §'!J§.b2Contact;
   import §'!J§.b2ContactEdge;
   import §'!J§.b2ContactFactory;
   import §-!T§.§2!W§;
   import §-!T§.b2ContactPoint;
   import §-!T§.b2DynamicTreeBroadPhase;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §7_§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §2!E§:§2!W§;
      
      b2internal var §1"§:b2Contact;
      
      b2internal var §=?§:int;
      
      b2internal var §#N§:b2ContactFilter;
      
      b2internal var §#!"§:b2ContactListener;
      
      b2internal var §&!5§:b2ContactFactory;
      
      b2internal var §]!A§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§=?§ = 0;
         this.§#N§ = b2ContactFilter.§5!O§;
         this.§#!"§ = b2ContactListener.§6!%§;
         this.§&!5§ = new b2ContactFactory(this.§]!A§);
         this.§2!E§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §02§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§%F§();
         while(_loc7_)
         {
            if(_loc7_.§ W§ == _loc5_)
            {
               _loc9_ = _loc7_.§&!L§.§+!m§();
               _loc10_ = _loc7_.§&!L§.§4j§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§1t§;
         }
         if(_loc6_.§?!6§(_loc5_) == false)
         {
            return;
         }
         if(this.§#N§.§?!6§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§&!5§.§;!1§(_loc3_,_loc4_)).§+!m§();
         _loc4_ = _loc8_.§4j§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§=!W§ = null;
         _loc8_.§18§ = this.m_world.§1"§;
         if(this.m_world.§1"§ != null)
         {
            this.m_world.§1"§.§=!W§ = _loc8_;
         }
         this.m_world.§1"§ = _loc8_;
         _loc8_.§15§.§&!L§ = _loc8_;
         _loc8_.§15§.§ W§ = _loc6_;
         _loc8_.§15§.§"!6§ = null;
         _loc8_.§15§.§1t§ = _loc5_.§1"§;
         if(_loc5_.§1"§ != null)
         {
            _loc5_.§1"§.§"!6§ = _loc8_.§15§;
         }
         _loc5_.§1"§ = _loc8_.§15§;
         _loc8_.§`!A§.§&!L§ = _loc8_;
         _loc8_.§`!A§.§ W§ = _loc5_;
         _loc8_.§`!A§.§"!6§ = null;
         _loc8_.§`!A§.§1t§ = _loc6_.§1"§;
         if(_loc6_.§1"§ != null)
         {
            _loc6_.§1"§.§"!6§ = _loc8_.§`!A§;
         }
         _loc6_.§1"§ = _loc8_.§`!A§;
         ++this.m_world.§=?§;
      }
      
      public function §`o§() : void
      {
         this.§2!E§.§]Q§(this.§02§);
      }
      
      public function § ;§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§+!m§();
         var _loc3_:b2Fixture = param1.§4j§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§@`§())
         {
            this.§#!"§.EndContact(param1);
         }
         if(param1.§=!W§)
         {
            param1.§=!W§.§18§ = param1.§18§;
         }
         if(param1.§18§)
         {
            param1.§18§.§=!W§ = param1.§=!W§;
         }
         if(param1 == this.m_world.§1"§)
         {
            this.m_world.§1"§ = param1.§18§;
         }
         if(param1.§15§.§"!6§)
         {
            param1.§15§.§"!6§.§1t§ = param1.§15§.§1t§;
         }
         if(param1.§15§.§1t§)
         {
            param1.§15§.§1t§.§"!6§ = param1.§15§.§"!6§;
         }
         if(param1.§15§ == _loc4_.§1"§)
         {
            _loc4_.§1"§ = param1.§15§.§1t§;
         }
         if(param1.§`!A§.§"!6§)
         {
            param1.§`!A§.§"!6§.§1t§ = param1.§`!A§.§1t§;
         }
         if(param1.§`!A§.§1t§)
         {
            param1.§`!A§.§1t§.§"!6§ = param1.§`!A§.§"!6§;
         }
         if(param1.§`!A§ == _loc5_.§1"§)
         {
            _loc5_.§1"§ = param1.§`!A§.§1t§;
         }
         this.§&!5§.§ ;§(param1);
         --this.§=?§;
      }
      
      public function §?w§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§1"§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§+!m§();
            _loc3_ = _loc1_.§4j§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§@!^§();
            }
            else
            {
               if(_loc1_.§ 3§ & b2Contact.§!!l§)
               {
                  if(_loc5_.§?!6§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§@!^§();
                     this.§ ;§(_loc9_);
                     continue;
                  }
                  if(this.§#N§.§?!6§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§@!^§();
                     this.§ ;§(_loc9_);
                     continue;
                  }
                  _loc1_.§ 3§ &= ~b2Contact.§!!l§;
               }
               _loc6_ = _loc2_.§0!=§;
               _loc7_ = _loc3_.§0!=§;
               if((_loc8_ = this.§2!E§.§7q§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§@!^§();
                  this.§ ;§(_loc9_);
               }
               else
               {
                  _loc1_.§3!P§(this.§#!"§);
                  _loc1_ = _loc1_.§@!^§();
               }
            }
         }
      }
   }
}
