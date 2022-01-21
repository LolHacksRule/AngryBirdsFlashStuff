package §3!g§
{
   import §'!9§.b2Contact;
   import §'!9§.b2ContactEdge;
   import §'!9§.b2ContactFactory;
   import §<!!§.§]!H§;
   import §<!!§.b2ContactPoint;
   import §<!!§.b2DynamicTreeBroadPhase;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §';§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §`!!§:§]!H§;
      
      b2internal var §`!K§:b2Contact;
      
      b2internal var §,!7§:int;
      
      b2internal var §8p§:b2ContactFilter;
      
      b2internal var §,l§:b2ContactListener;
      
      b2internal var §2c§:b2ContactFactory;
      
      b2internal var §?;§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§,!7§ = 0;
         this.§8p§ = b2ContactFilter.§+c§;
         this.§,l§ = b2ContactListener.§catch§;
         this.§2c§ = new b2ContactFactory(this.§?;§);
         this.§`!!§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §@!+§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§]!@§();
         while(_loc7_)
         {
            if(_loc7_.§ O§ == _loc5_)
            {
               _loc9_ = _loc7_.§!R§.§'C§();
               _loc10_ = _loc7_.§!R§.§<!n§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§[8§;
         }
         if(_loc6_.§;!6§(_loc5_) == false)
         {
            return;
         }
         if(this.§8p§.§;!6§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§2c§.§ 9§(_loc3_,_loc4_)).§'C§();
         _loc4_ = _loc8_.§<!n§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§4W§ = null;
         _loc8_.§ set§ = this.m_world.§`!K§;
         if(this.m_world.§`!K§ != null)
         {
            this.m_world.§`!K§.§4W§ = _loc8_;
         }
         this.m_world.§`!K§ = _loc8_;
         _loc8_.§"!a§.§!R§ = _loc8_;
         _loc8_.§"!a§.§ O§ = _loc6_;
         _loc8_.§"!a§.§@7§ = null;
         _loc8_.§"!a§.§[8§ = _loc5_.§`!K§;
         if(_loc5_.§`!K§ != null)
         {
            _loc5_.§`!K§.§@7§ = _loc8_.§"!a§;
         }
         _loc5_.§`!K§ = _loc8_.§"!a§;
         _loc8_.§`R§.§!R§ = _loc8_;
         _loc8_.§`R§.§ O§ = _loc5_;
         _loc8_.§`R§.§@7§ = null;
         _loc8_.§`R§.§[8§ = _loc6_.§`!K§;
         if(_loc6_.§`!K§ != null)
         {
            _loc6_.§`!K§.§@7§ = _loc8_.§`R§;
         }
         _loc6_.§`!K§ = _loc8_.§`R§;
         ++this.m_world.§,!7§;
      }
      
      public function §,!U§() : void
      {
         this.§`!!§.§%&§(this.§@!+§);
      }
      
      public function §+$§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§'C§();
         var _loc3_:b2Fixture = param1.§<!n§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§`T§())
         {
            this.§,l§.EndContact(param1);
         }
         if(param1.§4W§)
         {
            param1.§4W§.§ set§ = param1.§ set§;
         }
         if(param1.§ set§)
         {
            param1.§ set§.§4W§ = param1.§4W§;
         }
         if(param1 == this.m_world.§`!K§)
         {
            this.m_world.§`!K§ = param1.§ set§;
         }
         if(param1.§"!a§.§@7§)
         {
            param1.§"!a§.§@7§.§[8§ = param1.§"!a§.§[8§;
         }
         if(param1.§"!a§.§[8§)
         {
            param1.§"!a§.§[8§.§@7§ = param1.§"!a§.§@7§;
         }
         if(param1.§"!a§ == _loc4_.§`!K§)
         {
            _loc4_.§`!K§ = param1.§"!a§.§[8§;
         }
         if(param1.§`R§.§@7§)
         {
            param1.§`R§.§@7§.§[8§ = param1.§`R§.§[8§;
         }
         if(param1.§`R§.§[8§)
         {
            param1.§`R§.§[8§.§@7§ = param1.§`R§.§@7§;
         }
         if(param1.§`R§ == _loc5_.§`!K§)
         {
            _loc5_.§`!K§ = param1.§`R§.§[8§;
         }
         this.§2c§.§+$§(param1);
         --this.§,!7§;
      }
      
      public function §1L§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§`!K§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§'C§();
            _loc3_ = _loc1_.§<!n§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§%H§();
            }
            else
            {
               if(_loc1_.§9!U§ & b2Contact.§#!;§)
               {
                  if(_loc5_.§;!6§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%H§();
                     this.§+$§(_loc9_);
                     continue;
                  }
                  if(this.§8p§.§;!6§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%H§();
                     this.§+$§(_loc9_);
                     continue;
                  }
                  _loc1_.§9!U§ &= ~b2Contact.§#!;§;
               }
               _loc6_ = _loc2_.§3r§;
               _loc7_ = _loc3_.§3r§;
               if((_loc8_ = this.§`!!§.§;l§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§%H§();
                  this.§+$§(_loc9_);
               }
               else
               {
                  _loc1_.§"!M§(this.§,l§);
                  _loc1_ = _loc1_.§%H§();
               }
            }
         }
      }
   }
}
