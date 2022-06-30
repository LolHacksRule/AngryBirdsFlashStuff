package §3!R§
{
   import §!4§.§!s§;
   import §!4§.b2ContactPoint;
   import §!4§.b2DynamicTreeBroadPhase;
   import §=0§.b2Contact;
   import §=0§.b2ContactEdge;
   import §=0§.b2ContactFactory;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §3!,§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §-E§:§!s§;
      
      b2internal var §`W§:b2Contact;
      
      b2internal var § !N§:int;
      
      b2internal var §=n§:b2ContactFilter;
      
      b2internal var §;!5§:b2ContactListener;
      
      b2internal var §>1§:b2ContactFactory;
      
      b2internal var §[!<§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§ !N§ = 0;
         this.§=n§ = b2ContactFilter.§'!a§;
         this.§;!5§ = b2ContactListener.§+l§;
         this.§>1§ = new b2ContactFactory(this.§[!<§);
         this.§-E§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §7!5§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§!+§();
         while(_loc7_)
         {
            if(_loc7_.§=!"§ == _loc5_)
            {
               _loc9_ = _loc7_.§-!$§.§#!D§();
               _loc10_ = _loc7_.§-!$§.§''§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§+m§;
         }
         if(_loc6_.§3!C§(_loc5_) == false)
         {
            return;
         }
         if(this.§=n§.§3!C§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§>1§.§;O§(_loc3_,_loc4_)).§#!D§();
         _loc4_ = _loc8_.§''§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§8s§ = null;
         _loc8_.§>W§ = this.m_world.§`W§;
         if(this.m_world.§`W§ != null)
         {
            this.m_world.§`W§.§8s§ = _loc8_;
         }
         this.m_world.§`W§ = _loc8_;
         _loc8_.§0!=§.§-!$§ = _loc8_;
         _loc8_.§0!=§.§=!"§ = _loc6_;
         _loc8_.§0!=§.§ true§ = null;
         _loc8_.§0!=§.§+m§ = _loc5_.§`W§;
         if(_loc5_.§`W§ != null)
         {
            _loc5_.§`W§.§ true§ = _loc8_.§0!=§;
         }
         _loc5_.§`W§ = _loc8_.§0!=§;
         _loc8_.§^!?§.§-!$§ = _loc8_;
         _loc8_.§^!?§.§=!"§ = _loc5_;
         _loc8_.§^!?§.§ true§ = null;
         _loc8_.§^!?§.§+m§ = _loc6_.§`W§;
         if(_loc6_.§`W§ != null)
         {
            _loc6_.§`W§.§ true§ = _loc8_.§^!?§;
         }
         _loc6_.§`W§ = _loc8_.§^!?§;
         ++this.m_world.§ !N§;
      }
      
      public function §<o§() : void
      {
         this.§-E§.§"!R§(this.§7!5§);
      }
      
      public function §;!^§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§#!D§();
         var _loc3_:b2Fixture = param1.§''§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§1h§())
         {
            this.§;!5§.EndContact(param1);
         }
         if(param1.§8s§)
         {
            param1.§8s§.§>W§ = param1.§>W§;
         }
         if(param1.§>W§)
         {
            param1.§>W§.§8s§ = param1.§8s§;
         }
         if(param1 == this.m_world.§`W§)
         {
            this.m_world.§`W§ = param1.§>W§;
         }
         if(param1.§0!=§.§ true§)
         {
            param1.§0!=§.§ true§.§+m§ = param1.§0!=§.§+m§;
         }
         if(param1.§0!=§.§+m§)
         {
            param1.§0!=§.§+m§.§ true§ = param1.§0!=§.§ true§;
         }
         if(param1.§0!=§ == _loc4_.§`W§)
         {
            _loc4_.§`W§ = param1.§0!=§.§+m§;
         }
         if(param1.§^!?§.§ true§)
         {
            param1.§^!?§.§ true§.§+m§ = param1.§^!?§.§+m§;
         }
         if(param1.§^!?§.§+m§)
         {
            param1.§^!?§.§+m§.§ true§ = param1.§^!?§.§ true§;
         }
         if(param1.§^!?§ == _loc5_.§`W§)
         {
            _loc5_.§`W§ = param1.§^!?§.§+m§;
         }
         this.§>1§.§;!^§(param1);
         --this.§ !N§;
      }
      
      public function §!J§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§`W§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§#!D§();
            _loc3_ = _loc1_.§''§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§5!J§();
            }
            else
            {
               if(_loc1_.§5!5§ & b2Contact.§^-§)
               {
                  if(_loc5_.§3!C§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§5!J§();
                     this.§;!^§(_loc9_);
                     continue;
                  }
                  if(this.§=n§.§3!C§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§5!J§();
                     this.§;!^§(_loc9_);
                     continue;
                  }
                  _loc1_.§5!5§ &= ~b2Contact.§^-§;
               }
               _loc6_ = _loc2_.§&<§;
               _loc7_ = _loc3_.§&<§;
               if((_loc8_ = this.§-E§.§+!;§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§5!J§();
                  this.§;!^§(_loc9_);
               }
               else
               {
                  _loc1_.§?!§(this.§;!5§);
                  _loc1_ = _loc1_.§5!J§();
               }
            }
         }
      }
   }
}
