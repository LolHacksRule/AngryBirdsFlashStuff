package §4U§
{
   import § Y§.§=!!§;
   import § Y§.b2ContactPoint;
   import § Y§.b2DynamicTreeBroadPhase;
   import §#!M§.b2internal;
   import §`!O§.b2Contact;
   import §`!O§.b2ContactEdge;
   import §`!O§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §?w§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §4X§:§=!!§;
      
      b2internal var §3J§:b2Contact;
      
      b2internal var §<!2§:int;
      
      b2internal var §&!X§:b2ContactFilter;
      
      b2internal var §-!8§:b2ContactListener;
      
      b2internal var §&!§:b2ContactFactory;
      
      b2internal var §?!-§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§<!2§ = 0;
         this.§&!X§ = b2ContactFilter.§=!C§;
         this.§-!8§ = b2ContactListener.§+I§;
         this.§&!§ = new b2ContactFactory(this.§?!-§);
         this.§4X§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §&V§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§5!N§();
         while(_loc7_)
         {
            if(_loc7_.§<!H§ == _loc5_)
            {
               _loc9_ = _loc7_.§<l§.§7#§();
               _loc10_ = _loc7_.§<l§.§ O§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§+!Q§;
         }
         if(_loc6_.§ else§(_loc5_) == false)
         {
            return;
         }
         if(this.§&!X§.§ else§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§&!§.§&!W§(_loc3_,_loc4_)).§7#§();
         _loc4_ = _loc8_.§ O§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§4d§ = null;
         _loc8_.§^!B§ = this.m_world.§3J§;
         if(this.m_world.§3J§ != null)
         {
            this.m_world.§3J§.§4d§ = _loc8_;
         }
         this.m_world.§3J§ = _loc8_;
         _loc8_.§<`§.§<l§ = _loc8_;
         _loc8_.§<`§.§<!H§ = _loc6_;
         _loc8_.§<`§.§8g§ = null;
         _loc8_.§<`§.§+!Q§ = _loc5_.§3J§;
         if(_loc5_.§3J§ != null)
         {
            _loc5_.§3J§.§8g§ = _loc8_.§<`§;
         }
         _loc5_.§3J§ = _loc8_.§<`§;
         _loc8_.§',§.§<l§ = _loc8_;
         _loc8_.§',§.§<!H§ = _loc5_;
         _loc8_.§',§.§8g§ = null;
         _loc8_.§',§.§+!Q§ = _loc6_.§3J§;
         if(_loc6_.§3J§ != null)
         {
            _loc6_.§3J§.§8g§ = _loc8_.§',§;
         }
         _loc6_.§3J§ = _loc8_.§',§;
         ++this.m_world.§<!2§;
      }
      
      public function §@=§() : void
      {
         this.§4X§.§9!,§(this.§&V§);
      }
      
      public function §'D§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§7#§();
         var _loc3_:b2Fixture = param1.§ O§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§9m§())
         {
            this.§-!8§.EndContact(param1);
         }
         if(param1.§4d§)
         {
            param1.§4d§.§^!B§ = param1.§^!B§;
         }
         if(param1.§^!B§)
         {
            param1.§^!B§.§4d§ = param1.§4d§;
         }
         if(param1 == this.m_world.§3J§)
         {
            this.m_world.§3J§ = param1.§^!B§;
         }
         if(param1.§<`§.§8g§)
         {
            param1.§<`§.§8g§.§+!Q§ = param1.§<`§.§+!Q§;
         }
         if(param1.§<`§.§+!Q§)
         {
            param1.§<`§.§+!Q§.§8g§ = param1.§<`§.§8g§;
         }
         if(param1.§<`§ == _loc4_.§3J§)
         {
            _loc4_.§3J§ = param1.§<`§.§+!Q§;
         }
         if(param1.§',§.§8g§)
         {
            param1.§',§.§8g§.§+!Q§ = param1.§',§.§+!Q§;
         }
         if(param1.§',§.§+!Q§)
         {
            param1.§',§.§+!Q§.§8g§ = param1.§',§.§8g§;
         }
         if(param1.§',§ == _loc5_.§3J§)
         {
            _loc5_.§3J§ = param1.§',§.§+!Q§;
         }
         this.§&!§.§'D§(param1);
         --this.§<!2§;
      }
      
      public function §21§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§3J§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§7#§();
            _loc3_ = _loc1_.§ O§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§#!3§();
            }
            else
            {
               if(_loc1_.§^!J§ & b2Contact.§3"§)
               {
                  if(_loc5_.§ else§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§#!3§();
                     this.§'D§(_loc9_);
                     continue;
                  }
                  if(this.§&!X§.§ else§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§#!3§();
                     this.§'D§(_loc9_);
                     continue;
                  }
                  _loc1_.§^!J§ &= ~b2Contact.§3"§;
               }
               _loc6_ = _loc2_.§^!?§;
               _loc7_ = _loc3_.§^!?§;
               if((_loc8_ = this.§4X§.§#!J§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§#!3§();
                  this.§'D§(_loc9_);
               }
               else
               {
                  _loc1_.§7!=§(this.§-!8§);
                  _loc1_ = _loc1_.§#!3§();
               }
            }
         }
      }
   }
}
