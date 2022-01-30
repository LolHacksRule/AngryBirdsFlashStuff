package §&!M§
{
   import §6!`§.b2internal;
   import §;"0§.§,;§;
   import §;"0§.b2ContactPoint;
   import §;"0§.b2DynamicTreeBroadPhase;
   import §?!D§.b2Contact;
   import §?!D§.b2ContactEdge;
   import §?!D§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §&1§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §>K§:§,;§;
      
      b2internal var §,^§:b2Contact;
      
      b2internal var §`"+§:int;
      
      b2internal var §5!s§:b2ContactFilter;
      
      b2internal var §=!R§:b2ContactListener;
      
      b2internal var §%"3§:b2ContactFactory;
      
      b2internal var §=!a§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§`"+§ = 0;
         this.§5!s§ = b2ContactFilter.§!!A§;
         this.§=!R§ = b2ContactListener.§<!p§;
         this.§%"3§ = new b2ContactFactory(this.§=!a§);
         this.§>K§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §2]§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§#E§();
         while(_loc7_)
         {
            if(_loc7_.§[s§ == _loc5_)
            {
               _loc9_ = _loc7_.§?!S§.§]§();
               _loc10_ = _loc7_.§?!S§.§@!^§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§^!Q§;
         }
         if(_loc6_.§`!-§(_loc5_) == false)
         {
            return;
         }
         if(this.§5!s§.§`!-§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§%"3§.§[,§(_loc3_,_loc4_)).§]§();
         _loc4_ = _loc8_.§@!^§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§]!9§ = null;
         _loc8_.§'!@§ = this.m_world.§,^§;
         if(this.m_world.§,^§ != null)
         {
            this.m_world.§,^§.§]!9§ = _loc8_;
         }
         this.m_world.§,^§ = _loc8_;
         _loc8_.§![§.§?!S§ = _loc8_;
         _loc8_.§![§.§[s§ = _loc6_;
         _loc8_.§![§.§,W§ = null;
         _loc8_.§![§.§^!Q§ = _loc5_.§,^§;
         if(_loc5_.§,^§ != null)
         {
            _loc5_.§,^§.§,W§ = _loc8_.§![§;
         }
         _loc5_.§,^§ = _loc8_.§![§;
         _loc8_.§=,§.§?!S§ = _loc8_;
         _loc8_.§=,§.§[s§ = _loc5_;
         _loc8_.§=,§.§,W§ = null;
         _loc8_.§=,§.§^!Q§ = _loc6_.§,^§;
         if(_loc6_.§,^§ != null)
         {
            _loc6_.§,^§.§,W§ = _loc8_.§=,§;
         }
         _loc6_.§,^§ = _loc8_.§=,§;
         ++this.m_world.§`"+§;
      }
      
      public function §,!"§() : void
      {
         this.§>K§.§9c§(this.§2]§);
      }
      
      public function §3"8§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§]§();
         var _loc3_:b2Fixture = param1.§@!^§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§^!!§())
         {
            this.§=!R§.EndContact(param1);
         }
         if(param1.§]!9§)
         {
            param1.§]!9§.§'!@§ = param1.§'!@§;
         }
         if(param1.§'!@§)
         {
            param1.§'!@§.§]!9§ = param1.§]!9§;
         }
         if(param1 == this.m_world.§,^§)
         {
            this.m_world.§,^§ = param1.§'!@§;
         }
         if(param1.§![§.§,W§)
         {
            param1.§![§.§,W§.§^!Q§ = param1.§![§.§^!Q§;
         }
         if(param1.§![§.§^!Q§)
         {
            param1.§![§.§^!Q§.§,W§ = param1.§![§.§,W§;
         }
         if(param1.§![§ == _loc4_.§,^§)
         {
            _loc4_.§,^§ = param1.§![§.§^!Q§;
         }
         if(param1.§=,§.§,W§)
         {
            param1.§=,§.§,W§.§^!Q§ = param1.§=,§.§^!Q§;
         }
         if(param1.§=,§.§^!Q§)
         {
            param1.§=,§.§^!Q§.§,W§ = param1.§=,§.§,W§;
         }
         if(param1.§=,§ == _loc5_.§,^§)
         {
            _loc5_.§,^§ = param1.§=,§.§^!Q§;
         }
         this.§%"3§.§3"8§(param1);
         --this.§`"+§;
      }
      
      public function §4I§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§,^§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§]§();
            _loc3_ = _loc1_.§@!^§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§`!u§();
            }
            else
            {
               if(_loc1_.§[d§ & b2Contact.§>!$§)
               {
                  if(_loc5_.§`!-§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§`!u§();
                     this.§3"8§(_loc9_);
                     continue;
                  }
                  if(this.§5!s§.§`!-§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§`!u§();
                     this.§3"8§(_loc9_);
                     continue;
                  }
                  _loc1_.§[d§ &= ~b2Contact.§>!$§;
               }
               _loc6_ = _loc2_.§+!V§;
               _loc7_ = _loc3_.§+!V§;
               if((_loc8_ = this.§>K§.§3!z§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§`!u§();
                  this.§3"8§(_loc9_);
               }
               else
               {
                  _loc1_.§%!b§(this.§=!R§);
                  _loc1_ = _loc1_.§`!u§();
               }
            }
         }
      }
   }
}
