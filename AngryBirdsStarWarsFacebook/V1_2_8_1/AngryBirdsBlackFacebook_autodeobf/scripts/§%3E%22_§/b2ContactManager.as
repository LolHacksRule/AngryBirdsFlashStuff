package §>"_§
{
   import §7!I§.b2internal;
   import §>r§.§2";§;
   import §>r§.b2ContactPoint;
   import §>r§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §#"h§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §@u§:§2";§;
      
      b2internal var §>!r§:b2Contact;
      
      b2internal var §false§:int;
      
      b2internal var §#!W§:b2ContactFilter;
      
      b2internal var §8!T§:b2ContactListener;
      
      b2internal var §;+§:b2ContactFactory;
      
      b2internal var §5"R§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§false§ = 0;
         this.§#!W§ = b2ContactFilter.§1!z§;
         this.§8!T§ = b2ContactListener.§ !z§;
         this.§;+§ = new b2ContactFactory(this.§5"R§);
         this.§@u§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §"Z§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§&!4§();
         while(_loc7_)
         {
            if(_loc7_.other == _loc5_)
            {
               _loc9_ = _loc7_.§;!@§.§%"<§();
               _loc10_ = _loc7_.§;!@§.§&"!§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§7u§;
         }
         if(_loc6_.§^E§(_loc5_) == false)
         {
            return;
         }
         if(this.§#!W§.§^E§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§;+§.§ "a§(_loc3_,_loc4_)).§%"<§();
         _loc4_ = _loc8_.§&"!§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§%" § = null;
         _loc8_.§?"Z§ = this.m_world.§>!r§;
         if(this.m_world.§>!r§ != null)
         {
            this.m_world.§>!r§.§%" § = _loc8_;
         }
         this.m_world.§>!r§ = _loc8_;
         _loc8_.§'!J§.§;!@§ = _loc8_;
         _loc8_.§'!J§.other = _loc6_;
         _loc8_.§'!J§.§>!p§ = null;
         _loc8_.§'!J§.§7u§ = _loc5_.§>!r§;
         if(_loc5_.§>!r§ != null)
         {
            _loc5_.§>!r§.§>!p§ = _loc8_.§'!J§;
         }
         _loc5_.§>!r§ = _loc8_.§'!J§;
         _loc8_.§@!'§.§;!@§ = _loc8_;
         _loc8_.§@!'§.other = _loc5_;
         _loc8_.§@!'§.§>!p§ = null;
         _loc8_.§@!'§.§7u§ = _loc6_.§>!r§;
         if(_loc6_.§>!r§ != null)
         {
            _loc6_.§>!r§.§>!p§ = _loc8_.§@!'§;
         }
         _loc6_.§>!r§ = _loc8_.§@!'§;
         ++this.m_world.§false§;
      }
      
      public function §,!"§() : void
      {
         this.§@u§.§ #§(this.§"Z§);
      }
      
      public function § !g§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§%"<§();
         var _loc3_:b2Fixture = param1.§&"!§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§=#4§())
         {
            this.§8!T§.EndContact(param1);
         }
         if(param1.§%" §)
         {
            param1.§%" §.§?"Z§ = param1.§?"Z§;
         }
         if(param1.§?"Z§)
         {
            param1.§?"Z§.§%" § = param1.§%" §;
         }
         if(param1 == this.m_world.§>!r§)
         {
            this.m_world.§>!r§ = param1.§?"Z§;
         }
         if(param1.§'!J§.§>!p§)
         {
            param1.§'!J§.§>!p§.§7u§ = param1.§'!J§.§7u§;
         }
         if(param1.§'!J§.§7u§)
         {
            param1.§'!J§.§7u§.§>!p§ = param1.§'!J§.§>!p§;
         }
         if(param1.§'!J§ == _loc4_.§>!r§)
         {
            _loc4_.§>!r§ = param1.§'!J§.§7u§;
         }
         if(param1.§@!'§.§>!p§)
         {
            param1.§@!'§.§>!p§.§7u§ = param1.§@!'§.§7u§;
         }
         if(param1.§@!'§.§7u§)
         {
            param1.§@!'§.§7u§.§>!p§ = param1.§@!'§.§>!p§;
         }
         if(param1.§@!'§ == _loc5_.§>!r§)
         {
            _loc5_.§>!r§ = param1.§@!'§.§7u§;
         }
         this.§;+§.§ !g§(param1);
         --this.§false§;
      }
      
      public function § "$§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§>!r§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§%"<§();
            _loc3_ = _loc1_.§&"!§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§^a§();
            }
            else
            {
               if(_loc1_.§7!D§ & b2Contact.§[&§)
               {
                  if(_loc5_.§^E§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§^a§();
                     this.§ !g§(_loc9_);
                     continue;
                  }
                  if(this.§#!W§.§^E§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§^a§();
                     this.§ !g§(_loc9_);
                     continue;
                  }
                  _loc1_.§7!D§ &= ~b2Contact.§[&§;
               }
               _loc6_ = _loc2_.§0#"§;
               _loc7_ = _loc3_.§0#"§;
               if((_loc8_ = this.§@u§.§+">§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§^a§();
                  this.§ !g§(_loc9_);
               }
               else
               {
                  _loc1_.§@=§(this.§8!T§);
                  _loc1_ = _loc1_.§^a§();
               }
            }
         }
      }
   }
}
