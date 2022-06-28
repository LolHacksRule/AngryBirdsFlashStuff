package §#I§
{
   import §4]§.b2Contact;
   import §4]§.b2ContactEdge;
   import §4]§.b2ContactFactory;
   import §>!Z§.§<P§;
   import §>!Z§.b2ContactPoint;
   import §>!Z§.b2DynamicTreeBroadPhase;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const § =§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §,>§:§<P§;
      
      b2internal var §0!?§:b2Contact;
      
      b2internal var §,l§:int;
      
      b2internal var §?Z§:b2ContactFilter;
      
      b2internal var §;!#§:b2ContactListener;
      
      b2internal var §,!1§:b2ContactFactory;
      
      b2internal var §'!H§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§,l§ = 0;
         this.§?Z§ = b2ContactFilter.§^!J§;
         this.§;!#§ = b2ContactListener.§8d§;
         this.§,!1§ = new b2ContactFactory(this.§'!H§);
         this.§,>§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §0]§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§>!3§();
         while(_loc7_)
         {
            if(_loc7_.§<!M§ == _loc5_)
            {
               _loc9_ = _loc7_.§8!m§.§`!a§();
               _loc10_ = _loc7_.§8!m§.§2!s§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§`!w§;
         }
         if(_loc6_.§'!F§(_loc5_) == false)
         {
            return;
         }
         if(this.§?Z§.§'!F§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§,!1§.§1!Y§(_loc3_,_loc4_)).§`!a§();
         _loc4_ = _loc8_.§2!s§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§+!3§ = null;
         _loc8_.§=!8§ = this.m_world.§0!?§;
         if(this.m_world.§0!?§ != null)
         {
            this.m_world.§0!?§.§+!3§ = _loc8_;
         }
         this.m_world.§0!?§ = _loc8_;
         _loc8_.§=f§.§8!m§ = _loc8_;
         _loc8_.§=f§.§<!M§ = _loc6_;
         _loc8_.§=f§.§!!m§ = null;
         _loc8_.§=f§.§`!w§ = _loc5_.§0!?§;
         if(_loc5_.§0!?§ != null)
         {
            _loc5_.§0!?§.§!!m§ = _loc8_.§=f§;
         }
         _loc5_.§0!?§ = _loc8_.§=f§;
         _loc8_.§!!a§.§8!m§ = _loc8_;
         _loc8_.§!!a§.§<!M§ = _loc5_;
         _loc8_.§!!a§.§!!m§ = null;
         _loc8_.§!!a§.§`!w§ = _loc6_.§0!?§;
         if(_loc6_.§0!?§ != null)
         {
            _loc6_.§0!?§.§!!m§ = _loc8_.§!!a§;
         }
         _loc6_.§0!?§ = _loc8_.§!!a§;
         ++this.m_world.§,l§;
      }
      
      public function §-!V§() : void
      {
         this.§,>§.§9N§(this.§0]§);
      }
      
      public function §=_§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§`!a§();
         var _loc3_:b2Fixture = param1.§2!s§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§>5§())
         {
            this.§;!#§.EndContact(param1);
         }
         if(param1.§+!3§)
         {
            param1.§+!3§.§=!8§ = param1.§=!8§;
         }
         if(param1.§=!8§)
         {
            param1.§=!8§.§+!3§ = param1.§+!3§;
         }
         if(param1 == this.m_world.§0!?§)
         {
            this.m_world.§0!?§ = param1.§=!8§;
         }
         if(param1.§=f§.§!!m§)
         {
            param1.§=f§.§!!m§.§`!w§ = param1.§=f§.§`!w§;
         }
         if(param1.§=f§.§`!w§)
         {
            param1.§=f§.§`!w§.§!!m§ = param1.§=f§.§!!m§;
         }
         if(param1.§=f§ == _loc4_.§0!?§)
         {
            _loc4_.§0!?§ = param1.§=f§.§`!w§;
         }
         if(param1.§!!a§.§!!m§)
         {
            param1.§!!a§.§!!m§.§`!w§ = param1.§!!a§.§`!w§;
         }
         if(param1.§!!a§.§`!w§)
         {
            param1.§!!a§.§`!w§.§!!m§ = param1.§!!a§.§!!m§;
         }
         if(param1.§!!a§ == _loc5_.§0!?§)
         {
            _loc5_.§0!?§ = param1.§!!a§.§`!w§;
         }
         this.§,!1§.§=_§(param1);
         --this.§,l§;
      }
      
      public function §7@§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§0!?§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§`!a§();
            _loc3_ = _loc1_.§2!s§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§?!^§();
            }
            else
            {
               if(_loc1_.§[B§ & b2Contact.§]!Y§)
               {
                  if(_loc5_.§'!F§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§?!^§();
                     this.§=_§(_loc9_);
                     continue;
                  }
                  if(this.§?Z§.§'!F§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§?!^§();
                     this.§=_§(_loc9_);
                     continue;
                  }
                  _loc1_.§[B§ &= ~b2Contact.§]!Y§;
               }
               _loc6_ = _loc2_.§8""§;
               _loc7_ = _loc3_.§8""§;
               if((_loc8_ = this.§,>§.§]I§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§?!^§();
                  this.§=_§(_loc9_);
               }
               else
               {
                  _loc1_.§3!r§(this.§;!#§);
                  _loc1_ = _loc1_.§?!^§();
               }
            }
         }
      }
   }
}
