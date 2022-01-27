package §9!K§
{
   import §'!a§.b2internal;
   import §;!Z§.§#"D§;
   import §;!Z§.b2ContactPoint;
   import §;!Z§.b2DynamicTreeBroadPhase;
   import §>6§.b2Contact;
   import §>6§.b2ContactEdge;
   import §>6§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §6!Z§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §8!1§:§#"D§;
      
      b2internal var §7!X§:b2Contact;
      
      b2internal var §9K§:int;
      
      b2internal var §<!F§:b2ContactFilter;
      
      b2internal var §,"E§:b2ContactListener;
      
      b2internal var §@!p§:b2ContactFactory;
      
      b2internal var §8"0§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§9K§ = 0;
         this.§<!F§ = b2ContactFilter.§9">§;
         this.§,"E§ = b2ContactListener.§[!Z§;
         this.§@!p§ = new b2ContactFactory(this.§8"0§);
         this.§8!1§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §8!s§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§6!o§();
         while(_loc7_)
         {
            if(_loc7_.§]9§ == _loc5_)
            {
               _loc9_ = _loc7_.§ 5§.§[!_§();
               _loc10_ = _loc7_.§ 5§.§6!6§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§7$§;
         }
         if(_loc6_.§?g§(_loc5_) == false)
         {
            return;
         }
         if(this.§<!F§.§?g§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§@!p§.§7;§(_loc3_,_loc4_)).§[!_§();
         _loc4_ = _loc8_.§6!6§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§9!§ = null;
         _loc8_.§&!6§ = this.m_world.§7!X§;
         if(this.m_world.§7!X§ != null)
         {
            this.m_world.§7!X§.§9!§ = _loc8_;
         }
         this.m_world.§7!X§ = _loc8_;
         _loc8_.§@!o§.§ 5§ = _loc8_;
         _loc8_.§@!o§.§]9§ = _loc6_;
         _loc8_.§@!o§.§5!S§ = null;
         _loc8_.§@!o§.§7$§ = _loc5_.§7!X§;
         if(_loc5_.§7!X§ != null)
         {
            _loc5_.§7!X§.§5!S§ = _loc8_.§@!o§;
         }
         _loc5_.§7!X§ = _loc8_.§@!o§;
         _loc8_.§+!f§.§ 5§ = _loc8_;
         _loc8_.§+!f§.§]9§ = _loc5_;
         _loc8_.§+!f§.§5!S§ = null;
         _loc8_.§+!f§.§7$§ = _loc6_.§7!X§;
         if(_loc6_.§7!X§ != null)
         {
            _loc6_.§7!X§.§5!S§ = _loc8_.§+!f§;
         }
         _loc6_.§7!X§ = _loc8_.§+!f§;
         ++this.m_world.§9K§;
      }
      
      public function §9!^§() : void
      {
         this.§8!1§.§ !d§(this.§8!s§);
      }
      
      public function §7"'§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§[!_§();
         var _loc3_:b2Fixture = param1.§6!6§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§60§())
         {
            this.§,"E§.EndContact(param1);
         }
         if(param1.§9!§)
         {
            param1.§9!§.§&!6§ = param1.§&!6§;
         }
         if(param1.§&!6§)
         {
            param1.§&!6§.§9!§ = param1.§9!§;
         }
         if(param1 == this.m_world.§7!X§)
         {
            this.m_world.§7!X§ = param1.§&!6§;
         }
         if(param1.§@!o§.§5!S§)
         {
            param1.§@!o§.§5!S§.§7$§ = param1.§@!o§.§7$§;
         }
         if(param1.§@!o§.§7$§)
         {
            param1.§@!o§.§7$§.§5!S§ = param1.§@!o§.§5!S§;
         }
         if(param1.§@!o§ == _loc4_.§7!X§)
         {
            _loc4_.§7!X§ = param1.§@!o§.§7$§;
         }
         if(param1.§+!f§.§5!S§)
         {
            param1.§+!f§.§5!S§.§7$§ = param1.§+!f§.§7$§;
         }
         if(param1.§+!f§.§7$§)
         {
            param1.§+!f§.§7$§.§5!S§ = param1.§+!f§.§5!S§;
         }
         if(param1.§+!f§ == _loc5_.§7!X§)
         {
            _loc5_.§7!X§ = param1.§+!f§.§7$§;
         }
         this.§@!p§.§7"'§(param1);
         --this.§9K§;
      }
      
      public function § !e§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§7!X§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§[!_§();
            _loc3_ = _loc1_.§6!6§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§1§();
            }
            else
            {
               if(_loc1_.§true§ & b2Contact.§"F§)
               {
                  if(_loc5_.§?g§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§1§();
                     this.§7"'§(_loc9_);
                     continue;
                  }
                  if(this.§<!F§.§?g§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§1§();
                     this.§7"'§(_loc9_);
                     continue;
                  }
                  _loc1_.§true§ &= ~b2Contact.§"F§;
               }
               _loc6_ = _loc2_.§04§;
               _loc7_ = _loc3_.§04§;
               if((_loc8_ = this.§8!1§.§1'§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§1§();
                  this.§7"'§(_loc9_);
               }
               else
               {
                  _loc1_.§7!M§(this.§,"E§);
                  _loc1_ = _loc1_.§1§();
               }
            }
         }
      }
   }
}
