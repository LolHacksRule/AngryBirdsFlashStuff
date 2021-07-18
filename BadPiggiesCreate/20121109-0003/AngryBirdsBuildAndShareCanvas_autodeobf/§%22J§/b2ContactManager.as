package §"J§
{
   import §%4§.§0w§;
   import §%4§.b2ContactPoint;
   import §%4§.b2DynamicTreeBroadPhase;
   import §;!e§.b2Contact;
   import §;!e§.b2ContactEdge;
   import §;!e§.b2ContactFactory;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §?!h§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §58§:§0w§;
      
      b2internal var §<W§:b2Contact;
      
      b2internal var §4A§:int;
      
      b2internal var §!!i§:b2ContactFilter;
      
      b2internal var §`"!§:b2ContactListener;
      
      b2internal var §1Q§:b2ContactFactory;
      
      b2internal var §9"6§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§4A§ = 0;
         this.§!!i§ = b2ContactFilter.§!W§;
         this.§`"!§ = b2ContactListener.§;!V§;
         this.§1Q§ = new b2ContactFactory(this.§9"6§);
         this.§58§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §@!B§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§3!$§();
         while(_loc7_)
         {
            if(_loc7_.§;5§ == _loc5_)
            {
               _loc9_ = _loc7_.§6M§.§&!K§();
               _loc10_ = _loc7_.§6M§.§ 1§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§>"2§;
         }
         if(_loc6_.§5"8§(_loc5_) == false)
         {
            return;
         }
         if(this.§!!i§.§5"8§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§1Q§.§`!P§(_loc3_,_loc4_)).§&!K§();
         _loc4_ = _loc8_.§ 1§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§+!w§ = null;
         _loc8_.§7!'§ = this.m_world.§<W§;
         if(this.m_world.§<W§ != null)
         {
            this.m_world.§<W§.§+!w§ = _loc8_;
         }
         this.m_world.§<W§ = _loc8_;
         _loc8_.§#=§.§6M§ = _loc8_;
         _loc8_.§#=§.§;5§ = _loc6_;
         _loc8_.§#=§.§8!?§ = null;
         _loc8_.§#=§.§>"2§ = _loc5_.§<W§;
         if(_loc5_.§<W§ != null)
         {
            _loc5_.§<W§.§8!?§ = _loc8_.§#=§;
         }
         _loc5_.§<W§ = _loc8_.§#=§;
         _loc8_.§="9§.§6M§ = _loc8_;
         _loc8_.§="9§.§;5§ = _loc5_;
         _loc8_.§="9§.§8!?§ = null;
         _loc8_.§="9§.§>"2§ = _loc6_.§<W§;
         if(_loc6_.§<W§ != null)
         {
            _loc6_.§<W§.§8!?§ = _loc8_.§="9§;
         }
         _loc6_.§<W§ = _loc8_.§="9§;
         ++this.m_world.§4A§;
      }
      
      public function §8u§() : void
      {
         this.§58§.§=!o§(this.§@!B§);
      }
      
      public function §3!0§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§&!K§();
         var _loc3_:b2Fixture = param1.§ 1§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§!j§())
         {
            this.§`"!§.EndContact(param1);
         }
         if(param1.§+!w§)
         {
            param1.§+!w§.§7!'§ = param1.§7!'§;
         }
         if(param1.§7!'§)
         {
            param1.§7!'§.§+!w§ = param1.§+!w§;
         }
         if(param1 == this.m_world.§<W§)
         {
            this.m_world.§<W§ = param1.§7!'§;
         }
         if(param1.§#=§.§8!?§)
         {
            param1.§#=§.§8!?§.§>"2§ = param1.§#=§.§>"2§;
         }
         if(param1.§#=§.§>"2§)
         {
            param1.§#=§.§>"2§.§8!?§ = param1.§#=§.§8!?§;
         }
         if(param1.§#=§ == _loc4_.§<W§)
         {
            _loc4_.§<W§ = param1.§#=§.§>"2§;
         }
         if(param1.§="9§.§8!?§)
         {
            param1.§="9§.§8!?§.§>"2§ = param1.§="9§.§>"2§;
         }
         if(param1.§="9§.§>"2§)
         {
            param1.§="9§.§>"2§.§8!?§ = param1.§="9§.§8!?§;
         }
         if(param1.§="9§ == _loc5_.§<W§)
         {
            _loc5_.§<W§ = param1.§="9§.§>"2§;
         }
         this.§1Q§.§3!0§(param1);
         --this.§4A§;
      }
      
      public function §^!Z§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§<W§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§&!K§();
            _loc3_ = _loc1_.§ 1§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§7"3§();
            }
            else
            {
               if(_loc1_.§]!+§ & b2Contact.§0t§)
               {
                  if(_loc5_.§5"8§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§7"3§();
                     this.§3!0§(_loc9_);
                     continue;
                  }
                  if(this.§!!i§.§5"8§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§7"3§();
                     this.§3!0§(_loc9_);
                     continue;
                  }
                  _loc1_.§]!+§ &= ~b2Contact.§0t§;
               }
               _loc6_ = _loc2_.§<"3§;
               _loc7_ = _loc3_.§<"3§;
               if((_loc8_ = this.§58§.§6m§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§7"3§();
                  this.§3!0§(_loc9_);
               }
               else
               {
                  _loc1_.§]!J§(this.§`"!§);
                  _loc1_ = _loc1_.§7"3§();
               }
            }
         }
      }
   }
}
