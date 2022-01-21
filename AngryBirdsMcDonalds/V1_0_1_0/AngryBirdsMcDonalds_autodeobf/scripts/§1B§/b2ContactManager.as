package §1B§
{
   import §9i§.b2internal;
   import §>!'§.b2Contact;
   import §>!'§.b2ContactEdge;
   import §>!'§.b2ContactFactory;
   import §]7§.§#!0§;
   import §]7§.b2ContactPoint;
   import §]7§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §'J§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §-!4§:§#!0§;
      
      b2internal var §<!@§:b2Contact;
      
      b2internal var §`!7§:int;
      
      b2internal var §6S§:b2ContactFilter;
      
      b2internal var §`N§:b2ContactListener;
      
      b2internal var §>!>§:b2ContactFactory;
      
      b2internal var §7g§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§`!7§ = 0;
         this.§6S§ = b2ContactFilter.§?u§;
         this.§`N§ = b2ContactListener.§?b§;
         this.§>!>§ = new b2ContactFactory(this.§7g§);
         this.§-!4§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §4!X§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§`K§();
         while(_loc7_)
         {
            if(_loc7_.§>!B§ == _loc5_)
            {
               _loc9_ = _loc7_.§"!3§.§>C§();
               _loc10_ = _loc7_.§"!3§.§3y§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§6W§;
         }
         if(_loc6_.§^!'§(_loc5_) == false)
         {
            return;
         }
         if(this.§6S§.§^!'§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§>!>§.§ %§(_loc3_,_loc4_)).§>C§();
         _loc4_ = _loc8_.§3y§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§]!K§ = null;
         _loc8_.§>y§ = this.m_world.§<!@§;
         if(this.m_world.§<!@§ != null)
         {
            this.m_world.§<!@§.§]!K§ = _loc8_;
         }
         this.m_world.§<!@§ = _loc8_;
         _loc8_.§9k§.§"!3§ = _loc8_;
         _loc8_.§9k§.§>!B§ = _loc6_;
         _loc8_.§9k§.§<!C§ = null;
         _loc8_.§9k§.§6W§ = _loc5_.§<!@§;
         if(_loc5_.§<!@§ != null)
         {
            _loc5_.§<!@§.§<!C§ = _loc8_.§9k§;
         }
         _loc5_.§<!@§ = _loc8_.§9k§;
         _loc8_.§[!$§.§"!3§ = _loc8_;
         _loc8_.§[!$§.§>!B§ = _loc5_;
         _loc8_.§[!$§.§<!C§ = null;
         _loc8_.§[!$§.§6W§ = _loc6_.§<!@§;
         if(_loc6_.§<!@§ != null)
         {
            _loc6_.§<!@§.§<!C§ = _loc8_.§[!$§;
         }
         _loc6_.§<!@§ = _loc8_.§[!$§;
         ++this.m_world.§`!7§;
      }
      
      public function §?o§() : void
      {
         this.§-!4§.§#!M§(this.§4!X§);
      }
      
      public function §%_§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§>C§();
         var _loc3_:b2Fixture = param1.§3y§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§<+§())
         {
            this.§`N§.EndContact(param1);
         }
         if(param1.§]!K§)
         {
            param1.§]!K§.§>y§ = param1.§>y§;
         }
         if(param1.§>y§)
         {
            param1.§>y§.§]!K§ = param1.§]!K§;
         }
         if(param1 == this.m_world.§<!@§)
         {
            this.m_world.§<!@§ = param1.§>y§;
         }
         if(param1.§9k§.§<!C§)
         {
            param1.§9k§.§<!C§.§6W§ = param1.§9k§.§6W§;
         }
         if(param1.§9k§.§6W§)
         {
            param1.§9k§.§6W§.§<!C§ = param1.§9k§.§<!C§;
         }
         if(param1.§9k§ == _loc4_.§<!@§)
         {
            _loc4_.§<!@§ = param1.§9k§.§6W§;
         }
         if(param1.§[!$§.§<!C§)
         {
            param1.§[!$§.§<!C§.§6W§ = param1.§[!$§.§6W§;
         }
         if(param1.§[!$§.§6W§)
         {
            param1.§[!$§.§6W§.§<!C§ = param1.§[!$§.§<!C§;
         }
         if(param1.§[!$§ == _loc5_.§<!@§)
         {
            _loc5_.§<!@§ = param1.§[!$§.§6W§;
         }
         this.§>!>§.§%_§(param1);
         --this.§`!7§;
      }
      
      public function §4o§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§<!@§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§>C§();
            _loc3_ = _loc1_.§3y§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§-7§();
            }
            else
            {
               if(_loc1_.§%!%§ & b2Contact.§&!c§)
               {
                  if(_loc5_.§^!'§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§-7§();
                     this.§%_§(_loc9_);
                     continue;
                  }
                  if(this.§6S§.§^!'§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§-7§();
                     this.§%_§(_loc9_);
                     continue;
                  }
                  _loc1_.§%!%§ &= ~b2Contact.§&!c§;
               }
               _loc6_ = _loc2_.§[x§;
               _loc7_ = _loc3_.§[x§;
               if((_loc8_ = this.§-!4§.§6!_§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§-7§();
                  this.§%_§(_loc9_);
               }
               else
               {
                  _loc1_.§7!]§(this.§`N§);
                  _loc1_ = _loc1_.§-7§();
               }
            }
         }
      }
   }
}
