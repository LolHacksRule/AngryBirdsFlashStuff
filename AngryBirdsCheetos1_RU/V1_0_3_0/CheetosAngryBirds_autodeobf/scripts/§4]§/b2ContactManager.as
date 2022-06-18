package §4]§
{
   import §#,§.b2internal;
   import §&U§.b2Contact;
   import §&U§.b2ContactEdge;
   import §&U§.b2ContactFactory;
   import §7$§.§%!"§;
   import §7$§.b2ContactPoint;
   import §7$§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §-Q§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §,!'§:§%!"§;
      
      b2internal var §`]§:b2Contact;
      
      b2internal var §?!Y§:int;
      
      b2internal var §&d§:b2ContactFilter;
      
      b2internal var §=M§:b2ContactListener;
      
      b2internal var §]!T§:b2ContactFactory;
      
      b2internal var §``§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§?!Y§ = 0;
         this.§&d§ = b2ContactFilter.§<+§;
         this.§=M§ = b2ContactListener.§!2§;
         this.§]!T§ = new b2ContactFactory(this.§``§);
         this.§,!'§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §%,§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§2!I§();
         while(_loc7_)
         {
            if(_loc7_.§6!J§ == _loc5_)
            {
               _loc9_ = _loc7_.§#!b§.§?O§();
               _loc10_ = _loc7_.§#!b§.§-K§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§5E§;
         }
         if(_loc6_.§2!2§(_loc5_) == false)
         {
            return;
         }
         if(this.§&d§.§2!2§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§]!T§.§[?§(_loc3_,_loc4_)).§?O§();
         _loc4_ = _loc8_.§-K§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§-%§ = null;
         _loc8_.§ !P§ = this.m_world.§`]§;
         if(this.m_world.§`]§ != null)
         {
            this.m_world.§`]§.§-%§ = _loc8_;
         }
         this.m_world.§`]§ = _loc8_;
         _loc8_.§76§.§#!b§ = _loc8_;
         _loc8_.§76§.§6!J§ = _loc6_;
         _loc8_.§76§.§&`§ = null;
         _loc8_.§76§.§5E§ = _loc5_.§`]§;
         if(_loc5_.§`]§ != null)
         {
            _loc5_.§`]§.§&`§ = _loc8_.§76§;
         }
         _loc5_.§`]§ = _loc8_.§76§;
         _loc8_.§]!8§.§#!b§ = _loc8_;
         _loc8_.§]!8§.§6!J§ = _loc5_;
         _loc8_.§]!8§.§&`§ = null;
         _loc8_.§]!8§.§5E§ = _loc6_.§`]§;
         if(_loc6_.§`]§ != null)
         {
            _loc6_.§`]§.§&`§ = _loc8_.§]!8§;
         }
         _loc6_.§`]§ = _loc8_.§]!8§;
         ++this.m_world.§?!Y§;
      }
      
      public function § c§() : void
      {
         this.§,!'§.§',§(this.§%,§);
      }
      
      public function §^!K§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§?O§();
         var _loc3_:b2Fixture = param1.§-K§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§!!4§())
         {
            this.§=M§.EndContact(param1);
         }
         if(param1.§-%§)
         {
            param1.§-%§.§ !P§ = param1.§ !P§;
         }
         if(param1.§ !P§)
         {
            param1.§ !P§.§-%§ = param1.§-%§;
         }
         if(param1 == this.m_world.§`]§)
         {
            this.m_world.§`]§ = param1.§ !P§;
         }
         if(param1.§76§.§&`§)
         {
            param1.§76§.§&`§.§5E§ = param1.§76§.§5E§;
         }
         if(param1.§76§.§5E§)
         {
            param1.§76§.§5E§.§&`§ = param1.§76§.§&`§;
         }
         if(param1.§76§ == _loc4_.§`]§)
         {
            _loc4_.§`]§ = param1.§76§.§5E§;
         }
         if(param1.§]!8§.§&`§)
         {
            param1.§]!8§.§&`§.§5E§ = param1.§]!8§.§5E§;
         }
         if(param1.§]!8§.§5E§)
         {
            param1.§]!8§.§5E§.§&`§ = param1.§]!8§.§&`§;
         }
         if(param1.§]!8§ == _loc5_.§`]§)
         {
            _loc5_.§`]§ = param1.§]!8§.§5E§;
         }
         this.§]!T§.§^!K§(param1);
         --this.§?!Y§;
      }
      
      public function §?Z§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§`]§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§?O§();
            _loc3_ = _loc1_.§-K§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§&6§();
            }
            else
            {
               if(_loc1_.§0!A§ & b2Contact.§##§)
               {
                  if(_loc5_.§2!2§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§&6§();
                     this.§^!K§(_loc9_);
                     continue;
                  }
                  if(this.§&d§.§2!2§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§&6§();
                     this.§^!K§(_loc9_);
                     continue;
                  }
                  _loc1_.§0!A§ &= ~b2Contact.§##§;
               }
               _loc6_ = _loc2_.§+P§;
               _loc7_ = _loc3_.§+P§;
               if((_loc8_ = this.§,!'§.§?U§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§&6§();
                  this.§^!K§(_loc9_);
               }
               else
               {
                  _loc1_.§4!$§(this.§=M§);
                  _loc1_ = _loc1_.§&6§();
               }
            }
         }
      }
   }
}
