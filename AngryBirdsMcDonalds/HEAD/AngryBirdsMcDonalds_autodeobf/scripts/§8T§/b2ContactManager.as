package §8T§
{
   import §,!V§.§"!>§;
   import §,!V§.b2ContactPoint;
   import §,!V§.b2DynamicTreeBroadPhase;
   import §6!g§.b2Contact;
   import §6!g§.b2ContactEdge;
   import §6!g§.b2ContactFactory;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §00§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §>@§:§"!>§;
      
      b2internal var §=!c§:b2Contact;
      
      b2internal var §[P§:int;
      
      b2internal var §#!j§:b2ContactFilter;
      
      b2internal var §6!l§:b2ContactListener;
      
      b2internal var §0@§:b2ContactFactory;
      
      b2internal var §<_§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§[P§ = 0;
         this.§#!j§ = b2ContactFilter.§1!'§;
         this.§6!l§ = b2ContactListener.§?!O§;
         this.§0@§ = new b2ContactFactory(this.§<_§);
         this.§>@§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §>!d§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§ v§();
         while(_loc7_)
         {
            if(_loc7_.§#B§ == _loc5_)
            {
               _loc9_ = _loc7_.§]>§.§8!O§();
               _loc10_ = _loc7_.§]>§.§>$§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§=h§;
         }
         if(_loc6_.§6k§(_loc5_) == false)
         {
            return;
         }
         if(this.§#!j§.§6k§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§0@§.§[u§(_loc3_,_loc4_)).§8!O§();
         _loc4_ = _loc8_.§>$§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§7%§ = null;
         _loc8_.§[h§ = this.m_world.§=!c§;
         if(this.m_world.§=!c§ != null)
         {
            this.m_world.§=!c§.§7%§ = _loc8_;
         }
         this.m_world.§=!c§ = _loc8_;
         _loc8_.§`^§.§]>§ = _loc8_;
         _loc8_.§`^§.§#B§ = _loc6_;
         _loc8_.§`^§.§>!;§ = null;
         _loc8_.§`^§.§=h§ = _loc5_.§=!c§;
         if(_loc5_.§=!c§ != null)
         {
            _loc5_.§=!c§.§>!;§ = _loc8_.§`^§;
         }
         _loc5_.§=!c§ = _loc8_.§`^§;
         _loc8_.§4!R§.§]>§ = _loc8_;
         _loc8_.§4!R§.§#B§ = _loc5_;
         _loc8_.§4!R§.§>!;§ = null;
         _loc8_.§4!R§.§=h§ = _loc6_.§=!c§;
         if(_loc6_.§=!c§ != null)
         {
            _loc6_.§=!c§.§>!;§ = _loc8_.§4!R§;
         }
         _loc6_.§=!c§ = _loc8_.§4!R§;
         ++this.m_world.§[P§;
      }
      
      public function §'!B§() : void
      {
         this.§>@§.§@d§(this.§>!d§);
      }
      
      public function §60§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§8!O§();
         var _loc3_:b2Fixture = param1.§>$§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§?#§())
         {
            this.§6!l§.EndContact(param1);
         }
         if(param1.§7%§)
         {
            param1.§7%§.§[h§ = param1.§[h§;
         }
         if(param1.§[h§)
         {
            param1.§[h§.§7%§ = param1.§7%§;
         }
         if(param1 == this.m_world.§=!c§)
         {
            this.m_world.§=!c§ = param1.§[h§;
         }
         if(param1.§`^§.§>!;§)
         {
            param1.§`^§.§>!;§.§=h§ = param1.§`^§.§=h§;
         }
         if(param1.§`^§.§=h§)
         {
            param1.§`^§.§=h§.§>!;§ = param1.§`^§.§>!;§;
         }
         if(param1.§`^§ == _loc4_.§=!c§)
         {
            _loc4_.§=!c§ = param1.§`^§.§=h§;
         }
         if(param1.§4!R§.§>!;§)
         {
            param1.§4!R§.§>!;§.§=h§ = param1.§4!R§.§=h§;
         }
         if(param1.§4!R§.§=h§)
         {
            param1.§4!R§.§=h§.§>!;§ = param1.§4!R§.§>!;§;
         }
         if(param1.§4!R§ == _loc5_.§=!c§)
         {
            _loc5_.§=!c§ = param1.§4!R§.§=h§;
         }
         this.§0@§.§60§(param1);
         --this.§[P§;
      }
      
      public function §<O§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§=!c§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§8!O§();
            _loc3_ = _loc1_.§>$§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§%!J§();
            }
            else
            {
               if(_loc1_.§3!V§ & b2Contact.§4q§)
               {
                  if(_loc5_.§6k§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%!J§();
                     this.§60§(_loc9_);
                     continue;
                  }
                  if(this.§#!j§.§6k§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%!J§();
                     this.§60§(_loc9_);
                     continue;
                  }
                  _loc1_.§3!V§ &= ~b2Contact.§4q§;
               }
               _loc6_ = _loc2_.§46§;
               _loc7_ = _loc3_.§46§;
               if((_loc8_ = this.§>@§.§?3§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§%!J§();
                  this.§60§(_loc9_);
               }
               else
               {
                  _loc1_.§63§(this.§6!l§);
                  _loc1_ = _loc1_.§%!J§();
               }
            }
         }
      }
   }
}
