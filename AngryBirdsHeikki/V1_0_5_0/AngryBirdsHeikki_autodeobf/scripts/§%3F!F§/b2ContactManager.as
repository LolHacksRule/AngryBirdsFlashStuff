package §?!F§
{
   import §%]§.§4!6§;
   import §%]§.b2ContactPoint;
   import §%]§.b2DynamicTreeBroadPhase;
   import §3'§.b2internal;
   import §@^§.b2Contact;
   import §@^§.b2ContactEdge;
   import §@^§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §,!G§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §%Z§:§4!6§;
      
      b2internal var §+!Z§:b2Contact;
      
      b2internal var §^!a§:int;
      
      b2internal var §5D§:b2ContactFilter;
      
      b2internal var §+!"§:b2ContactListener;
      
      b2internal var §74§:b2ContactFactory;
      
      b2internal var §5V§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§^!a§ = 0;
         this.§5D§ = b2ContactFilter.§9!5§;
         this.§+!"§ = b2ContactListener.§1=§;
         this.§74§ = new b2ContactFactory(this.§5V§);
         this.§%Z§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §,A§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§!q§();
         while(_loc7_)
         {
            if(_loc7_.§%!R§ == _loc5_)
            {
               _loc9_ = _loc7_.§;![§.§@!$§();
               _loc10_ = _loc7_.§;![§.§1!+§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§"R§;
         }
         if(_loc6_.§6!-§(_loc5_) == false)
         {
            return;
         }
         if(this.§5D§.§6!-§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§74§.§<!E§(_loc3_,_loc4_)).§@!$§();
         _loc4_ = _loc8_.§1!+§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§8§ = null;
         _loc8_.§+[§ = this.m_world.§+!Z§;
         if(this.m_world.§+!Z§ != null)
         {
            this.m_world.§+!Z§.§8§ = _loc8_;
         }
         this.m_world.§+!Z§ = _loc8_;
         _loc8_.§-!0§.§;![§ = _loc8_;
         _loc8_.§-!0§.§%!R§ = _loc6_;
         _loc8_.§-!0§.§>[§ = null;
         _loc8_.§-!0§.§"R§ = _loc5_.§+!Z§;
         if(_loc5_.§+!Z§ != null)
         {
            _loc5_.§+!Z§.§>[§ = _loc8_.§-!0§;
         }
         _loc5_.§+!Z§ = _loc8_.§-!0§;
         _loc8_.§,Q§.§;![§ = _loc8_;
         _loc8_.§,Q§.§%!R§ = _loc5_;
         _loc8_.§,Q§.§>[§ = null;
         _loc8_.§,Q§.§"R§ = _loc6_.§+!Z§;
         if(_loc6_.§+!Z§ != null)
         {
            _loc6_.§+!Z§.§>[§ = _loc8_.§,Q§;
         }
         _loc6_.§+!Z§ = _loc8_.§,Q§;
         ++this.m_world.§^!a§;
      }
      
      public function §4!8§() : void
      {
         this.§%Z§.§!3§(this.§,A§);
      }
      
      public function §[!,§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§@!$§();
         var _loc3_:b2Fixture = param1.§1!+§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§-Y§())
         {
            this.§+!"§.EndContact(param1);
         }
         if(param1.§8§)
         {
            param1.§8§.§+[§ = param1.§+[§;
         }
         if(param1.§+[§)
         {
            param1.§+[§.§8§ = param1.§8§;
         }
         if(param1 == this.m_world.§+!Z§)
         {
            this.m_world.§+!Z§ = param1.§+[§;
         }
         if(param1.§-!0§.§>[§)
         {
            param1.§-!0§.§>[§.§"R§ = param1.§-!0§.§"R§;
         }
         if(param1.§-!0§.§"R§)
         {
            param1.§-!0§.§"R§.§>[§ = param1.§-!0§.§>[§;
         }
         if(param1.§-!0§ == _loc4_.§+!Z§)
         {
            _loc4_.§+!Z§ = param1.§-!0§.§"R§;
         }
         if(param1.§,Q§.§>[§)
         {
            param1.§,Q§.§>[§.§"R§ = param1.§,Q§.§"R§;
         }
         if(param1.§,Q§.§"R§)
         {
            param1.§,Q§.§"R§.§>[§ = param1.§,Q§.§>[§;
         }
         if(param1.§,Q§ == _loc5_.§+!Z§)
         {
            _loc5_.§+!Z§ = param1.§,Q§.§"R§;
         }
         this.§74§.§[!,§(param1);
         --this.§^!a§;
      }
      
      public function §1!P§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§+!Z§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§@!$§();
            _loc3_ = _loc1_.§1!+§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§'Q§();
            }
            else
            {
               if(_loc1_.§+o§ & b2Contact.§0s§)
               {
                  if(_loc5_.§6!-§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§'Q§();
                     this.§[!,§(_loc9_);
                     continue;
                  }
                  if(this.§5D§.§6!-§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§'Q§();
                     this.§[!,§(_loc9_);
                     continue;
                  }
                  _loc1_.§+o§ &= ~b2Contact.§0s§;
               }
               _loc6_ = _loc2_.§1Z§;
               _loc7_ = _loc3_.§1Z§;
               if((_loc8_ = this.§%Z§.§#8§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§'Q§();
                  this.§[!,§(_loc9_);
               }
               else
               {
                  _loc1_.§`!b§(this.§+!"§);
                  _loc1_ = _loc1_.§'Q§();
               }
            }
         }
      }
   }
}
