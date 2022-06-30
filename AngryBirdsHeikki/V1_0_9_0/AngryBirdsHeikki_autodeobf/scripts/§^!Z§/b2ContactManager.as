package §^!Z§
{
   import §+&§.b2internal;
   import §=_§.b2Contact;
   import §=_§.b2ContactEdge;
   import §=_§.b2ContactFactory;
   import §^t§.§8]§;
   import §^t§.b2ContactPoint;
   import §^t§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §;,§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var § @§:§8]§;
      
      b2internal var §4!D§:b2Contact;
      
      b2internal var §default§:int;
      
      b2internal var §2!M§:b2ContactFilter;
      
      b2internal var § !f§:b2ContactListener;
      
      b2internal var §"!9§:b2ContactFactory;
      
      b2internal var §"5§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§default§ = 0;
         this.§2!M§ = b2ContactFilter.§=K§;
         this.§ !f§ = b2ContactListener.§`7§;
         this.§"!9§ = new b2ContactFactory(this.§"5§);
         this.§ @§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §%!e§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§>v§();
         while(_loc7_)
         {
            if(_loc7_.§-!_§ == _loc5_)
            {
               _loc9_ = _loc7_.§6!e§.§]!4§();
               _loc10_ = _loc7_.§6!e§.§5#§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§9e§;
         }
         if(_loc6_.§^n§(_loc5_) == false)
         {
            return;
         }
         if(this.§2!M§.§^n§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§"!9§.§8b§(_loc3_,_loc4_)).§]!4§();
         _loc4_ = _loc8_.§5#§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§9!@§ = null;
         _loc8_.§]!8§ = this.m_world.§4!D§;
         if(this.m_world.§4!D§ != null)
         {
            this.m_world.§4!D§.§9!@§ = _loc8_;
         }
         this.m_world.§4!D§ = _loc8_;
         _loc8_.§>3§.§6!e§ = _loc8_;
         _loc8_.§>3§.§-!_§ = _loc6_;
         _loc8_.§>3§.§]!Q§ = null;
         _loc8_.§>3§.§9e§ = _loc5_.§4!D§;
         if(_loc5_.§4!D§ != null)
         {
            _loc5_.§4!D§.§]!Q§ = _loc8_.§>3§;
         }
         _loc5_.§4!D§ = _loc8_.§>3§;
         _loc8_.§2^§.§6!e§ = _loc8_;
         _loc8_.§2^§.§-!_§ = _loc5_;
         _loc8_.§2^§.§]!Q§ = null;
         _loc8_.§2^§.§9e§ = _loc6_.§4!D§;
         if(_loc6_.§4!D§ != null)
         {
            _loc6_.§4!D§.§]!Q§ = _loc8_.§2^§;
         }
         _loc6_.§4!D§ = _loc8_.§2^§;
         ++this.m_world.§default§;
      }
      
      public function §2a§() : void
      {
         this.§ @§.§"B§(this.§%!e§);
      }
      
      public function §<a§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§]!4§();
         var _loc3_:b2Fixture = param1.§5#§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§5!!§())
         {
            this.§ !f§.EndContact(param1);
         }
         if(param1.§9!@§)
         {
            param1.§9!@§.§]!8§ = param1.§]!8§;
         }
         if(param1.§]!8§)
         {
            param1.§]!8§.§9!@§ = param1.§9!@§;
         }
         if(param1 == this.m_world.§4!D§)
         {
            this.m_world.§4!D§ = param1.§]!8§;
         }
         if(param1.§>3§.§]!Q§)
         {
            param1.§>3§.§]!Q§.§9e§ = param1.§>3§.§9e§;
         }
         if(param1.§>3§.§9e§)
         {
            param1.§>3§.§9e§.§]!Q§ = param1.§>3§.§]!Q§;
         }
         if(param1.§>3§ == _loc4_.§4!D§)
         {
            _loc4_.§4!D§ = param1.§>3§.§9e§;
         }
         if(param1.§2^§.§]!Q§)
         {
            param1.§2^§.§]!Q§.§9e§ = param1.§2^§.§9e§;
         }
         if(param1.§2^§.§9e§)
         {
            param1.§2^§.§9e§.§]!Q§ = param1.§2^§.§]!Q§;
         }
         if(param1.§2^§ == _loc5_.§4!D§)
         {
            _loc5_.§4!D§ = param1.§2^§.§9e§;
         }
         this.§"!9§.§<a§(param1);
         --this.§default§;
      }
      
      public function §3!<§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§4!D§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§]!4§();
            _loc3_ = _loc1_.§5#§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§1![§();
            }
            else
            {
               if(_loc1_.§=?§ & b2Contact.§"%§)
               {
                  if(_loc5_.§^n§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§1![§();
                     this.§<a§(_loc9_);
                     continue;
                  }
                  if(this.§2!M§.§^n§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§1![§();
                     this.§<a§(_loc9_);
                     continue;
                  }
                  _loc1_.§=?§ &= ~b2Contact.§"%§;
               }
               _loc6_ = _loc2_.§77§;
               _loc7_ = _loc3_.§77§;
               if((_loc8_ = this.§ @§.§"!=§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§1![§();
                  this.§<a§(_loc9_);
               }
               else
               {
                  _loc1_.§;!&§(this.§ !f§);
                  _loc1_ = _loc1_.§1![§();
               }
            }
         }
      }
   }
}
