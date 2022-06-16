package §4"O§
{
   import §'"$§.§`$&§;
   import §'"$§.b2ContactPoint;
   import §'"$§.b2DynamicTreeBroadPhase;
   import §,!s§.b2internal;
   import §`!k§.b2Contact;
   import §`!k§.b2ContactEdge;
   import §`!k§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §'![§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §#"2§:§`$&§;
      
      b2internal var §#v§:b2Contact;
      
      b2internal var §<"$§:int;
      
      b2internal var §9#+§:b2ContactFilter;
      
      b2internal var §]x§:b2ContactListener;
      
      b2internal var §<#c§:b2ContactFactory;
      
      b2internal var §%@§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§<"$§ = 0;
         this.§9#+§ = b2ContactFilter.§%v§;
         this.§]x§ = b2ContactListener.§6"I§;
         this.§<#c§ = new b2ContactFactory(this.§%@§);
         this.§#"2§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §!!!§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§class§();
         while(_loc7_)
         {
            if(_loc7_.§!y§ == _loc5_)
            {
               _loc9_ = _loc7_.§%#d§.§60§();
               _loc10_ = _loc7_.§%#d§.§#"Y§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§%I§;
         }
         if(_loc6_.§3#B§(_loc5_) == false)
         {
            return;
         }
         if(this.§9#+§.§3#B§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§<#c§.§4"T§(_loc3_,_loc4_)).§60§();
         _loc4_ = _loc8_.§#"Y§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§,p§ = null;
         _loc8_.§-!l§ = this.m_world.§#v§;
         if(this.m_world.§#v§ != null)
         {
            this.m_world.§#v§.§,p§ = _loc8_;
         }
         this.m_world.§#v§ = _loc8_;
         _loc8_.§5#n§.§%#d§ = _loc8_;
         _loc8_.§5#n§.§!y§ = _loc6_;
         _loc8_.§5#n§.§&"^§ = null;
         _loc8_.§5#n§.§%I§ = _loc5_.§#v§;
         if(_loc5_.§#v§ != null)
         {
            _loc5_.§#v§.§&"^§ = _loc8_.§5#n§;
         }
         _loc5_.§#v§ = _loc8_.§5#n§;
         _loc8_.§`n§.§%#d§ = _loc8_;
         _loc8_.§`n§.§!y§ = _loc5_;
         _loc8_.§`n§.§&"^§ = null;
         _loc8_.§`n§.§%I§ = _loc6_.§#v§;
         if(_loc6_.§#v§ != null)
         {
            _loc6_.§#v§.§&"^§ = _loc8_.§`n§;
         }
         _loc6_.§#v§ = _loc8_.§`n§;
         ++this.m_world.§<"$§;
      }
      
      public function §^B§() : void
      {
         this.§#"2§.§3x§(this.§!!!§);
      }
      
      public function §`"e§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§60§();
         var _loc3_:b2Fixture = param1.§#"Y§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§7!1§())
         {
            this.§]x§.EndContact(param1);
         }
         if(param1.§,p§)
         {
            param1.§,p§.§-!l§ = param1.§-!l§;
         }
         if(param1.§-!l§)
         {
            param1.§-!l§.§,p§ = param1.§,p§;
         }
         if(param1 == this.m_world.§#v§)
         {
            this.m_world.§#v§ = param1.§-!l§;
         }
         if(param1.§5#n§.§&"^§)
         {
            param1.§5#n§.§&"^§.§%I§ = param1.§5#n§.§%I§;
         }
         if(param1.§5#n§.§%I§)
         {
            param1.§5#n§.§%I§.§&"^§ = param1.§5#n§.§&"^§;
         }
         if(param1.§5#n§ == _loc4_.§#v§)
         {
            _loc4_.§#v§ = param1.§5#n§.§%I§;
         }
         if(param1.§`n§.§&"^§)
         {
            param1.§`n§.§&"^§.§%I§ = param1.§`n§.§%I§;
         }
         if(param1.§`n§.§%I§)
         {
            param1.§`n§.§%I§.§&"^§ = param1.§`n§.§&"^§;
         }
         if(param1.§`n§ == _loc5_.§#v§)
         {
            _loc5_.§#v§ = param1.§`n§.§%I§;
         }
         this.§<#c§.§`"e§(param1);
         --this.§<"$§;
      }
      
      public function §4"g§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§#v§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§60§();
            _loc3_ = _loc1_.§#"Y§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§^"y§();
            }
            else
            {
               if(_loc1_.§ $8§ & b2Contact.§6&§ || _loc4_.§@!4§ || _loc5_.§@!4§)
               {
                  if(_loc5_.§3#B§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§^"y§();
                     this.§`"e§(_loc9_);
                     continue;
                  }
                  if(this.§9#+§.§3#B§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§^"y§();
                     this.§`"e§(_loc9_);
                     continue;
                  }
                  _loc1_.§ $8§ &= ~b2Contact.§6&§;
               }
               _loc6_ = _loc2_.§@"w§;
               _loc7_ = _loc3_.§@"w§;
               if((_loc8_ = this.§#"2§.§4"-§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§^"y§();
                  this.§`"e§(_loc9_);
               }
               else
               {
                  _loc1_.§4"`§(this.§]x§);
                  _loc1_ = _loc1_.§^"y§();
               }
            }
         }
      }
   }
}
