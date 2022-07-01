package §9"5§
{
   import §!!o§.b2Contact;
   import §!!o§.b2ContactEdge;
   import §!!o§.b2ContactFactory;
   import §,P§.§7!G§;
   import §,P§.b2ContactPoint;
   import §,P§.b2DynamicTreeBroadPhase;
   import §>!R§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §?!K§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §%!_§:§7!G§;
      
      b2internal var §,!D§:b2Contact;
      
      b2internal var §^O§:int;
      
      b2internal var §4!i§:b2ContactFilter;
      
      b2internal var §3"3§:b2ContactListener;
      
      b2internal var §1!m§:b2ContactFactory;
      
      b2internal var §?!R§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§^O§ = 0;
         this.§4!i§ = b2ContactFilter.§>! §;
         this.§3"3§ = b2ContactListener.§^^§;
         this.§1!m§ = new b2ContactFactory(this.§?!R§);
         this.§%!_§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §,w§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§%!"§();
         while(_loc7_)
         {
            if(_loc7_.§8`§ == _loc5_)
            {
               _loc9_ = _loc7_.§4%§.§?s§();
               _loc10_ = _loc7_.§4%§.§^!q§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.next;
         }
         if(_loc6_.§0Q§(_loc5_) == false)
         {
            return;
         }
         if(this.§4!i§.§0Q§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§1!m§.§0!8§(_loc3_,_loc4_)).§?s§();
         _loc4_ = _loc8_.§^!q§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§'"5§ = null;
         _loc8_.§]4§ = this.m_world.§,!D§;
         if(this.m_world.§,!D§ != null)
         {
            this.m_world.§,!D§.§'"5§ = _loc8_;
         }
         this.m_world.§,!D§ = _loc8_;
         _loc8_.§=!L§.§4%§ = _loc8_;
         _loc8_.§=!L§.§8`§ = _loc6_;
         _loc8_.§=!L§.§[!?§ = null;
         _loc8_.§=!L§.next = _loc5_.§,!D§;
         if(_loc5_.§,!D§ != null)
         {
            _loc5_.§,!D§.§[!?§ = _loc8_.§=!L§;
         }
         _loc5_.§,!D§ = _loc8_.§=!L§;
         _loc8_.§6d§.§4%§ = _loc8_;
         _loc8_.§6d§.§8`§ = _loc5_;
         _loc8_.§6d§.§[!?§ = null;
         _loc8_.§6d§.next = _loc6_.§,!D§;
         if(_loc6_.§,!D§ != null)
         {
            _loc6_.§,!D§.§[!?§ = _loc8_.§6d§;
         }
         _loc6_.§,!D§ = _loc8_.§6d§;
         ++this.m_world.§^O§;
      }
      
      public function §8!x§() : void
      {
         this.§%!_§.§<p§(this.§,w§);
      }
      
      public function §&`§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§?s§();
         var _loc3_:b2Fixture = param1.§^!q§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.each())
         {
            this.§3"3§.EndContact(param1);
         }
         if(param1.§'"5§)
         {
            param1.§'"5§.§]4§ = param1.§]4§;
         }
         if(param1.§]4§)
         {
            param1.§]4§.§'"5§ = param1.§'"5§;
         }
         if(param1 == this.m_world.§,!D§)
         {
            this.m_world.§,!D§ = param1.§]4§;
         }
         if(param1.§=!L§.§[!?§)
         {
            param1.§=!L§.§[!?§.next = param1.§=!L§.next;
         }
         if(param1.§=!L§.next)
         {
            param1.§=!L§.next.§[!?§ = param1.§=!L§.§[!?§;
         }
         if(param1.§=!L§ == _loc4_.§,!D§)
         {
            _loc4_.§,!D§ = param1.§=!L§.next;
         }
         if(param1.§6d§.§[!?§)
         {
            param1.§6d§.§[!?§.next = param1.§6d§.next;
         }
         if(param1.§6d§.next)
         {
            param1.§6d§.next.§[!?§ = param1.§6d§.§[!?§;
         }
         if(param1.§6d§ == _loc5_.§,!D§)
         {
            _loc5_.§,!D§ = param1.§6d§.next;
         }
         this.§1!m§.§&`§(param1);
         --this.§^O§;
      }
      
      public function §0!@§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§,!D§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§?s§();
            _loc3_ = _loc1_.§^!q§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§+"3§();
            }
            else
            {
               if(_loc1_.§&!G§ & b2Contact.§^2§)
               {
                  if(_loc5_.§0Q§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§+"3§();
                     this.§&`§(_loc9_);
                     continue;
                  }
                  if(this.§4!i§.§0Q§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§+"3§();
                     this.§&`§(_loc9_);
                     continue;
                  }
                  _loc1_.§&!G§ &= ~b2Contact.§^2§;
               }
               _loc6_ = _loc2_.§7L§;
               _loc7_ = _loc3_.§7L§;
               if((_loc8_ = this.§%!_§.§1`§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§+"3§();
                  this.§&`§(_loc9_);
               }
               else
               {
                  _loc1_.§!#§(this.§3"3§);
                  _loc1_ = _loc1_.§+"3§();
               }
            }
         }
      }
   }
}
