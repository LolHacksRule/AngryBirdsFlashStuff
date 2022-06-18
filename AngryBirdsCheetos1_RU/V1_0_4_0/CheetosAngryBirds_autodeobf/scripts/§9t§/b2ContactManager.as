package §9t§
{
   import §!!#§.§4!b§;
   import §!!#§.b2ContactPoint;
   import §!!#§.b2DynamicTreeBroadPhase;
   import §4! §.b2internal;
   import §[-§.b2Contact;
   import §[-§.b2ContactEdge;
   import §[-§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §<!W§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §8Z§:§4!b§;
      
      b2internal var §]=§:b2Contact;
      
      b2internal var §2+§:int;
      
      b2internal var §0p§:b2ContactFilter;
      
      b2internal var §;E§:b2ContactListener;
      
      b2internal var §%!!§:b2ContactFactory;
      
      b2internal var §8=§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§2+§ = 0;
         this.§0p§ = b2ContactFilter.§%P§;
         this.§;E§ = b2ContactListener.§,!Q§;
         this.§%!!§ = new b2ContactFactory(this.§8=§);
         this.§8Z§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §1f§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§!u§();
         while(_loc7_)
         {
            if(_loc7_.§5C§ == _loc5_)
            {
               _loc9_ = _loc7_.§2L§.§>!b§();
               _loc10_ = _loc7_.§2L§.§1t§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§1!V§;
         }
         if(_loc6_.§,!3§(_loc5_) == false)
         {
            return;
         }
         if(this.§0p§.§,!3§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§%!!§.§1P§(_loc3_,_loc4_)).§>!b§();
         _loc4_ = _loc8_.§1t§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§&J§ = null;
         _loc8_.§%m§ = this.m_world.§]=§;
         if(this.m_world.§]=§ != null)
         {
            this.m_world.§]=§.§&J§ = _loc8_;
         }
         this.m_world.§]=§ = _loc8_;
         _loc8_.§`!C§.§2L§ = _loc8_;
         _loc8_.§`!C§.§5C§ = _loc6_;
         _loc8_.§`!C§.§3t§ = null;
         _loc8_.§`!C§.§1!V§ = _loc5_.§]=§;
         if(_loc5_.§]=§ != null)
         {
            _loc5_.§]=§.§3t§ = _loc8_.§`!C§;
         }
         _loc5_.§]=§ = _loc8_.§`!C§;
         _loc8_.§8!_§.§2L§ = _loc8_;
         _loc8_.§8!_§.§5C§ = _loc5_;
         _loc8_.§8!_§.§3t§ = null;
         _loc8_.§8!_§.§1!V§ = _loc6_.§]=§;
         if(_loc6_.§]=§ != null)
         {
            _loc6_.§]=§.§3t§ = _loc8_.§8!_§;
         }
         _loc6_.§]=§ = _loc8_.§8!_§;
         ++this.m_world.§2+§;
      }
      
      public function §6!>§() : void
      {
         this.§8Z§.§]q§(this.§1f§);
      }
      
      public function §88§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§>!b§();
         var _loc3_:b2Fixture = param1.§1t§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§3C§())
         {
            this.§;E§.EndContact(param1);
         }
         if(param1.§&J§)
         {
            param1.§&J§.§%m§ = param1.§%m§;
         }
         if(param1.§%m§)
         {
            param1.§%m§.§&J§ = param1.§&J§;
         }
         if(param1 == this.m_world.§]=§)
         {
            this.m_world.§]=§ = param1.§%m§;
         }
         if(param1.§`!C§.§3t§)
         {
            param1.§`!C§.§3t§.§1!V§ = param1.§`!C§.§1!V§;
         }
         if(param1.§`!C§.§1!V§)
         {
            param1.§`!C§.§1!V§.§3t§ = param1.§`!C§.§3t§;
         }
         if(param1.§`!C§ == _loc4_.§]=§)
         {
            _loc4_.§]=§ = param1.§`!C§.§1!V§;
         }
         if(param1.§8!_§.§3t§)
         {
            param1.§8!_§.§3t§.§1!V§ = param1.§8!_§.§1!V§;
         }
         if(param1.§8!_§.§1!V§)
         {
            param1.§8!_§.§1!V§.§3t§ = param1.§8!_§.§3t§;
         }
         if(param1.§8!_§ == _loc5_.§]=§)
         {
            _loc5_.§]=§ = param1.§8!_§.§1!V§;
         }
         this.§%!!§.§88§(param1);
         --this.§2+§;
      }
      
      public function §=!B§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§]=§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§>!b§();
            _loc3_ = _loc1_.§1t§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§&!V§();
            }
            else
            {
               if(_loc1_.§ -§ & b2Contact.§ <§)
               {
                  if(_loc5_.§,!3§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§&!V§();
                     this.§88§(_loc9_);
                     continue;
                  }
                  if(this.§0p§.§,!3§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§&!V§();
                     this.§88§(_loc9_);
                     continue;
                  }
                  _loc1_.§ -§ &= ~b2Contact.§ <§;
               }
               _loc6_ = _loc2_.§!!]§;
               _loc7_ = _loc3_.§!!]§;
               if((_loc8_ = this.§8Z§.§?`§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§&!V§();
                  this.§88§(_loc9_);
               }
               else
               {
                  _loc1_.§%M§(this.§;E§);
                  _loc1_ = _loc1_.§&!V§();
               }
            }
         }
      }
   }
}
