package §7z§
{
   import § 6§.§7!&§;
   import § 6§.b2ContactPoint;
   import § 6§.b2DynamicTreeBroadPhase;
   import §9![§.b2Contact;
   import §9![§.b2ContactEdge;
   import §9![§.b2ContactFactory;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §>2§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §9!]§:§7!&§;
      
      b2internal var §7!,§:b2Contact;
      
      b2internal var §!!<§:int;
      
      b2internal var §4!3§:b2ContactFilter;
      
      b2internal var §01§:b2ContactListener;
      
      b2internal var § !u§:b2ContactFactory;
      
      b2internal var §0!5§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§!!<§ = 0;
         this.§4!3§ = b2ContactFilter.§>@§;
         this.§01§ = b2ContactListener.§[!A§;
         this.§ !u§ = new b2ContactFactory(this.§0!5§);
         this.§9!]§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §5!K§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§+!S§();
         while(_loc7_)
         {
            if(_loc7_.§1!D§ == _loc5_)
            {
               _loc9_ = _loc7_.§["9§.§^!U§();
               _loc10_ = _loc7_.§["9§.§`[§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§1C§;
         }
         if(_loc6_.§@!a§(_loc5_) == false)
         {
            return;
         }
         if(this.§4!3§.§@!a§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§ !u§.§7T§(_loc3_,_loc4_)).§^!U§();
         _loc4_ = _loc8_.§`[§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§;!F§ = null;
         _loc8_.§7t§ = this.m_world.§7!,§;
         if(this.m_world.§7!,§ != null)
         {
            this.m_world.§7!,§.§;!F§ = _loc8_;
         }
         this.m_world.§7!,§ = _loc8_;
         _loc8_.§'z§.§["9§ = _loc8_;
         _loc8_.§'z§.§1!D§ = _loc6_;
         _loc8_.§'z§.§>!t§ = null;
         _loc8_.§'z§.§1C§ = _loc5_.§7!,§;
         if(_loc5_.§7!,§ != null)
         {
            _loc5_.§7!,§.§>!t§ = _loc8_.§'z§;
         }
         _loc5_.§7!,§ = _loc8_.§'z§;
         _loc8_.§ !h§.§["9§ = _loc8_;
         _loc8_.§ !h§.§1!D§ = _loc5_;
         _loc8_.§ !h§.§>!t§ = null;
         _loc8_.§ !h§.§1C§ = _loc6_.§7!,§;
         if(_loc6_.§7!,§ != null)
         {
            _loc6_.§7!,§.§>!t§ = _loc8_.§ !h§;
         }
         _loc6_.§7!,§ = _loc8_.§ !h§;
         ++this.m_world.§!!<§;
      }
      
      public function §;!2§() : void
      {
         this.§9!]§.§?!J§(this.§5!K§);
      }
      
      public function §#"&§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§^!U§();
         var _loc3_:b2Fixture = param1.§`[§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§false§())
         {
            this.§01§.EndContact(param1);
         }
         if(param1.§;!F§)
         {
            param1.§;!F§.§7t§ = param1.§7t§;
         }
         if(param1.§7t§)
         {
            param1.§7t§.§;!F§ = param1.§;!F§;
         }
         if(param1 == this.m_world.§7!,§)
         {
            this.m_world.§7!,§ = param1.§7t§;
         }
         if(param1.§'z§.§>!t§)
         {
            param1.§'z§.§>!t§.§1C§ = param1.§'z§.§1C§;
         }
         if(param1.§'z§.§1C§)
         {
            param1.§'z§.§1C§.§>!t§ = param1.§'z§.§>!t§;
         }
         if(param1.§'z§ == _loc4_.§7!,§)
         {
            _loc4_.§7!,§ = param1.§'z§.§1C§;
         }
         if(param1.§ !h§.§>!t§)
         {
            param1.§ !h§.§>!t§.§1C§ = param1.§ !h§.§1C§;
         }
         if(param1.§ !h§.§1C§)
         {
            param1.§ !h§.§1C§.§>!t§ = param1.§ !h§.§>!t§;
         }
         if(param1.§ !h§ == _loc5_.§7!,§)
         {
            _loc5_.§7!,§ = param1.§ !h§.§1C§;
         }
         this.§ !u§.§#"&§(param1);
         --this.§!!<§;
      }
      
      public function §&"1§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§7!,§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§^!U§();
            _loc3_ = _loc1_.§`[§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§9!P§();
            }
            else
            {
               if(_loc1_.§]!4§ & b2Contact.§<!K§)
               {
                  if(_loc5_.§@!a§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§9!P§();
                     this.§#"&§(_loc9_);
                     continue;
                  }
                  if(this.§4!3§.§@!a§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§9!P§();
                     this.§#"&§(_loc9_);
                     continue;
                  }
                  _loc1_.§]!4§ &= ~b2Contact.§<!K§;
               }
               _loc6_ = _loc2_.§8!W§;
               _loc7_ = _loc3_.§8!W§;
               if((_loc8_ = this.§9!]§.§&!P§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§9!P§();
                  this.§#"&§(_loc9_);
               }
               else
               {
                  _loc1_.§-!?§(this.§01§);
                  _loc1_ = _loc1_.§9!P§();
               }
            }
         }
      }
   }
}
