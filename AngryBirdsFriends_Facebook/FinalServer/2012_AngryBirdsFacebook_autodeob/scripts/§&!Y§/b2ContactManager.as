package §&!Y§
{
   import § !0§.§[!8§;
   import § !0§.b2ContactPoint;
   import § !0§.b2DynamicTreeBroadPhase;
   import §4!2§.b2Contact;
   import §4!2§.b2ContactEdge;
   import §4!2§.b2ContactFactory;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §]P§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §]!;§:§[!8§;
      
      b2internal var §;!o§:b2Contact;
      
      b2internal var §`s§:int;
      
      b2internal var §5!'§:b2ContactFilter;
      
      b2internal var §^"D§:b2ContactListener;
      
      b2internal var §-!'§:b2ContactFactory;
      
      b2internal var §!!_§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§`s§ = 0;
         this.§5!'§ = b2ContactFilter.§!O§;
         this.§^"D§ = b2ContactListener.§`"A§;
         this.§-!'§ = new b2ContactFactory(this.§!!_§);
         this.§]!;§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §0!y§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§!!?§();
         while(_loc7_)
         {
            if(_loc7_.§2Q§ == _loc5_)
            {
               _loc9_ = _loc7_.§7!K§.§-!x§();
               _loc10_ = _loc7_.§7!K§.§6$§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§<B§;
         }
         if(_loc6_.§+!!§(_loc5_) == false)
         {
            return;
         }
         if(this.§5!'§.§+!!§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§-!'§.§]!e§(_loc3_,_loc4_)).§-!x§();
         _loc4_ = _loc8_.§6$§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§>b§ = null;
         _loc8_.§&!n§ = this.m_world.§;!o§;
         if(this.m_world.§;!o§ != null)
         {
            this.m_world.§;!o§.§>b§ = _loc8_;
         }
         this.m_world.§;!o§ = _loc8_;
         _loc8_.§^T§.§7!K§ = _loc8_;
         _loc8_.§^T§.§2Q§ = _loc6_;
         _loc8_.§^T§.§2k§ = null;
         _loc8_.§^T§.§<B§ = _loc5_.§;!o§;
         if(_loc5_.§;!o§ != null)
         {
            _loc5_.§;!o§.§2k§ = _loc8_.§^T§;
         }
         _loc5_.§;!o§ = _loc8_.§^T§;
         _loc8_.§@z§.§7!K§ = _loc8_;
         _loc8_.§@z§.§2Q§ = _loc5_;
         _loc8_.§@z§.§2k§ = null;
         _loc8_.§@z§.§<B§ = _loc6_.§;!o§;
         if(_loc6_.§;!o§ != null)
         {
            _loc6_.§;!o§.§2k§ = _loc8_.§@z§;
         }
         _loc6_.§;!o§ = _loc8_.§@z§;
         ++this.m_world.§`s§;
      }
      
      public function §%!"§() : void
      {
         this.§]!;§.§?!e§(this.§0!y§);
      }
      
      public function §]!f§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§-!x§();
         var _loc3_:b2Fixture = param1.§6$§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§`!Y§())
         {
            this.§^"D§.EndContact(param1);
         }
         if(param1.§>b§)
         {
            param1.§>b§.§&!n§ = param1.§&!n§;
         }
         if(param1.§&!n§)
         {
            param1.§&!n§.§>b§ = param1.§>b§;
         }
         if(param1 == this.m_world.§;!o§)
         {
            this.m_world.§;!o§ = param1.§&!n§;
         }
         if(param1.§^T§.§2k§)
         {
            param1.§^T§.§2k§.§<B§ = param1.§^T§.§<B§;
         }
         if(param1.§^T§.§<B§)
         {
            param1.§^T§.§<B§.§2k§ = param1.§^T§.§2k§;
         }
         if(param1.§^T§ == _loc4_.§;!o§)
         {
            _loc4_.§;!o§ = param1.§^T§.§<B§;
         }
         if(param1.§@z§.§2k§)
         {
            param1.§@z§.§2k§.§<B§ = param1.§@z§.§<B§;
         }
         if(param1.§@z§.§<B§)
         {
            param1.§@z§.§<B§.§2k§ = param1.§@z§.§2k§;
         }
         if(param1.§@z§ == _loc5_.§;!o§)
         {
            _loc5_.§;!o§ = param1.§@z§.§<B§;
         }
         this.§-!'§.§]!f§(param1);
         --this.§`s§;
      }
      
      public function § true§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§;!o§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§-!x§();
            _loc3_ = _loc1_.§6$§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§+U§();
            }
            else
            {
               if(_loc1_.§^Q§ & b2Contact.§]""§)
               {
                  if(_loc5_.§+!!§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§+U§();
                     this.§]!f§(_loc9_);
                     continue;
                  }
                  if(this.§5!'§.§+!!§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§+U§();
                     this.§]!f§(_loc9_);
                     continue;
                  }
                  _loc1_.§^Q§ &= ~b2Contact.§]""§;
               }
               _loc6_ = _loc2_.§1!p§;
               _loc7_ = _loc3_.§1!p§;
               if((_loc8_ = this.§]!;§.§;!r§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§+U§();
                  this.§]!f§(_loc9_);
               }
               else
               {
                  _loc1_.§@C§(this.§^"D§);
                  _loc1_ = _loc1_.§+U§();
               }
            }
         }
      }
   }
}
