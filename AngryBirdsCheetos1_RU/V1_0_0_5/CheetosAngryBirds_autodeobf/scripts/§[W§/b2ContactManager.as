package §[W§
{
   import § !5§.b2internal;
   import §3!O§.b2Contact;
   import §3!O§.b2ContactEdge;
   import §3!O§.b2ContactFactory;
   import §?§.§"!2§;
   import §?§.b2ContactPoint;
   import §?§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §!^§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §"G§:§"!2§;
      
      b2internal var §"!^§:b2Contact;
      
      b2internal var §6e§:int;
      
      b2internal var §6d§:b2ContactFilter;
      
      b2internal var §6]§:b2ContactListener;
      
      b2internal var §8!S§:b2ContactFactory;
      
      b2internal var §8!B§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§6e§ = 0;
         this.§6d§ = b2ContactFilter.§[I§;
         this.§6]§ = b2ContactListener.§1!Z§;
         this.§8!S§ = new b2ContactFactory(this.§8!B§);
         this.§"G§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §9!§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§4!U§();
         while(_loc7_)
         {
            if(_loc7_.§]!7§ == _loc5_)
            {
               _loc9_ = _loc7_.§1!=§.§6!?§();
               _loc10_ = _loc7_.§1!=§.§4v§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§"!+§;
         }
         if(_loc6_.§7!;§(_loc5_) == false)
         {
            return;
         }
         if(this.§6d§.§7!;§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§8!S§.§2Q§(_loc3_,_loc4_)).§6!?§();
         _loc4_ = _loc8_.§4v§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§<]§ = null;
         _loc8_.§60§ = this.m_world.§"!^§;
         if(this.m_world.§"!^§ != null)
         {
            this.m_world.§"!^§.§<]§ = _loc8_;
         }
         this.m_world.§"!^§ = _loc8_;
         _loc8_.§ ;§.§1!=§ = _loc8_;
         _loc8_.§ ;§.§]!7§ = _loc6_;
         _loc8_.§ ;§.§#h§ = null;
         _loc8_.§ ;§.§"!+§ = _loc5_.§"!^§;
         if(_loc5_.§"!^§ != null)
         {
            _loc5_.§"!^§.§#h§ = _loc8_.§ ;§;
         }
         _loc5_.§"!^§ = _loc8_.§ ;§;
         _loc8_.§-^§.§1!=§ = _loc8_;
         _loc8_.§-^§.§]!7§ = _loc5_;
         _loc8_.§-^§.§#h§ = null;
         _loc8_.§-^§.§"!+§ = _loc6_.§"!^§;
         if(_loc6_.§"!^§ != null)
         {
            _loc6_.§"!^§.§#h§ = _loc8_.§-^§;
         }
         _loc6_.§"!^§ = _loc8_.§-^§;
         ++this.m_world.§6e§;
      }
      
      public function §^>§() : void
      {
         this.§"G§.§4`§(this.§9!§);
      }
      
      public function §;t§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§6!?§();
         var _loc3_:b2Fixture = param1.§4v§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§>w§())
         {
            this.§6]§.EndContact(param1);
         }
         if(param1.§<]§)
         {
            param1.§<]§.§60§ = param1.§60§;
         }
         if(param1.§60§)
         {
            param1.§60§.§<]§ = param1.§<]§;
         }
         if(param1 == this.m_world.§"!^§)
         {
            this.m_world.§"!^§ = param1.§60§;
         }
         if(param1.§ ;§.§#h§)
         {
            param1.§ ;§.§#h§.§"!+§ = param1.§ ;§.§"!+§;
         }
         if(param1.§ ;§.§"!+§)
         {
            param1.§ ;§.§"!+§.§#h§ = param1.§ ;§.§#h§;
         }
         if(param1.§ ;§ == _loc4_.§"!^§)
         {
            _loc4_.§"!^§ = param1.§ ;§.§"!+§;
         }
         if(param1.§-^§.§#h§)
         {
            param1.§-^§.§#h§.§"!+§ = param1.§-^§.§"!+§;
         }
         if(param1.§-^§.§"!+§)
         {
            param1.§-^§.§"!+§.§#h§ = param1.§-^§.§#h§;
         }
         if(param1.§-^§ == _loc5_.§"!^§)
         {
            _loc5_.§"!^§ = param1.§-^§.§"!+§;
         }
         this.§8!S§.§;t§(param1);
         --this.§6e§;
      }
      
      public function §&p§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§"!^§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§6!?§();
            _loc3_ = _loc1_.§4v§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§25§();
            }
            else
            {
               if(_loc1_.§;>§ & b2Contact.§]K§)
               {
                  if(_loc5_.§7!;§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§25§();
                     this.§;t§(_loc9_);
                     continue;
                  }
                  if(this.§6d§.§7!;§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§25§();
                     this.§;t§(_loc9_);
                     continue;
                  }
                  _loc1_.§;>§ &= ~b2Contact.§]K§;
               }
               _loc6_ = _loc2_.§>8§;
               _loc7_ = _loc3_.§>8§;
               if((_loc8_ = this.§"G§.§@!Z§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§25§();
                  this.§;t§(_loc9_);
               }
               else
               {
                  _loc1_.§6!O§(this.§6]§);
                  _loc1_ = _loc1_.§25§();
               }
            }
         }
      }
   }
}
