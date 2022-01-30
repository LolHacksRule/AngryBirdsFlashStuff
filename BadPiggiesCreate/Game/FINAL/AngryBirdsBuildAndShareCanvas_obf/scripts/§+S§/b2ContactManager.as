package §+S§
{
   import §5!o§.§#!M§;
   import §5!o§.b2ContactPoint;
   import §5!o§.b2DynamicTreeBroadPhase;
   import §;T§.b2Contact;
   import §;T§.b2ContactEdge;
   import §;T§.b2ContactFactory;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §^"&§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §9n§:§#!M§;
      
      b2internal var §]8§:b2Contact;
      
      b2internal var §3!Z§:int;
      
      b2internal var §"!V§:b2ContactFilter;
      
      b2internal var §@<§:b2ContactListener;
      
      b2internal var §1!s§:b2ContactFactory;
      
      b2internal var §=!6§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§3!Z§ = 0;
         this.§"!V§ = b2ContactFilter.§5"=§;
         this.§@<§ = b2ContactListener.§^!1§;
         this.§1!s§ = new b2ContactFactory(this.§=!6§);
         this.§9n§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §>E§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§4!T§();
         while(_loc7_)
         {
            if(_loc7_.§!!m§ == _loc5_)
            {
               _loc9_ = _loc7_.§3w§.§=!'§();
               _loc10_ = _loc7_.§3w§.§&O§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§9!V§;
         }
         if(_loc6_.§ each§(_loc5_) == false)
         {
            return;
         }
         if(this.§"!V§.§ each§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§1!s§.§-!x§(_loc3_,_loc4_)).§=!'§();
         _loc4_ = _loc8_.§&O§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§7b§ = null;
         _loc8_.§>""§ = this.m_world.§]8§;
         if(this.m_world.§]8§ != null)
         {
            this.m_world.§]8§.§7b§ = _loc8_;
         }
         this.m_world.§]8§ = _loc8_;
         _loc8_.§8I§.§3w§ = _loc8_;
         _loc8_.§8I§.§!!m§ = _loc6_;
         _loc8_.§8I§.§["'§ = null;
         _loc8_.§8I§.§9!V§ = _loc5_.§]8§;
         if(_loc5_.§]8§ != null)
         {
            _loc5_.§]8§.§["'§ = _loc8_.§8I§;
         }
         _loc5_.§]8§ = _loc8_.§8I§;
         _loc8_.§55§.§3w§ = _loc8_;
         _loc8_.§55§.§!!m§ = _loc5_;
         _loc8_.§55§.§["'§ = null;
         _loc8_.§55§.§9!V§ = _loc6_.§]8§;
         if(_loc6_.§]8§ != null)
         {
            _loc6_.§]8§.§["'§ = _loc8_.§55§;
         }
         _loc6_.§]8§ = _loc8_.§55§;
         ++this.m_world.§3!Z§;
      }
      
      public function §+"-§() : void
      {
         this.§9n§.§^!`§(this.§>E§);
      }
      
      public function §;&§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§=!'§();
         var _loc3_:b2Fixture = param1.§&O§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§%!1§())
         {
            this.§@<§.EndContact(param1);
         }
         if(param1.§7b§)
         {
            param1.§7b§.§>""§ = param1.§>""§;
         }
         if(param1.§>""§)
         {
            param1.§>""§.§7b§ = param1.§7b§;
         }
         if(param1 == this.m_world.§]8§)
         {
            this.m_world.§]8§ = param1.§>""§;
         }
         if(param1.§8I§.§["'§)
         {
            param1.§8I§.§["'§.§9!V§ = param1.§8I§.§9!V§;
         }
         if(param1.§8I§.§9!V§)
         {
            param1.§8I§.§9!V§.§["'§ = param1.§8I§.§["'§;
         }
         if(param1.§8I§ == _loc4_.§]8§)
         {
            _loc4_.§]8§ = param1.§8I§.§9!V§;
         }
         if(param1.§55§.§["'§)
         {
            param1.§55§.§["'§.§9!V§ = param1.§55§.§9!V§;
         }
         if(param1.§55§.§9!V§)
         {
            param1.§55§.§9!V§.§["'§ = param1.§55§.§["'§;
         }
         if(param1.§55§ == _loc5_.§]8§)
         {
            _loc5_.§]8§ = param1.§55§.§9!V§;
         }
         this.§1!s§.§;&§(param1);
         --this.§3!Z§;
      }
      
      public function §1!]§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§]8§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§=!'§();
            _loc3_ = _loc1_.§&O§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§'!q§();
            }
            else
            {
               if(_loc1_.§`"8§ & b2Contact.§#!>§)
               {
                  if(_loc5_.§ each§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§'!q§();
                     this.§;&§(_loc9_);
                     continue;
                  }
                  if(this.§"!V§.§ each§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§'!q§();
                     this.§;&§(_loc9_);
                     continue;
                  }
                  _loc1_.§`"8§ &= ~b2Contact.§#!>§;
               }
               _loc6_ = _loc2_.§-!]§;
               _loc7_ = _loc3_.§-!]§;
               if((_loc8_ = this.§9n§.§;c§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§'!q§();
                  this.§;&§(_loc9_);
               }
               else
               {
                  _loc1_.§?L§(this.§@<§);
                  _loc1_ = _loc1_.§'!q§();
               }
            }
         }
      }
   }
}
