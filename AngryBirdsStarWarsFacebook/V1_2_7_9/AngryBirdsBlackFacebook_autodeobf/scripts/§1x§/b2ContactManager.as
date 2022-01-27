package §1x§
{
   import §%!#§.§,"Q§;
   import §%!#§.b2ContactPoint;
   import §%!#§.b2DynamicTreeBroadPhase;
   import §+!,§.b2Contact;
   import §+!,§.b2ContactEdge;
   import §+!,§.b2ContactFactory;
   import §9!s§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §[,§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §-!m§:§,"Q§;
      
      b2internal var §]"X§:b2Contact;
      
      b2internal var § # §:int;
      
      b2internal var §4!"§:b2ContactFilter;
      
      b2internal var §7"p§:b2ContactListener;
      
      b2internal var §0!@§:b2ContactFactory;
      
      b2internal var §3!L§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§ # § = 0;
         this.§4!"§ = b2ContactFilter.§!P§;
         this.§7"p§ = b2ContactListener.§+!I§;
         this.§0!@§ = new b2ContactFactory(this.§3!L§);
         this.§-!m§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §8!-§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§3!D§();
         while(_loc7_)
         {
            if(_loc7_.other == _loc5_)
            {
               _loc9_ = _loc7_.§&#%§.§%$§();
               _loc10_ = _loc7_.§&#%§.§&#0§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§#!0§;
         }
         if(_loc6_.§8"u§(_loc5_) == false)
         {
            return;
         }
         if(this.§4!"§.§8"u§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§0!@§.§0"]§(_loc3_,_loc4_)).§%$§();
         _loc4_ = _loc8_.§&#0§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§<@§ = null;
         _loc8_.§ z§ = this.m_world.§]"X§;
         if(this.m_world.§]"X§ != null)
         {
            this.m_world.§]"X§.§<@§ = _loc8_;
         }
         this.m_world.§]"X§ = _loc8_;
         _loc8_.§5"I§.§&#%§ = _loc8_;
         _loc8_.§5"I§.other = _loc6_;
         _loc8_.§5"I§.§^!d§ = null;
         _loc8_.§5"I§.§#!0§ = _loc5_.§]"X§;
         if(_loc5_.§]"X§ != null)
         {
            _loc5_.§]"X§.§^!d§ = _loc8_.§5"I§;
         }
         _loc5_.§]"X§ = _loc8_.§5"I§;
         _loc8_.§>Y§.§&#%§ = _loc8_;
         _loc8_.§>Y§.other = _loc5_;
         _loc8_.§>Y§.§^!d§ = null;
         _loc8_.§>Y§.§#!0§ = _loc6_.§]"X§;
         if(_loc6_.§]"X§ != null)
         {
            _loc6_.§]"X§.§^!d§ = _loc8_.§>Y§;
         }
         _loc6_.§]"X§ = _loc8_.§>Y§;
         ++this.m_world.§ # §;
      }
      
      public function §9@§() : void
      {
         this.§-!m§.§]!J§(this.§8!-§);
      }
      
      public function §%c§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§%$§();
         var _loc3_:b2Fixture = param1.§&#0§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§"!4§())
         {
            this.§7"p§.EndContact(param1);
         }
         if(param1.§<@§)
         {
            param1.§<@§.§ z§ = param1.§ z§;
         }
         if(param1.§ z§)
         {
            param1.§ z§.§<@§ = param1.§<@§;
         }
         if(param1 == this.m_world.§]"X§)
         {
            this.m_world.§]"X§ = param1.§ z§;
         }
         if(param1.§5"I§.§^!d§)
         {
            param1.§5"I§.§^!d§.§#!0§ = param1.§5"I§.§#!0§;
         }
         if(param1.§5"I§.§#!0§)
         {
            param1.§5"I§.§#!0§.§^!d§ = param1.§5"I§.§^!d§;
         }
         if(param1.§5"I§ == _loc4_.§]"X§)
         {
            _loc4_.§]"X§ = param1.§5"I§.§#!0§;
         }
         if(param1.§>Y§.§^!d§)
         {
            param1.§>Y§.§^!d§.§#!0§ = param1.§>Y§.§#!0§;
         }
         if(param1.§>Y§.§#!0§)
         {
            param1.§>Y§.§#!0§.§^!d§ = param1.§>Y§.§^!d§;
         }
         if(param1.§>Y§ == _loc5_.§]"X§)
         {
            _loc5_.§]"X§ = param1.§>Y§.§#!0§;
         }
         this.§0!@§.§%c§(param1);
         --this.§ # §;
      }
      
      public function §1!4§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§]"X§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§%$§();
            _loc3_ = _loc1_.§&#0§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§=!&§();
            }
            else
            {
               if(_loc1_.§7K§ & b2Contact.§7R§)
               {
                  if(_loc5_.§8"u§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§=!&§();
                     this.§%c§(_loc9_);
                     continue;
                  }
                  if(this.§4!"§.§8"u§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§=!&§();
                     this.§%c§(_loc9_);
                     continue;
                  }
                  _loc1_.§7K§ &= ~b2Contact.§7R§;
               }
               _loc6_ = _loc2_.§3"7§;
               _loc7_ = _loc3_.§3"7§;
               if((_loc8_ = this.§-!m§.§^y§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§=!&§();
                  this.§%c§(_loc9_);
               }
               else
               {
                  _loc1_.§,7§(this.§7"p§);
                  _loc1_ = _loc1_.§=!&§();
               }
            }
         }
      }
   }
}
