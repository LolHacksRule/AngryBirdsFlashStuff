package §48§
{
   import §!D§.b2Contact;
   import §!D§.b2ContactEdge;
   import §!D§.b2ContactFactory;
   import §4!!§.b2internal;
   import §55§.§0!K§;
   import §55§.b2ContactPoint;
   import §55§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §7$§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §"!q§:§0!K§;
      
      b2internal var §>"#§:b2Contact;
      
      b2internal var §3M§:int;
      
      b2internal var §1!9§:b2ContactFilter;
      
      b2internal var §&!Y§:b2ContactListener;
      
      b2internal var §=!N§:b2ContactFactory;
      
      b2internal var §"!7§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§3M§ = 0;
         this.§1!9§ = b2ContactFilter.§"!$§;
         this.§&!Y§ = b2ContactListener.§3!§;
         this.§=!N§ = new b2ContactFactory(this.§"!7§);
         this.§"!q§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §'=§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§0!@§();
         while(_loc7_)
         {
            if(_loc7_.§ `§ == _loc5_)
            {
               _loc9_ = _loc7_.§0q§.§5§();
               _loc10_ = _loc7_.§0q§.§]h§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§5"&§;
         }
         if(_loc6_.§8N§(_loc5_) == false)
         {
            return;
         }
         if(this.§1!9§.§8N§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§=!N§.§?!Q§(_loc3_,_loc4_)).§5§();
         _loc4_ = _loc8_.§]h§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§-!Q§ = null;
         _loc8_.§%"@§ = this.m_world.§>"#§;
         if(this.m_world.§>"#§ != null)
         {
            this.m_world.§>"#§.§-!Q§ = _loc8_;
         }
         this.m_world.§>"#§ = _loc8_;
         _loc8_.§-v§.§0q§ = _loc8_;
         _loc8_.§-v§.§ `§ = _loc6_;
         _loc8_.§-v§.§[g§ = null;
         _loc8_.§-v§.§5"&§ = _loc5_.§>"#§;
         if(_loc5_.§>"#§ != null)
         {
            _loc5_.§>"#§.§[g§ = _loc8_.§-v§;
         }
         _loc5_.§>"#§ = _loc8_.§-v§;
         _loc8_.§1a§.§0q§ = _loc8_;
         _loc8_.§1a§.§ `§ = _loc5_;
         _loc8_.§1a§.§[g§ = null;
         _loc8_.§1a§.§5"&§ = _loc6_.§>"#§;
         if(_loc6_.§>"#§ != null)
         {
            _loc6_.§>"#§.§[g§ = _loc8_.§1a§;
         }
         _loc6_.§>"#§ = _loc8_.§1a§;
         ++this.m_world.§3M§;
      }
      
      public function §>!=§() : void
      {
         this.§"!q§.§+_§(this.§'=§);
      }
      
      public function §'S§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§5§();
         var _loc3_:b2Fixture = param1.§]h§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§[l§())
         {
            this.§&!Y§.EndContact(param1);
         }
         if(param1.§-!Q§)
         {
            param1.§-!Q§.§%"@§ = param1.§%"@§;
         }
         if(param1.§%"@§)
         {
            param1.§%"@§.§-!Q§ = param1.§-!Q§;
         }
         if(param1 == this.m_world.§>"#§)
         {
            this.m_world.§>"#§ = param1.§%"@§;
         }
         if(param1.§-v§.§[g§)
         {
            param1.§-v§.§[g§.§5"&§ = param1.§-v§.§5"&§;
         }
         if(param1.§-v§.§5"&§)
         {
            param1.§-v§.§5"&§.§[g§ = param1.§-v§.§[g§;
         }
         if(param1.§-v§ == _loc4_.§>"#§)
         {
            _loc4_.§>"#§ = param1.§-v§.§5"&§;
         }
         if(param1.§1a§.§[g§)
         {
            param1.§1a§.§[g§.§5"&§ = param1.§1a§.§5"&§;
         }
         if(param1.§1a§.§5"&§)
         {
            param1.§1a§.§5"&§.§[g§ = param1.§1a§.§[g§;
         }
         if(param1.§1a§ == _loc5_.§>"#§)
         {
            _loc5_.§>"#§ = param1.§1a§.§5"&§;
         }
         this.§=!N§.§'S§(param1);
         --this.§3M§;
      }
      
      public function § ! §() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§>"#§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§5§();
            _loc3_ = _loc1_.§]h§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§8!+§();
            }
            else
            {
               if(_loc1_.§`">§ & b2Contact.§;! §)
               {
                  if(_loc5_.§8N§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§8!+§();
                     this.§'S§(_loc9_);
                     continue;
                  }
                  if(this.§1!9§.§8N§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§8!+§();
                     this.§'S§(_loc9_);
                     continue;
                  }
                  _loc1_.§`">§ &= ~b2Contact.§;! §;
               }
               _loc6_ = _loc2_.§=!;§;
               _loc7_ = _loc3_.§=!;§;
               if((_loc8_ = this.§"!q§.§3§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§8!+§();
                  this.§'S§(_loc9_);
               }
               else
               {
                  _loc1_.§?"!§(this.§&!Y§);
                  _loc1_ = _loc1_.§8!+§();
               }
            }
         }
      }
   }
}
