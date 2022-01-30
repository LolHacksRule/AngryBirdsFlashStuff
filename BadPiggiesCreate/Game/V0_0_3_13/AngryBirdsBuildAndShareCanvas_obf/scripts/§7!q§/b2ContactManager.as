package §7!q§
{
   import §,k§.b2Contact;
   import §,k§.b2ContactEdge;
   import §,k§.b2ContactFactory;
   import §-g§.§<!D§;
   import §-g§.b2ContactPoint;
   import §-g§.b2DynamicTreeBroadPhase;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §9!j§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §-!R§:§<!D§;
      
      b2internal var §,!1§:b2Contact;
      
      b2internal var §>B§:int;
      
      b2internal var §,!J§:b2ContactFilter;
      
      b2internal var §@!E§:b2ContactListener;
      
      b2internal var §%!K§:b2ContactFactory;
      
      b2internal var §#&§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§>B§ = 0;
         this.§,!J§ = b2ContactFilter.§-"2§;
         this.§@!E§ = b2ContactListener.§6;§;
         this.§%!K§ = new b2ContactFactory(this.§#&§);
         this.§-!R§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §-o§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§2H§();
         while(_loc7_)
         {
            if(_loc7_.§#!l§ == _loc5_)
            {
               _loc9_ = _loc7_.§9"6§.§[u§();
               _loc10_ = _loc7_.§9"6§.§<j§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§!",§;
         }
         if(_loc6_.§]!R§(_loc5_) == false)
         {
            return;
         }
         if(this.§,!J§.§]!R§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§%!K§.§="1§(_loc3_,_loc4_)).§[u§();
         _loc4_ = _loc8_.§<j§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§5!M§ = null;
         _loc8_.§,"!§ = this.m_world.§,!1§;
         if(this.m_world.§,!1§ != null)
         {
            this.m_world.§,!1§.§5!M§ = _loc8_;
         }
         this.m_world.§,!1§ = _loc8_;
         _loc8_.§]R§.§9"6§ = _loc8_;
         _loc8_.§]R§.§#!l§ = _loc6_;
         _loc8_.§]R§.§@!'§ = null;
         _loc8_.§]R§.§!",§ = _loc5_.§,!1§;
         if(_loc5_.§,!1§ != null)
         {
            _loc5_.§,!1§.§@!'§ = _loc8_.§]R§;
         }
         _loc5_.§,!1§ = _loc8_.§]R§;
         _loc8_.§>Y§.§9"6§ = _loc8_;
         _loc8_.§>Y§.§#!l§ = _loc5_;
         _loc8_.§>Y§.§@!'§ = null;
         _loc8_.§>Y§.§!",§ = _loc6_.§,!1§;
         if(_loc6_.§,!1§ != null)
         {
            _loc6_.§,!1§.§@!'§ = _loc8_.§>Y§;
         }
         _loc6_.§,!1§ = _loc8_.§>Y§;
         ++this.m_world.§>B§;
      }
      
      public function §-!T§() : void
      {
         this.§-!R§.§2I§(this.§-o§);
      }
      
      public function §,"0§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§[u§();
         var _loc3_:b2Fixture = param1.§<j§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§36§())
         {
            this.§@!E§.EndContact(param1);
         }
         if(param1.§5!M§)
         {
            param1.§5!M§.§,"!§ = param1.§,"!§;
         }
         if(param1.§,"!§)
         {
            param1.§,"!§.§5!M§ = param1.§5!M§;
         }
         if(param1 == this.m_world.§,!1§)
         {
            this.m_world.§,!1§ = param1.§,"!§;
         }
         if(param1.§]R§.§@!'§)
         {
            param1.§]R§.§@!'§.§!",§ = param1.§]R§.§!",§;
         }
         if(param1.§]R§.§!",§)
         {
            param1.§]R§.§!",§.§@!'§ = param1.§]R§.§@!'§;
         }
         if(param1.§]R§ == _loc4_.§,!1§)
         {
            _loc4_.§,!1§ = param1.§]R§.§!",§;
         }
         if(param1.§>Y§.§@!'§)
         {
            param1.§>Y§.§@!'§.§!",§ = param1.§>Y§.§!",§;
         }
         if(param1.§>Y§.§!",§)
         {
            param1.§>Y§.§!",§.§@!'§ = param1.§>Y§.§@!'§;
         }
         if(param1.§>Y§ == _loc5_.§,!1§)
         {
            _loc5_.§,!1§ = param1.§>Y§.§!",§;
         }
         this.§%!K§.§,"0§(param1);
         --this.§>B§;
      }
      
      public function §!5§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§,!1§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§[u§();
            _loc3_ = _loc1_.§<j§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§5!`§();
            }
            else
            {
               if(_loc1_.§["0§ & b2Contact.§,w§)
               {
                  if(_loc5_.§]!R§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§5!`§();
                     this.§,"0§(_loc9_);
                     continue;
                  }
                  if(this.§,!J§.§]!R§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§5!`§();
                     this.§,"0§(_loc9_);
                     continue;
                  }
                  _loc1_.§["0§ &= ~b2Contact.§,w§;
               }
               _loc6_ = _loc2_.§&;§;
               _loc7_ = _loc3_.§&;§;
               if((_loc8_ = this.§-!R§.§,d§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§5!`§();
                  this.§,"0§(_loc9_);
               }
               else
               {
                  _loc1_.§=!I§(this.§@!E§);
                  _loc1_ = _loc1_.§5!`§();
               }
            }
         }
      }
   }
}
