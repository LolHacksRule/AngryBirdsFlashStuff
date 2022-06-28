package §`w§
{
   import §7!u§.b2internal;
   import §72§.§<X§;
   import §72§.b2ContactPoint;
   import §72§.b2DynamicTreeBroadPhase;
   import §break§.b2Contact;
   import §break§.b2ContactEdge;
   import §break§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §[!R§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §<Z§:§<X§;
      
      b2internal var §]3§:b2Contact;
      
      b2internal var §0V§:int;
      
      b2internal var §2!1§:b2ContactFilter;
      
      b2internal var §7Q§:b2ContactListener;
      
      b2internal var §,!&§:b2ContactFactory;
      
      b2internal var §`o§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§0V§ = 0;
         this.§2!1§ = b2ContactFilter.§#3§;
         this.§7Q§ = b2ContactListener.§8=§;
         this.§,!&§ = new b2ContactFactory(this.§`o§);
         this.§<Z§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §&!%§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§"x§();
         while(_loc7_)
         {
            if(_loc7_.§,H§ == _loc5_)
            {
               _loc9_ = _loc7_.§+2§.§?!l§();
               _loc10_ = _loc7_.§+2§.§0+§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§-!3§;
         }
         if(_loc6_.§9e§(_loc5_) == false)
         {
            return;
         }
         if(this.§2!1§.§9e§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§,!&§.§`4§(_loc3_,_loc4_)).§?!l§();
         _loc4_ = _loc8_.§0+§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§-!I§ = null;
         _loc8_.§3=§ = this.m_world.§]3§;
         if(this.m_world.§]3§ != null)
         {
            this.m_world.§]3§.§-!I§ = _loc8_;
         }
         this.m_world.§]3§ = _loc8_;
         _loc8_.§6X§.§+2§ = _loc8_;
         _loc8_.§6X§.§,H§ = _loc6_;
         _loc8_.§6X§.§;+§ = null;
         _loc8_.§6X§.§-!3§ = _loc5_.§]3§;
         if(_loc5_.§]3§ != null)
         {
            _loc5_.§]3§.§;+§ = _loc8_.§6X§;
         }
         _loc5_.§]3§ = _loc8_.§6X§;
         _loc8_.§#!T§.§+2§ = _loc8_;
         _loc8_.§#!T§.§,H§ = _loc5_;
         _loc8_.§#!T§.§;+§ = null;
         _loc8_.§#!T§.§-!3§ = _loc6_.§]3§;
         if(_loc6_.§]3§ != null)
         {
            _loc6_.§]3§.§;+§ = _loc8_.§#!T§;
         }
         _loc6_.§]3§ = _loc8_.§#!T§;
         ++this.m_world.§0V§;
      }
      
      public function §0a§() : void
      {
         this.§<Z§.§`!j§(this.§&!%§);
      }
      
      public function §[M§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§?!l§();
         var _loc3_:b2Fixture = param1.§0+§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§!u§())
         {
            this.§7Q§.EndContact(param1);
         }
         if(param1.§-!I§)
         {
            param1.§-!I§.§3=§ = param1.§3=§;
         }
         if(param1.§3=§)
         {
            param1.§3=§.§-!I§ = param1.§-!I§;
         }
         if(param1 == this.m_world.§]3§)
         {
            this.m_world.§]3§ = param1.§3=§;
         }
         if(param1.§6X§.§;+§)
         {
            param1.§6X§.§;+§.§-!3§ = param1.§6X§.§-!3§;
         }
         if(param1.§6X§.§-!3§)
         {
            param1.§6X§.§-!3§.§;+§ = param1.§6X§.§;+§;
         }
         if(param1.§6X§ == _loc4_.§]3§)
         {
            _loc4_.§]3§ = param1.§6X§.§-!3§;
         }
         if(param1.§#!T§.§;+§)
         {
            param1.§#!T§.§;+§.§-!3§ = param1.§#!T§.§-!3§;
         }
         if(param1.§#!T§.§-!3§)
         {
            param1.§#!T§.§-!3§.§;+§ = param1.§#!T§.§;+§;
         }
         if(param1.§#!T§ == _loc5_.§]3§)
         {
            _loc5_.§]3§ = param1.§#!T§.§-!3§;
         }
         this.§,!&§.§[M§(param1);
         --this.§0V§;
      }
      
      public function §`!"§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§]3§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§?!l§();
            _loc3_ = _loc1_.§0+§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§+!N§();
            }
            else
            {
               if(_loc1_.§;!R§ & b2Contact.§8,§)
               {
                  if(_loc5_.§9e§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§+!N§();
                     this.§[M§(_loc9_);
                     continue;
                  }
                  if(this.§2!1§.§9e§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§+!N§();
                     this.§[M§(_loc9_);
                     continue;
                  }
                  _loc1_.§;!R§ &= ~b2Contact.§8,§;
               }
               _loc6_ = _loc2_.§!!o§;
               _loc7_ = _loc3_.§!!o§;
               if((_loc8_ = this.§<Z§.§7l§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§+!N§();
                  this.§[M§(_loc9_);
               }
               else
               {
                  _loc1_.§6!^§(this.§7Q§);
                  _loc1_ = _loc1_.§+!N§();
               }
            }
         }
      }
   }
}
