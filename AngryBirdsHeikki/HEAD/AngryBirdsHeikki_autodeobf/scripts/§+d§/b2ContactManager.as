package §+d§
{
   import §%E§.b2Contact;
   import §%E§.b2ContactEdge;
   import §%E§.b2ContactFactory;
   import §6%§.b2internal;
   import §=n§.§@!C§;
   import §=n§.b2ContactPoint;
   import §=n§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §%h§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §!!D§:§@!C§;
      
      b2internal var §5!e§:b2Contact;
      
      b2internal var §36§:int;
      
      b2internal var §`$§:b2ContactFilter;
      
      b2internal var §30§:b2ContactListener;
      
      b2internal var §=!X§:b2ContactFactory;
      
      b2internal var §;!H§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§36§ = 0;
         this.§`$§ = b2ContactFilter.§3O§;
         this.§30§ = b2ContactListener.§#!>§;
         this.§=!X§ = new b2ContactFactory(this.§;!H§);
         this.§!!D§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §+!U§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§#! §();
         while(_loc7_)
         {
            if(_loc7_.§ !a§ == _loc5_)
            {
               _loc9_ = _loc7_.§!d§.§5m§();
               _loc10_ = _loc7_.§!d§.§3t§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§-w§;
         }
         if(_loc6_.§3!#§(_loc5_) == false)
         {
            return;
         }
         if(this.§`$§.§3!#§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§=!X§.§2!f§(_loc3_,_loc4_)).§5m§();
         _loc4_ = _loc8_.§3t§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§;h§ = null;
         _loc8_.§8A§ = this.m_world.§5!e§;
         if(this.m_world.§5!e§ != null)
         {
            this.m_world.§5!e§.§;h§ = _loc8_;
         }
         this.m_world.§5!e§ = _loc8_;
         _loc8_.§?4§.§!d§ = _loc8_;
         _loc8_.§?4§.§ !a§ = _loc6_;
         _loc8_.§?4§.§;8§ = null;
         _loc8_.§?4§.§-w§ = _loc5_.§5!e§;
         if(_loc5_.§5!e§ != null)
         {
            _loc5_.§5!e§.§;8§ = _loc8_.§?4§;
         }
         _loc5_.§5!e§ = _loc8_.§?4§;
         _loc8_.§>!0§.§!d§ = _loc8_;
         _loc8_.§>!0§.§ !a§ = _loc5_;
         _loc8_.§>!0§.§;8§ = null;
         _loc8_.§>!0§.§-w§ = _loc6_.§5!e§;
         if(_loc6_.§5!e§ != null)
         {
            _loc6_.§5!e§.§;8§ = _loc8_.§>!0§;
         }
         _loc6_.§5!e§ = _loc8_.§>!0§;
         ++this.m_world.§36§;
      }
      
      public function §,q§() : void
      {
         this.§!!D§.§4]§(this.§+!U§);
      }
      
      public function §9!1§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§5m§();
         var _loc3_:b2Fixture = param1.§3t§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§!v§())
         {
            this.§30§.EndContact(param1);
         }
         if(param1.§;h§)
         {
            param1.§;h§.§8A§ = param1.§8A§;
         }
         if(param1.§8A§)
         {
            param1.§8A§.§;h§ = param1.§;h§;
         }
         if(param1 == this.m_world.§5!e§)
         {
            this.m_world.§5!e§ = param1.§8A§;
         }
         if(param1.§?4§.§;8§)
         {
            param1.§?4§.§;8§.§-w§ = param1.§?4§.§-w§;
         }
         if(param1.§?4§.§-w§)
         {
            param1.§?4§.§-w§.§;8§ = param1.§?4§.§;8§;
         }
         if(param1.§?4§ == _loc4_.§5!e§)
         {
            _loc4_.§5!e§ = param1.§?4§.§-w§;
         }
         if(param1.§>!0§.§;8§)
         {
            param1.§>!0§.§;8§.§-w§ = param1.§>!0§.§-w§;
         }
         if(param1.§>!0§.§-w§)
         {
            param1.§>!0§.§-w§.§;8§ = param1.§>!0§.§;8§;
         }
         if(param1.§>!0§ == _loc5_.§5!e§)
         {
            _loc5_.§5!e§ = param1.§>!0§.§-w§;
         }
         this.§=!X§.§9!1§(param1);
         --this.§36§;
      }
      
      public function §4!"§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§5!e§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§5m§();
            _loc3_ = _loc1_.§3t§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§%;§();
            }
            else
            {
               if(_loc1_.§?!?§ & b2Contact.§6!J§)
               {
                  if(_loc5_.§3!#§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%;§();
                     this.§9!1§(_loc9_);
                     continue;
                  }
                  if(this.§`$§.§3!#§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%;§();
                     this.§9!1§(_loc9_);
                     continue;
                  }
                  _loc1_.§?!?§ &= ~b2Contact.§6!J§;
               }
               _loc6_ = _loc2_.§2!=§;
               _loc7_ = _loc3_.§2!=§;
               if((_loc8_ = this.§!!D§.§-!§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§%;§();
                  this.§9!1§(_loc9_);
               }
               else
               {
                  _loc1_.§ ?§(this.§30§);
                  _loc1_ = _loc1_.§%;§();
               }
            }
         }
      }
   }
}
