package §!!B§
{
   import §3!&§.b2Contact;
   import §3!&§.b2ContactEdge;
   import §3!&§.b2ContactFactory;
   import §7S§.§"!P§;
   import §7S§.b2ContactPoint;
   import §7S§.b2DynamicTreeBroadPhase;
   import §;0§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §]!V§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §1k§:§"!P§;
      
      b2internal var §%u§:b2Contact;
      
      b2internal var §=!B§:int;
      
      b2internal var §<-§:b2ContactFilter;
      
      b2internal var §;=§:b2ContactListener;
      
      b2internal var §]k§:b2ContactFactory;
      
      b2internal var §;!Q§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§=!B§ = 0;
         this.§<-§ = b2ContactFilter.§@z§;
         this.§;=§ = b2ContactListener.§%!9§;
         this.§]k§ = new b2ContactFactory(this.§;!Q§);
         this.§1k§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §]!1§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§""§();
         while(_loc7_)
         {
            if(_loc7_.§%-§ == _loc5_)
            {
               _loc9_ = _loc7_.§ C§.§-!V§();
               _loc10_ = _loc7_.§ C§.§0&§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§@!I§;
         }
         if(_loc6_.§67§(_loc5_) == false)
         {
            return;
         }
         if(this.§<-§.§67§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§]k§.§=S§(_loc3_,_loc4_)).§-!V§();
         _loc4_ = _loc8_.§0&§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§6+§ = null;
         _loc8_.§6!#§ = this.m_world.§%u§;
         if(this.m_world.§%u§ != null)
         {
            this.m_world.§%u§.§6+§ = _loc8_;
         }
         this.m_world.§%u§ = _loc8_;
         _loc8_.§4'§.§ C§ = _loc8_;
         _loc8_.§4'§.§%-§ = _loc6_;
         _loc8_.§4'§.§+!E§ = null;
         _loc8_.§4'§.§@!I§ = _loc5_.§%u§;
         if(_loc5_.§%u§ != null)
         {
            _loc5_.§%u§.§+!E§ = _loc8_.§4'§;
         }
         _loc5_.§%u§ = _loc8_.§4'§;
         _loc8_.§<!0§.§ C§ = _loc8_;
         _loc8_.§<!0§.§%-§ = _loc5_;
         _loc8_.§<!0§.§+!E§ = null;
         _loc8_.§<!0§.§@!I§ = _loc6_.§%u§;
         if(_loc6_.§%u§ != null)
         {
            _loc6_.§%u§.§+!E§ = _loc8_.§<!0§;
         }
         _loc6_.§%u§ = _loc8_.§<!0§;
         ++this.m_world.§=!B§;
      }
      
      public function §@!!§() : void
      {
         this.§1k§.§&A§(this.§]!1§);
      }
      
      public function §true§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§-!V§();
         var _loc3_:b2Fixture = param1.§0&§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§"!A§())
         {
            this.§;=§.EndContact(param1);
         }
         if(param1.§6+§)
         {
            param1.§6+§.§6!#§ = param1.§6!#§;
         }
         if(param1.§6!#§)
         {
            param1.§6!#§.§6+§ = param1.§6+§;
         }
         if(param1 == this.m_world.§%u§)
         {
            this.m_world.§%u§ = param1.§6!#§;
         }
         if(param1.§4'§.§+!E§)
         {
            param1.§4'§.§+!E§.§@!I§ = param1.§4'§.§@!I§;
         }
         if(param1.§4'§.§@!I§)
         {
            param1.§4'§.§@!I§.§+!E§ = param1.§4'§.§+!E§;
         }
         if(param1.§4'§ == _loc4_.§%u§)
         {
            _loc4_.§%u§ = param1.§4'§.§@!I§;
         }
         if(param1.§<!0§.§+!E§)
         {
            param1.§<!0§.§+!E§.§@!I§ = param1.§<!0§.§@!I§;
         }
         if(param1.§<!0§.§@!I§)
         {
            param1.§<!0§.§@!I§.§+!E§ = param1.§<!0§.§+!E§;
         }
         if(param1.§<!0§ == _loc5_.§%u§)
         {
            _loc5_.§%u§ = param1.§<!0§.§@!I§;
         }
         this.§]k§.§true§(param1);
         --this.§=!B§;
      }
      
      public function §7!§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§%u§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§-!V§();
            _loc3_ = _loc1_.§0&§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§3q§();
            }
            else
            {
               if(_loc1_.§5!9§ & b2Contact.§`!+§)
               {
                  if(_loc5_.§67§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§3q§();
                     this.§true§(_loc9_);
                     continue;
                  }
                  if(this.§<-§.§67§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§3q§();
                     this.§true§(_loc9_);
                     continue;
                  }
                  _loc1_.§5!9§ &= ~b2Contact.§`!+§;
               }
               _loc6_ = _loc2_.§3T§;
               _loc7_ = _loc3_.§3T§;
               if((_loc8_ = this.§1k§.§=o§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§3q§();
                  this.§true§(_loc9_);
               }
               else
               {
                  _loc1_.§2!X§(this.§;=§);
                  _loc1_ = _loc1_.§3q§();
               }
            }
         }
      }
   }
}
