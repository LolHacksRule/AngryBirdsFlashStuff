package §?0§
{
   import §'!#§.b2Contact;
   import §'!#§.b2ContactEdge;
   import §'!#§.b2ContactFactory;
   import §'!3§.b2internal;
   import §9!$§.§&!8§;
   import §9!$§.b2ContactPoint;
   import §9!$§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const § !5§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §1!;§:§&!8§;
      
      b2internal var §7!;§:b2Contact;
      
      b2internal var §8!L§:int;
      
      b2internal var §+8§:b2ContactFilter;
      
      b2internal var §]A§:b2ContactListener;
      
      b2internal var §^!7§:b2ContactFactory;
      
      b2internal var §-!`§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§8!L§ = 0;
         this.§+8§ = b2ContactFilter.§4e§;
         this.§]A§ = b2ContactListener.§;!I§;
         this.§^!7§ = new b2ContactFactory(this.§-!`§);
         this.§1!;§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §-!,§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§0U§();
         while(_loc7_)
         {
            if(_loc7_.§#C§ == _loc5_)
            {
               _loc9_ = _loc7_.§2j§.§40§();
               _loc10_ = _loc7_.§2j§.§2!F§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§20§;
         }
         if(_loc6_.§2!]§(_loc5_) == false)
         {
            return;
         }
         if(this.§+8§.§2!]§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§^!7§.§ V§(_loc3_,_loc4_)).§40§();
         _loc4_ = _loc8_.§2!F§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§"5§ = null;
         _loc8_.§>!W§ = this.m_world.§7!;§;
         if(this.m_world.§7!;§ != null)
         {
            this.m_world.§7!;§.§"5§ = _loc8_;
         }
         this.m_world.§7!;§ = _loc8_;
         _loc8_.§9+§.§2j§ = _loc8_;
         _loc8_.§9+§.§#C§ = _loc6_;
         _loc8_.§9+§.§7!A§ = null;
         _loc8_.§9+§.§20§ = _loc5_.§7!;§;
         if(_loc5_.§7!;§ != null)
         {
            _loc5_.§7!;§.§7!A§ = _loc8_.§9+§;
         }
         _loc5_.§7!;§ = _loc8_.§9+§;
         _loc8_.§@z§.§2j§ = _loc8_;
         _loc8_.§@z§.§#C§ = _loc5_;
         _loc8_.§@z§.§7!A§ = null;
         _loc8_.§@z§.§20§ = _loc6_.§7!;§;
         if(_loc6_.§7!;§ != null)
         {
            _loc6_.§7!;§.§7!A§ = _loc8_.§@z§;
         }
         _loc6_.§7!;§ = _loc8_.§@z§;
         ++this.m_world.§8!L§;
      }
      
      public function §&>§() : void
      {
         this.§1!;§.§%T§(this.§-!,§);
      }
      
      public function §"z§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§40§();
         var _loc3_:b2Fixture = param1.§2!F§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§&!K§())
         {
            this.§]A§.EndContact(param1);
         }
         if(param1.§"5§)
         {
            param1.§"5§.§>!W§ = param1.§>!W§;
         }
         if(param1.§>!W§)
         {
            param1.§>!W§.§"5§ = param1.§"5§;
         }
         if(param1 == this.m_world.§7!;§)
         {
            this.m_world.§7!;§ = param1.§>!W§;
         }
         if(param1.§9+§.§7!A§)
         {
            param1.§9+§.§7!A§.§20§ = param1.§9+§.§20§;
         }
         if(param1.§9+§.§20§)
         {
            param1.§9+§.§20§.§7!A§ = param1.§9+§.§7!A§;
         }
         if(param1.§9+§ == _loc4_.§7!;§)
         {
            _loc4_.§7!;§ = param1.§9+§.§20§;
         }
         if(param1.§@z§.§7!A§)
         {
            param1.§@z§.§7!A§.§20§ = param1.§@z§.§20§;
         }
         if(param1.§@z§.§20§)
         {
            param1.§@z§.§20§.§7!A§ = param1.§@z§.§7!A§;
         }
         if(param1.§@z§ == _loc5_.§7!;§)
         {
            _loc5_.§7!;§ = param1.§@z§.§20§;
         }
         this.§^!7§.§"z§(param1);
         --this.§8!L§;
      }
      
      public function §4!7§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§7!;§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§40§();
            _loc3_ = _loc1_.§2!F§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§%W§();
            }
            else
            {
               if(_loc1_.§0n§ & b2Contact.§2!4§)
               {
                  if(_loc5_.§2!]§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%W§();
                     this.§"z§(_loc9_);
                     continue;
                  }
                  if(this.§+8§.§2!]§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%W§();
                     this.§"z§(_loc9_);
                     continue;
                  }
                  _loc1_.§0n§ &= ~b2Contact.§2!4§;
               }
               _loc6_ = _loc2_.§[k§;
               _loc7_ = _loc3_.§[k§;
               if((_loc8_ = this.§1!;§.§1?§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§%W§();
                  this.§"z§(_loc9_);
               }
               else
               {
                  _loc1_.§]!E§(this.§]A§);
                  _loc1_ = _loc1_.§%W§();
               }
            }
         }
      }
   }
}
