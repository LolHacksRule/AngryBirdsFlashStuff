package §3f§
{
   import §7!C§.b2internal;
   import §<l§.b2Contact;
   import §<l§.b2ContactEdge;
   import §<l§.b2ContactFactory;
   import §=!!§.§?!S§;
   import §=!!§.b2ContactPoint;
   import §=!!§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §][§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §2R§:§?!S§;
      
      b2internal var §'z§:b2Contact;
      
      b2internal var §0@§:int;
      
      b2internal var §3Z§:b2ContactFilter;
      
      b2internal var §,h§:b2ContactListener;
      
      b2internal var §-E§:b2ContactFactory;
      
      b2internal var §?K§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§0@§ = 0;
         this.§3Z§ = b2ContactFilter.§#!A§;
         this.§,h§ = b2ContactListener.§`m§;
         this.§-E§ = new b2ContactFactory(this.§?K§);
         this.§2R§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §&!§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§!u§();
         while(_loc7_)
         {
            if(_loc7_.§8g§ == _loc5_)
            {
               _loc9_ = _loc7_.§+!Q§.§'+§();
               _loc10_ = _loc7_.§+!Q§.§&4§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§`2§;
         }
         if(_loc6_.§<!7§(_loc5_) == false)
         {
            return;
         }
         if(this.§3Z§.§<!7§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§-E§.§?T§(_loc3_,_loc4_)).§'+§();
         _loc4_ = _loc8_.§&4§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§<`§ = null;
         _loc8_.§',§ = this.m_world.§'z§;
         if(this.m_world.§'z§ != null)
         {
            this.m_world.§'z§.§<`§ = _loc8_;
         }
         this.m_world.§'z§ = _loc8_;
         _loc8_.§'c§.§+!Q§ = _loc8_;
         _loc8_.§'c§.§8g§ = _loc6_;
         _loc8_.§'c§.§;C§ = null;
         _loc8_.§'c§.§`2§ = _loc5_.§'z§;
         if(_loc5_.§'z§ != null)
         {
            _loc5_.§'z§.§;C§ = _loc8_.§'c§;
         }
         _loc5_.§'z§ = _loc8_.§'c§;
         _loc8_.§"!^§.§+!Q§ = _loc8_;
         _loc8_.§"!^§.§8g§ = _loc5_;
         _loc8_.§"!^§.§;C§ = null;
         _loc8_.§"!^§.§`2§ = _loc6_.§'z§;
         if(_loc6_.§'z§ != null)
         {
            _loc6_.§'z§.§;C§ = _loc8_.§"!^§;
         }
         _loc6_.§'z§ = _loc8_.§"!^§;
         ++this.m_world.§0@§;
      }
      
      public function §?w§() : void
      {
         this.§2R§.§6J§(this.§&!§);
      }
      
      public function §>h§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§'+§();
         var _loc3_:b2Fixture = param1.§&4§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§#!]§())
         {
            this.§,h§.EndContact(param1);
         }
         if(param1.§<`§)
         {
            param1.§<`§.§',§ = param1.§',§;
         }
         if(param1.§',§)
         {
            param1.§',§.§<`§ = param1.§<`§;
         }
         if(param1 == this.m_world.§'z§)
         {
            this.m_world.§'z§ = param1.§',§;
         }
         if(param1.§'c§.§;C§)
         {
            param1.§'c§.§;C§.§`2§ = param1.§'c§.§`2§;
         }
         if(param1.§'c§.§`2§)
         {
            param1.§'c§.§`2§.§;C§ = param1.§'c§.§;C§;
         }
         if(param1.§'c§ == _loc4_.§'z§)
         {
            _loc4_.§'z§ = param1.§'c§.§`2§;
         }
         if(param1.§"!^§.§;C§)
         {
            param1.§"!^§.§;C§.§`2§ = param1.§"!^§.§`2§;
         }
         if(param1.§"!^§.§`2§)
         {
            param1.§"!^§.§`2§.§;C§ = param1.§"!^§.§;C§;
         }
         if(param1.§"!^§ == _loc5_.§'z§)
         {
            _loc5_.§'z§ = param1.§"!^§.§`2§;
         }
         this.§-E§.§>h§(param1);
         --this.§0@§;
      }
      
      public function §0_§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§'z§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§'+§();
            _loc3_ = _loc1_.§&4§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§ O§();
            }
            else
            {
               if(_loc1_.§^!B§ & b2Contact.§,?§)
               {
                  if(_loc5_.§<!7§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§ O§();
                     this.§>h§(_loc9_);
                     continue;
                  }
                  if(this.§3Z§.§<!7§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§ O§();
                     this.§>h§(_loc9_);
                     continue;
                  }
                  _loc1_.§^!B§ &= ~b2Contact.§,?§;
               }
               _loc6_ = _loc2_.§>j§;
               _loc7_ = _loc3_.§>j§;
               if((_loc8_ = this.§2R§.§-2§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§ O§();
                  this.§>h§(_loc9_);
               }
               else
               {
                  _loc1_.§^!J§(this.§,h§);
                  _loc1_ = _loc1_.§ O§();
               }
            }
         }
      }
   }
}
