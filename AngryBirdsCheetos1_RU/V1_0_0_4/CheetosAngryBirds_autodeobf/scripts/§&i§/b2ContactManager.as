package §&i§
{
   import §"v§.b2internal;
   import §'z§.b2Contact;
   import §'z§.b2ContactEdge;
   import §'z§.b2ContactFactory;
   import §]M§.§?!&§;
   import §]M§.b2ContactPoint;
   import §]M§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §,]§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §%r§:§?!&§;
      
      b2internal var §=!-§:b2Contact;
      
      b2internal var §%Q§:int;
      
      b2internal var §>U§:b2ContactFilter;
      
      b2internal var §;!C§:b2ContactListener;
      
      b2internal var §&`§:b2ContactFactory;
      
      b2internal var §"m§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§%Q§ = 0;
         this.§>U§ = b2ContactFilter.§+!E§;
         this.§;!C§ = b2ContactListener.§=]§;
         this.§&`§ = new b2ContactFactory(this.§"m§);
         this.§%r§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §4!<§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§0H§();
         while(_loc7_)
         {
            if(_loc7_.§`!0§ == _loc5_)
            {
               _loc9_ = _loc7_.§^@§.§"q§();
               _loc10_ = _loc7_.§^@§.§^x§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§`!V§;
         }
         if(_loc6_.§^§(_loc5_) == false)
         {
            return;
         }
         if(this.§>U§.§^§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§&`§.§#![§(_loc3_,_loc4_)).§"q§();
         _loc4_ = _loc8_.§^x§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§80§ = null;
         _loc8_.§`!T§ = this.m_world.§=!-§;
         if(this.m_world.§=!-§ != null)
         {
            this.m_world.§=!-§.§80§ = _loc8_;
         }
         this.m_world.§=!-§ = _loc8_;
         _loc8_.§^$§.§^@§ = _loc8_;
         _loc8_.§^$§.§`!0§ = _loc6_;
         _loc8_.§^$§.§`V§ = null;
         _loc8_.§^$§.§`!V§ = _loc5_.§=!-§;
         if(_loc5_.§=!-§ != null)
         {
            _loc5_.§=!-§.§`V§ = _loc8_.§^$§;
         }
         _loc5_.§=!-§ = _loc8_.§^$§;
         _loc8_.§7$§.§^@§ = _loc8_;
         _loc8_.§7$§.§`!0§ = _loc5_;
         _loc8_.§7$§.§`V§ = null;
         _loc8_.§7$§.§`!V§ = _loc6_.§=!-§;
         if(_loc6_.§=!-§ != null)
         {
            _loc6_.§=!-§.§`V§ = _loc8_.§7$§;
         }
         _loc6_.§=!-§ = _loc8_.§7$§;
         ++this.m_world.§%Q§;
      }
      
      public function §&!0§() : void
      {
         this.§%r§.§"!W§(this.§4!<§);
      }
      
      public function §%P§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§"q§();
         var _loc3_:b2Fixture = param1.§^x§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§4!#§())
         {
            this.§;!C§.EndContact(param1);
         }
         if(param1.§80§)
         {
            param1.§80§.§`!T§ = param1.§`!T§;
         }
         if(param1.§`!T§)
         {
            param1.§`!T§.§80§ = param1.§80§;
         }
         if(param1 == this.m_world.§=!-§)
         {
            this.m_world.§=!-§ = param1.§`!T§;
         }
         if(param1.§^$§.§`V§)
         {
            param1.§^$§.§`V§.§`!V§ = param1.§^$§.§`!V§;
         }
         if(param1.§^$§.§`!V§)
         {
            param1.§^$§.§`!V§.§`V§ = param1.§^$§.§`V§;
         }
         if(param1.§^$§ == _loc4_.§=!-§)
         {
            _loc4_.§=!-§ = param1.§^$§.§`!V§;
         }
         if(param1.§7$§.§`V§)
         {
            param1.§7$§.§`V§.§`!V§ = param1.§7$§.§`!V§;
         }
         if(param1.§7$§.§`!V§)
         {
            param1.§7$§.§`!V§.§`V§ = param1.§7$§.§`V§;
         }
         if(param1.§7$§ == _loc5_.§=!-§)
         {
            _loc5_.§=!-§ = param1.§7$§.§`!V§;
         }
         this.§&`§.§%P§(param1);
         --this.§%Q§;
      }
      
      public function §5!+§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§=!-§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§"q§();
            _loc3_ = _loc1_.§^x§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§%!<§();
            }
            else
            {
               if(_loc1_.§7A§ & b2Contact.§?`§)
               {
                  if(_loc5_.§^§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%!<§();
                     this.§%P§(_loc9_);
                     continue;
                  }
                  if(this.§>U§.§^§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%!<§();
                     this.§%P§(_loc9_);
                     continue;
                  }
                  _loc1_.§7A§ &= ~b2Contact.§?`§;
               }
               _loc6_ = _loc2_.§2!F§;
               _loc7_ = _loc3_.§2!F§;
               if((_loc8_ = this.§%r§.§>!4§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§%!<§();
                  this.§%P§(_loc9_);
               }
               else
               {
                  _loc1_.§7!>§(this.§;!C§);
                  _loc1_ = _loc1_.§%!<§();
               }
            }
         }
      }
   }
}
