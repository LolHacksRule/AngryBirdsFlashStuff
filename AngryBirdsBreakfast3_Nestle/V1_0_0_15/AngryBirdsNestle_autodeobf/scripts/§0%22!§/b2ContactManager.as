package §0"!§
{
   import §!§.§5!u§;
   import §!§.b2ContactPoint;
   import §!§.b2DynamicTreeBroadPhase;
   import §'!_§.b2internal;
   import §23§.b2Contact;
   import §23§.b2ContactEdge;
   import §23§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §6!a§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §"V§:§5!u§;
      
      b2internal var § if§:b2Contact;
      
      b2internal var §^" §:int;
      
      b2internal var §&!W§:b2ContactFilter;
      
      b2internal var §>l§:b2ContactListener;
      
      b2internal var §>W§:b2ContactFactory;
      
      b2internal var §;!b§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§^" § = 0;
         this.§&!W§ = b2ContactFilter.§]2§;
         this.§>l§ = b2ContactListener.§7j§;
         this.§>W§ = new b2ContactFactory(this.§;!b§);
         this.§"V§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §2!o§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§@d§();
         while(_loc7_)
         {
            if(_loc7_.§"l§ == _loc5_)
            {
               _loc9_ = _loc7_.§@"6§.§6!'§();
               _loc10_ = _loc7_.§@"6§.§]O§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.next;
         }
         if(_loc6_.§^m§(_loc5_) == false)
         {
            return;
         }
         if(this.§&!W§.§^m§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§>W§.§'!D§(_loc3_,_loc4_)).§6!'§();
         _loc4_ = _loc8_.§]O§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§,!>§ = null;
         _loc8_.§6!c§ = this.m_world.§ if§;
         if(this.m_world.§ if§ != null)
         {
            this.m_world.§ if§.§,!>§ = _loc8_;
         }
         this.m_world.§ if§ = _loc8_;
         _loc8_.§81§.§@"6§ = _loc8_;
         _loc8_.§81§.§"l§ = _loc6_;
         _loc8_.§81§.§3!B§ = null;
         _loc8_.§81§.next = _loc5_.§ if§;
         if(_loc5_.§ if§ != null)
         {
            _loc5_.§ if§.§3!B§ = _loc8_.§81§;
         }
         _loc5_.§ if§ = _loc8_.§81§;
         _loc8_.§!!'§.§@"6§ = _loc8_;
         _loc8_.§!!'§.§"l§ = _loc5_;
         _loc8_.§!!'§.§3!B§ = null;
         _loc8_.§!!'§.next = _loc6_.§ if§;
         if(_loc6_.§ if§ != null)
         {
            _loc6_.§ if§.§3!B§ = _loc8_.§!!'§;
         }
         _loc6_.§ if§ = _loc8_.§!!'§;
         ++this.m_world.§^" §;
      }
      
      public function §+!`§() : void
      {
         this.§"V§.§0!Y§(this.§2!o§);
      }
      
      public function §7!d§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§6!'§();
         var _loc3_:b2Fixture = param1.§]O§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§>k§())
         {
            this.§>l§.EndContact(param1);
         }
         if(param1.§,!>§)
         {
            param1.§,!>§.§6!c§ = param1.§6!c§;
         }
         if(param1.§6!c§)
         {
            param1.§6!c§.§,!>§ = param1.§,!>§;
         }
         if(param1 == this.m_world.§ if§)
         {
            this.m_world.§ if§ = param1.§6!c§;
         }
         if(param1.§81§.§3!B§)
         {
            param1.§81§.§3!B§.next = param1.§81§.next;
         }
         if(param1.§81§.next)
         {
            param1.§81§.next.§3!B§ = param1.§81§.§3!B§;
         }
         if(param1.§81§ == _loc4_.§ if§)
         {
            _loc4_.§ if§ = param1.§81§.next;
         }
         if(param1.§!!'§.§3!B§)
         {
            param1.§!!'§.§3!B§.next = param1.§!!'§.next;
         }
         if(param1.§!!'§.next)
         {
            param1.§!!'§.next.§3!B§ = param1.§!!'§.§3!B§;
         }
         if(param1.§!!'§ == _loc5_.§ if§)
         {
            _loc5_.§ if§ = param1.§!!'§.next;
         }
         this.§>W§.§7!d§(param1);
         --this.§^" §;
      }
      
      public function §`!w§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§ if§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§6!'§();
            _loc3_ = _loc1_.§]O§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§2!9§();
            }
            else
            {
               if(_loc1_.§1!h§ & b2Contact.§!c§ || _loc4_.§&!;§ || _loc5_.§&!;§)
               {
                  if(_loc5_.§^m§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§2!9§();
                     this.§7!d§(_loc9_);
                     continue;
                  }
                  if(this.§&!W§.§^m§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§2!9§();
                     this.§7!d§(_loc9_);
                     continue;
                  }
                  _loc1_.§1!h§ &= ~b2Contact.§!c§;
               }
               _loc6_ = _loc2_.§^!N§;
               _loc7_ = _loc3_.§^!N§;
               if((_loc8_ = this.§"V§.§4I§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§2!9§();
                  this.§7!d§(_loc9_);
               }
               else
               {
                  _loc1_.§%3§(this.§>l§);
                  _loc1_ = _loc1_.§2!9§();
               }
            }
         }
      }
   }
}
