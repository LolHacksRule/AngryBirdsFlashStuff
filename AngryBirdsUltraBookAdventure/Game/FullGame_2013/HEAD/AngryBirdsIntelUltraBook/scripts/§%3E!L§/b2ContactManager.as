package §>!L§
{
   import §!m§.§"%§;
   import §!m§.b2ContactPoint;
   import §!m§.b2DynamicTreeBroadPhase;
   import §#!0§.b2Contact;
   import §#!0§.b2ContactEdge;
   import §#!0§.b2ContactFactory;
   import §+!g§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §<!6§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §%%§:§"%§;
      
      b2internal var §7!V§:b2Contact;
      
      b2internal var § !Q§:int;
      
      b2internal var §!!'§:b2ContactFilter;
      
      b2internal var §'!j§:b2ContactListener;
      
      b2internal var § !2§:b2ContactFactory;
      
      b2internal var §6I§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§ !Q§ = 0;
         this.§!!'§ = b2ContactFilter.§4"§;
         this.§'!j§ = b2ContactListener.§1K§;
         this.§ !2§ = new b2ContactFactory(this.§6I§);
         this.§%%§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §3!V§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§2!c§();
         while(_loc7_)
         {
            if(_loc7_.§@X§ == _loc5_)
            {
               _loc9_ = _loc7_.§7![§.§'$§();
               _loc10_ = _loc7_.§7![§.§<!2§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§<!D§;
         }
         if(_loc6_.§,!5§(_loc5_) == false)
         {
            return;
         }
         if(this.§!!'§.§,!5§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact = this.§ !2§.§@!L§(_loc3_,_loc4_);
         _loc3_ = _loc8_.§'$§();
         _loc4_ = _loc8_.§<!2§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§<!9§ = null;
         _loc8_.§,!Z§ = this.m_world.§7!V§;
         if(this.m_world.§7!V§ != null)
         {
            this.m_world.§7!V§.§<!9§ = _loc8_;
         }
         this.m_world.§7!V§ = _loc8_;
         _loc8_.§6+§.§7![§ = _loc8_;
         _loc8_.§6+§.§@X§ = _loc6_;
         _loc8_.§6+§.§3!j§ = null;
         _loc8_.§6+§.§<!D§ = _loc5_.§7!V§;
         if(_loc5_.§7!V§ != null)
         {
            _loc5_.§7!V§.§3!j§ = _loc8_.§6+§;
         }
         _loc5_.§7!V§ = _loc8_.§6+§;
         _loc8_.§%W§.§7![§ = _loc8_;
         _loc8_.§%W§.§@X§ = _loc5_;
         _loc8_.§%W§.§3!j§ = null;
         _loc8_.§%W§.§<!D§ = _loc6_.§7!V§;
         if(_loc6_.§7!V§ != null)
         {
            _loc6_.§7!V§.§3!j§ = _loc8_.§%W§;
         }
         _loc6_.§7!V§ = _loc8_.§%W§;
         ++this.m_world.§ !Q§;
      }
      
      public function §default§() : void
      {
         this.§%%§.§"!P§(this.§3!V§);
      }
      
      public function §"G§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§'$§();
         var _loc3_:b2Fixture = param1.§<!2§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§%&§())
         {
            this.§'!j§.EndContact(param1);
         }
         if(param1.§<!9§)
         {
            param1.§<!9§.§,!Z§ = param1.§,!Z§;
         }
         if(param1.§,!Z§)
         {
            param1.§,!Z§.§<!9§ = param1.§<!9§;
         }
         if(param1 == this.m_world.§7!V§)
         {
            this.m_world.§7!V§ = param1.§,!Z§;
         }
         if(param1.§6+§.§3!j§)
         {
            param1.§6+§.§3!j§.§<!D§ = param1.§6+§.§<!D§;
         }
         if(param1.§6+§.§<!D§)
         {
            param1.§6+§.§<!D§.§3!j§ = param1.§6+§.§3!j§;
         }
         if(param1.§6+§ == _loc4_.§7!V§)
         {
            _loc4_.§7!V§ = param1.§6+§.§<!D§;
         }
         if(param1.§%W§.§3!j§)
         {
            param1.§%W§.§3!j§.§<!D§ = param1.§%W§.§<!D§;
         }
         if(param1.§%W§.§<!D§)
         {
            param1.§%W§.§<!D§.§3!j§ = param1.§%W§.§3!j§;
         }
         if(param1.§%W§ == _loc5_.§7!V§)
         {
            _loc5_.§7!V§ = param1.§%W§.§<!D§;
         }
         this.§ !2§.§"G§(param1);
         --this.§ !Q§;
      }
      
      public function §;T§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§7!V§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§'$§();
            _loc3_ = _loc1_.§<!2§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§'!;§();
            }
            else
            {
               if(_loc1_.§]!D§ & b2Contact.§'!I§)
               {
                  if(_loc5_.§,!5§(_loc4_) == false)
                  {
                     _loc9_ = _loc1_;
                     _loc1_ = _loc9_.§'!;§();
                     this.§"G§(_loc9_);
                     continue;
                  }
                  if(this.§!!'§.§,!5§(_loc2_,_loc3_) == false)
                  {
                     _loc9_ = _loc1_;
                     _loc1_ = _loc9_.§'!;§();
                     this.§"G§(_loc9_);
                     continue;
                  }
                  _loc1_.§]!D§ &= ~b2Contact.§'!I§;
               }
               _loc6_ = _loc2_.§;1§;
               _loc7_ = _loc3_.§;1§;
               _loc8_ = this.§%%§.§ V§(_loc6_,_loc7_);
               if(_loc8_ == false)
               {
                  _loc9_ = _loc1_;
                  _loc1_ = _loc9_.§'!;§();
                  this.§"G§(_loc9_);
               }
               else
               {
                  _loc1_.§%!-§(this.§'!j§);
                  _loc1_ = _loc1_.§'!;§();
               }
            }
         }
      }
   }
}
