package §=#n§
{
   import §0H§.b2internal;
   import §3"q§.§2"E§;
   import §3"q§.b2ContactPoint;
   import §3"q§.b2DynamicTreeBroadPhase;
   import §;"R§.b2Contact;
   import §;"R§.b2ContactEdge;
   import §;"R§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §4#m§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §2!6§:§2"E§;
      
      b2internal var §<"?§:b2Contact;
      
      b2internal var §;"q§:int;
      
      b2internal var §,"D§:b2ContactFilter;
      
      b2internal var §8!N§:b2ContactListener;
      
      b2internal var §3"h§:b2ContactFactory;
      
      b2internal var §1#;§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§;"q§ = 0;
         this.§,"D§ = b2ContactFilter.§,"I§;
         this.§8!N§ = b2ContactListener.§7"Z§;
         this.§3"h§ = new b2ContactFactory(this.§1#;§);
         this.§2!6§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §]#E§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§;Y§();
         while(_loc7_)
         {
            if(_loc7_.§5W§ == _loc5_)
            {
               _loc9_ = _loc7_.§<#L§.§%$-§();
               _loc10_ = _loc7_.§<#L§.§true§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§0$0§;
         }
         if(_loc6_.§3#K§(_loc5_) == false)
         {
            return;
         }
         if(this.§,"D§.§3#K§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§3"h§.§'#h§(_loc3_,_loc4_)).§%$-§();
         _loc4_ = _loc8_.§true§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§+"j§ = null;
         _loc8_.§@##§ = this.m_world.§<"?§;
         if(this.m_world.§<"?§ != null)
         {
            this.m_world.§<"?§.§+"j§ = _loc8_;
         }
         this.m_world.§<"?§ = _loc8_;
         _loc8_.§"!3§.§<#L§ = _loc8_;
         _loc8_.§"!3§.§5W§ = _loc6_;
         _loc8_.§"!3§.§7#a§ = null;
         _loc8_.§"!3§.§0$0§ = _loc5_.§<"?§;
         if(_loc5_.§<"?§ != null)
         {
            _loc5_.§<"?§.§7#a§ = _loc8_.§"!3§;
         }
         _loc5_.§<"?§ = _loc8_.§"!3§;
         _loc8_.§0"q§.§<#L§ = _loc8_;
         _loc8_.§0"q§.§5W§ = _loc5_;
         _loc8_.§0"q§.§7#a§ = null;
         _loc8_.§0"q§.§0$0§ = _loc6_.§<"?§;
         if(_loc6_.§<"?§ != null)
         {
            _loc6_.§<"?§.§7#a§ = _loc8_.§0"q§;
         }
         _loc6_.§<"?§ = _loc8_.§0"q§;
         ++this.m_world.§;"q§;
      }
      
      public function §=§() : void
      {
         this.§2!6§.§7E§(this.§]#E§);
      }
      
      public function §@!]§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§%$-§();
         var _loc3_:b2Fixture = param1.§true§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§!"m§())
         {
            this.§8!N§.EndContact(param1);
         }
         if(param1.§+"j§)
         {
            param1.§+"j§.§@##§ = param1.§@##§;
         }
         if(param1.§@##§)
         {
            param1.§@##§.§+"j§ = param1.§+"j§;
         }
         if(param1 == this.m_world.§<"?§)
         {
            this.m_world.§<"?§ = param1.§@##§;
         }
         if(param1.§"!3§.§7#a§)
         {
            param1.§"!3§.§7#a§.§0$0§ = param1.§"!3§.§0$0§;
         }
         if(param1.§"!3§.§0$0§)
         {
            param1.§"!3§.§0$0§.§7#a§ = param1.§"!3§.§7#a§;
         }
         if(param1.§"!3§ == _loc4_.§<"?§)
         {
            _loc4_.§<"?§ = param1.§"!3§.§0$0§;
         }
         if(param1.§0"q§.§7#a§)
         {
            param1.§0"q§.§7#a§.§0$0§ = param1.§0"q§.§0$0§;
         }
         if(param1.§0"q§.§0$0§)
         {
            param1.§0"q§.§0$0§.§7#a§ = param1.§0"q§.§7#a§;
         }
         if(param1.§0"q§ == _loc5_.§<"?§)
         {
            _loc5_.§<"?§ = param1.§0"q§.§0$0§;
         }
         this.§3"h§.§@!]§(param1);
         --this.§;"q§;
      }
      
      public function §5#,§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§<"?§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§%$-§();
            _loc3_ = _loc1_.§true§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§ !V§();
            }
            else
            {
               if(_loc1_.§#!<§ & b2Contact.§@"&§ || _loc4_.§#"^§ || _loc5_.§#"^§)
               {
                  if(_loc5_.§3#K§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§ !V§();
                     this.§@!]§(_loc9_);
                     continue;
                  }
                  if(this.§,"D§.§3#K§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§ !V§();
                     this.§@!]§(_loc9_);
                     continue;
                  }
                  _loc1_.§#!<§ &= ~b2Contact.§@"&§;
               }
               _loc6_ = _loc2_.§&!@§;
               _loc7_ = _loc3_.§&!@§;
               if(Boolean(this.§2!6§.§4"t§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§ !V§();
                  this.§@!]§(_loc9_);
               }
               else
               {
                  _loc1_.§+d§(this.§8!N§);
                  _loc1_ = _loc1_.§ !V§();
               }
            }
         }
      }
   }
}
