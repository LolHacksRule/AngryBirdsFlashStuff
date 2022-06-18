package §1!+§
{
   import §7"^§.§'"J§;
   import §7"^§.b2ContactPoint;
   import §7"^§.b2DynamicTreeBroadPhase;
   import §9#K§.b2internal;
   import §[#L§.b2Contact;
   import §[#L§.b2ContactEdge;
   import §[#L§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §1q§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §,#n§:§'"J§;
      
      b2internal var §2#d§:b2Contact;
      
      b2internal var §6"b§:int;
      
      b2internal var §4"J§:b2ContactFilter;
      
      b2internal var §2!@§:b2ContactListener;
      
      b2internal var §-#]§:b2ContactFactory;
      
      b2internal var §%3§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§6"b§ = 0;
         this.§4"J§ = b2ContactFilter.§1!f§;
         this.§2!@§ = b2ContactListener.§?V§;
         this.§-#]§ = new b2ContactFactory(this.§%3§);
         this.§,#n§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §+!?§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§#"`§();
         while(_loc7_)
         {
            if(_loc7_.§-#J§ == _loc5_)
            {
               _loc9_ = _loc7_.§,#v§.§]"v§();
               _loc10_ = _loc7_.§,#v§.§4!i§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§+!e§;
         }
         if(_loc6_.§`$&§(_loc5_) == false)
         {
            return;
         }
         if(this.§4"J§.§`$&§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§-#]§.§@!7§(_loc3_,_loc4_)).§]"v§();
         _loc4_ = _loc8_.§4!i§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§6T§ = null;
         _loc8_.§3!=§ = this.m_world.§2#d§;
         if(this.m_world.§2#d§ != null)
         {
            this.m_world.§2#d§.§6T§ = _loc8_;
         }
         this.m_world.§2#d§ = _loc8_;
         _loc8_.§ #l§.§,#v§ = _loc8_;
         _loc8_.§ #l§.§-#J§ = _loc6_;
         _loc8_.§ #l§.§+"`§ = null;
         _loc8_.§ #l§.§+!e§ = _loc5_.§2#d§;
         if(_loc5_.§2#d§ != null)
         {
            _loc5_.§2#d§.§+"`§ = _loc8_.§ #l§;
         }
         _loc5_.§2#d§ = _loc8_.§ #l§;
         _loc8_.§;#c§.§,#v§ = _loc8_;
         _loc8_.§;#c§.§-#J§ = _loc5_;
         _loc8_.§;#c§.§+"`§ = null;
         _loc8_.§;#c§.§+!e§ = _loc6_.§2#d§;
         if(_loc6_.§2#d§ != null)
         {
            _loc6_.§2#d§.§+"`§ = _loc8_.§;#c§;
         }
         _loc6_.§2#d§ = _loc8_.§;#c§;
         ++this.m_world.§6"b§;
      }
      
      public function §'#q§() : void
      {
         this.§,#n§.§>I§(this.§+!?§);
      }
      
      public function §@#V§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§]"v§();
         var _loc3_:b2Fixture = param1.§4!i§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§1$2§())
         {
            this.§2!@§.EndContact(param1);
         }
         if(param1.§6T§)
         {
            param1.§6T§.§3!=§ = param1.§3!=§;
         }
         if(param1.§3!=§)
         {
            param1.§3!=§.§6T§ = param1.§6T§;
         }
         if(param1 == this.m_world.§2#d§)
         {
            this.m_world.§2#d§ = param1.§3!=§;
         }
         if(param1.§ #l§.§+"`§)
         {
            param1.§ #l§.§+"`§.§+!e§ = param1.§ #l§.§+!e§;
         }
         if(param1.§ #l§.§+!e§)
         {
            param1.§ #l§.§+!e§.§+"`§ = param1.§ #l§.§+"`§;
         }
         if(param1.§ #l§ == _loc4_.§2#d§)
         {
            _loc4_.§2#d§ = param1.§ #l§.§+!e§;
         }
         if(param1.§;#c§.§+"`§)
         {
            param1.§;#c§.§+"`§.§+!e§ = param1.§;#c§.§+!e§;
         }
         if(param1.§;#c§.§+!e§)
         {
            param1.§;#c§.§+!e§.§+"`§ = param1.§;#c§.§+"`§;
         }
         if(param1.§;#c§ == _loc5_.§2#d§)
         {
            _loc5_.§2#d§ = param1.§;#c§.§+!e§;
         }
         this.§-#]§.§@#V§(param1);
         --this.§6"b§;
      }
      
      public function §]"P§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§2#d§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§]"v§();
            _loc3_ = _loc1_.§4!i§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§,=§();
            }
            else
            {
               if(_loc1_.§9"i§ & b2Contact.§9S§ || _loc4_.§7m§ || _loc5_.§7m§)
               {
                  if(_loc5_.§`$&§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§,=§();
                     this.§@#V§(_loc9_);
                     continue;
                  }
                  if(this.§4"J§.§`$&§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§,=§();
                     this.§@#V§(_loc9_);
                     continue;
                  }
                  _loc1_.§9"i§ &= ~b2Contact.§9S§;
               }
               _loc6_ = _loc2_.§-#T§;
               _loc7_ = _loc3_.§-#T§;
               if((_loc8_ = this.§,#n§.§+$&§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§,=§();
                  this.§@#V§(_loc9_);
               }
               else
               {
                  _loc1_.§#!2§(this.§2!@§);
                  _loc1_ = _loc1_.§,=§();
               }
            }
         }
      }
   }
}
