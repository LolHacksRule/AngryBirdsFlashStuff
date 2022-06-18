package §'#K§
{
   import §&$+§.b2internal;
   import §,#E§.§ #Z§;
   import §,#E§.b2ContactPoint;
   import §,#E§.b2DynamicTreeBroadPhase;
   import §-#F§.b2Contact;
   import §-#F§.b2ContactEdge;
   import §-#F§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §@!#§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §6";§:§ #Z§;
      
      b2internal var §!!k§:b2Contact;
      
      b2internal var §%"@§:int;
      
      b2internal var §^+§:b2ContactFilter;
      
      b2internal var §@!7§:b2ContactListener;
      
      b2internal var §;f§:b2ContactFactory;
      
      b2internal var §>!-§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§%"@§ = 0;
         this.§^+§ = b2ContactFilter.§9!7§;
         this.§@!7§ = b2ContactListener.§?#]§;
         this.§;f§ = new b2ContactFactory(this.§>!-§);
         this.§6";§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §7#V§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§^"o§();
         while(_loc7_)
         {
            if(_loc7_.§%#]§ == _loc5_)
            {
               _loc9_ = _loc7_.§>#I§.§5!s§();
               _loc10_ = _loc7_.§>#I§.§5!W§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.next;
         }
         if(_loc6_.§]#+§(_loc5_) == false)
         {
            return;
         }
         if(this.§^+§.§]#+§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§;f§.§9#s§(_loc3_,_loc4_)).§5!s§();
         _loc4_ = _loc8_.§5!W§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§-$7§ = null;
         _loc8_.§>d§ = this.m_world.§!!k§;
         if(this.m_world.§!!k§ != null)
         {
            this.m_world.§!!k§.§-$7§ = _loc8_;
         }
         this.m_world.§!!k§ = _loc8_;
         _loc8_.§;#Y§.§>#I§ = _loc8_;
         _loc8_.§;#Y§.§%#]§ = _loc6_;
         _loc8_.§;#Y§.§5""§ = null;
         _loc8_.§;#Y§.next = _loc5_.§!!k§;
         if(_loc5_.§!!k§ != null)
         {
            _loc5_.§!!k§.§5""§ = _loc8_.§;#Y§;
         }
         _loc5_.§!!k§ = _loc8_.§;#Y§;
         _loc8_.§0!+§.§>#I§ = _loc8_;
         _loc8_.§0!+§.§%#]§ = _loc5_;
         _loc8_.§0!+§.§5""§ = null;
         _loc8_.§0!+§.next = _loc6_.§!!k§;
         if(_loc6_.§!!k§ != null)
         {
            _loc6_.§!!k§.§5""§ = _loc8_.§0!+§;
         }
         _loc6_.§!!k§ = _loc8_.§0!+§;
         ++this.m_world.§%"@§;
      }
      
      public function §=I§() : void
      {
         this.§6";§.§!"o§(this.§7#V§);
      }
      
      public function §,#?§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§5!s§();
         var _loc3_:b2Fixture = param1.§5!W§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§;"!§())
         {
            this.§@!7§.EndContact(param1);
         }
         if(param1.§-$7§)
         {
            param1.§-$7§.§>d§ = param1.§>d§;
         }
         if(param1.§>d§)
         {
            param1.§>d§.§-$7§ = param1.§-$7§;
         }
         if(param1 == this.m_world.§!!k§)
         {
            this.m_world.§!!k§ = param1.§>d§;
         }
         if(param1.§;#Y§.§5""§)
         {
            param1.§;#Y§.§5""§.next = param1.§;#Y§.next;
         }
         if(param1.§;#Y§.next)
         {
            param1.§;#Y§.next.§5""§ = param1.§;#Y§.§5""§;
         }
         if(param1.§;#Y§ == _loc4_.§!!k§)
         {
            _loc4_.§!!k§ = param1.§;#Y§.next;
         }
         if(param1.§0!+§.§5""§)
         {
            param1.§0!+§.§5""§.next = param1.§0!+§.next;
         }
         if(param1.§0!+§.next)
         {
            param1.§0!+§.next.§5""§ = param1.§0!+§.§5""§;
         }
         if(param1.§0!+§ == _loc5_.§!!k§)
         {
            _loc5_.§!!k§ = param1.§0!+§.next;
         }
         this.§;f§.§,#?§(param1);
         --this.§%"@§;
      }
      
      public function §[!'§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§!!k§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§5!s§();
            _loc3_ = _loc1_.§5!W§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§4!7§();
            }
            else
            {
               if(_loc1_.§'#h§ & b2Contact.§`#x§ || _loc4_.§8T§ || _loc5_.§8T§)
               {
                  if(_loc5_.§]#+§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§4!7§();
                     this.§,#?§(_loc9_);
                     continue;
                  }
                  if(this.§^+§.§]#+§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§4!7§();
                     this.§,#?§(_loc9_);
                     continue;
                  }
                  _loc1_.§'#h§ &= ~b2Contact.§`#x§;
               }
               _loc6_ = _loc2_.§]"Q§;
               _loc7_ = _loc3_.§]"Q§;
               if((_loc8_ = this.§6";§.§2#%§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§4!7§();
                  this.§,#?§(_loc9_);
               }
               else
               {
                  _loc1_.§8c§(this.§@!7§);
                  _loc1_ = _loc1_.§4!7§();
               }
            }
         }
      }
   }
}
