package §;`§
{
   import §'!^§.b2Contact;
   import §'!^§.b2ContactEdge;
   import §'!^§.b2ContactFactory;
   import §8K§.b2internal;
   import §>!m§.§,t§;
   import §>!m§.b2ContactPoint;
   import §>!m§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §8W§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §%C§:§,t§;
      
      b2internal var §7! §:b2Contact;
      
      b2internal var §1A§:int;
      
      b2internal var §'T§:b2ContactFilter;
      
      b2internal var §,h§:b2ContactListener;
      
      b2internal var §!!6§:b2ContactFactory;
      
      b2internal var §2'§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§1A§ = 0;
         this.§'T§ = b2ContactFilter.§#"$§;
         this.§,h§ = b2ContactListener.§'!-§;
         this.§!!6§ = new b2ContactFactory(this.§2'§);
         this.§%C§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §#!D§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§"R§();
         while(_loc7_)
         {
            if(_loc7_.§%4§ == _loc5_)
            {
               _loc9_ = _loc7_.§9!G§.§']§();
               _loc10_ = _loc7_.§9!G§.§]J§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§@!6§;
         }
         if(_loc6_.§-!V§(_loc5_) == false)
         {
            return;
         }
         if(this.§'T§.§-!V§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§!!6§.§&!L§(_loc3_,_loc4_)).§']§();
         _loc4_ = _loc8_.§]J§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§#!o§ = null;
         _loc8_.§+!>§ = this.m_world.§7! §;
         if(this.m_world.§7! § != null)
         {
            this.m_world.§7! §.§#!o§ = _loc8_;
         }
         this.m_world.§7! § = _loc8_;
         _loc8_.§5!Z§.§9!G§ = _loc8_;
         _loc8_.§5!Z§.§%4§ = _loc6_;
         _loc8_.§5!Z§.§+!1§ = null;
         _loc8_.§5!Z§.§@!6§ = _loc5_.§7! §;
         if(_loc5_.§7! § != null)
         {
            _loc5_.§7! §.§+!1§ = _loc8_.§5!Z§;
         }
         _loc5_.§7! § = _loc8_.§5!Z§;
         _loc8_.§"x§.§9!G§ = _loc8_;
         _loc8_.§"x§.§%4§ = _loc5_;
         _loc8_.§"x§.§+!1§ = null;
         _loc8_.§"x§.§@!6§ = _loc6_.§7! §;
         if(_loc6_.§7! § != null)
         {
            _loc6_.§7! §.§+!1§ = _loc8_.§"x§;
         }
         _loc6_.§7! § = _loc8_.§"x§;
         ++this.m_world.§1A§;
      }
      
      public function §2!d§() : void
      {
         this.§%C§.§'"1§(this.§#!D§);
      }
      
      public function §<!p§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§']§();
         var _loc3_:b2Fixture = param1.§]J§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§54§())
         {
            this.§,h§.EndContact(param1);
         }
         if(param1.§#!o§)
         {
            param1.§#!o§.§+!>§ = param1.§+!>§;
         }
         if(param1.§+!>§)
         {
            param1.§+!>§.§#!o§ = param1.§#!o§;
         }
         if(param1 == this.m_world.§7! §)
         {
            this.m_world.§7! § = param1.§+!>§;
         }
         if(param1.§5!Z§.§+!1§)
         {
            param1.§5!Z§.§+!1§.§@!6§ = param1.§5!Z§.§@!6§;
         }
         if(param1.§5!Z§.§@!6§)
         {
            param1.§5!Z§.§@!6§.§+!1§ = param1.§5!Z§.§+!1§;
         }
         if(param1.§5!Z§ == _loc4_.§7! §)
         {
            _loc4_.§7! § = param1.§5!Z§.§@!6§;
         }
         if(param1.§"x§.§+!1§)
         {
            param1.§"x§.§+!1§.§@!6§ = param1.§"x§.§@!6§;
         }
         if(param1.§"x§.§@!6§)
         {
            param1.§"x§.§@!6§.§+!1§ = param1.§"x§.§+!1§;
         }
         if(param1.§"x§ == _loc5_.§7! §)
         {
            _loc5_.§7! § = param1.§"x§.§@!6§;
         }
         this.§!!6§.§<!p§(param1);
         --this.§1A§;
      }
      
      public function §]!7§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§7! §;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§']§();
            _loc3_ = _loc1_.§]J§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§0!7§();
            }
            else
            {
               if(_loc1_.§4C§ & b2Contact.§8! §)
               {
                  if(_loc5_.§-!V§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§0!7§();
                     this.§<!p§(_loc9_);
                     continue;
                  }
                  if(this.§'T§.§-!V§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§0!7§();
                     this.§<!p§(_loc9_);
                     continue;
                  }
                  _loc1_.§4C§ &= ~b2Contact.§8! §;
               }
               _loc6_ = _loc2_.§9f§;
               _loc7_ = _loc3_.§9f§;
               if((_loc8_ = this.§%C§.§ "B§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§0!7§();
                  this.§<!p§(_loc9_);
               }
               else
               {
                  _loc1_.§["@§(this.§,h§);
                  _loc1_ = _loc1_.§0!7§();
               }
            }
         }
      }
   }
}
