package §_-43§
{
   import §_-Jx§.§_-e1§;
   import §_-Jx§.b2ContactPoint;
   import §_-Jx§.b2DynamicTreeBroadPhase;
   import §_-ZX§.b2Contact;
   import §_-ZX§.b2ContactEdge;
   import §_-ZX§.b2ContactFactory;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §get §:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §_-pf§:§_-e1§;
      
      b2internal var §_-pp§:b2Contact;
      
      b2internal var §_-jG§:int;
      
      b2internal var §_-I4§:b2ContactFilter;
      
      b2internal var §_-xb§:b2ContactListener;
      
      b2internal var §_-Vs§:b2ContactFactory;
      
      b2internal var §_-fi§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§_-jG§ = 0;
         this.§_-I4§ = b2ContactFilter.§_-GO§;
         this.§_-xb§ = b2ContactListener.§_-8z§;
         this.§_-Vs§ = new b2ContactFactory(this.§_-fi§);
         this.§_-pf§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §_-YY§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§_-sA§();
         while(_loc7_)
         {
            if(_loc7_.§_-f3§ == _loc5_)
            {
               _loc9_ = _loc7_.§_-50§.§_-ml§();
               _loc10_ = _loc7_.§_-50§.§_-s9§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§_-Rk§;
         }
         if(_loc6_.§_-9W§(_loc5_) == false)
         {
            return;
         }
         if(this.§_-I4§.§_-9W§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§_-Vs§.§_-6l§(_loc3_,_loc4_)).§_-ml§();
         _loc4_ = _loc8_.§_-s9§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§_-Nc§ = null;
         _loc8_.§_-4N§ = this.m_world.§_-pp§;
         if(this.m_world.§_-pp§ != null)
         {
            this.m_world.§_-pp§.§_-Nc§ = _loc8_;
         }
         this.m_world.§_-pp§ = _loc8_;
         _loc8_.§_-Kl§.§_-50§ = _loc8_;
         _loc8_.§_-Kl§.§_-f3§ = _loc6_;
         _loc8_.§_-Kl§.§_-rm§ = null;
         _loc8_.§_-Kl§.§_-Rk§ = _loc5_.§_-pp§;
         if(_loc5_.§_-pp§ != null)
         {
            _loc5_.§_-pp§.§_-rm§ = _loc8_.§_-Kl§;
         }
         _loc5_.§_-pp§ = _loc8_.§_-Kl§;
         _loc8_.§_-C2§.§_-50§ = _loc8_;
         _loc8_.§_-C2§.§_-f3§ = _loc5_;
         _loc8_.§_-C2§.§_-rm§ = null;
         _loc8_.§_-C2§.§_-Rk§ = _loc6_.§_-pp§;
         if(_loc6_.§_-pp§ != null)
         {
            _loc6_.§_-pp§.§_-rm§ = _loc8_.§_-C2§;
         }
         _loc6_.§_-pp§ = _loc8_.§_-C2§;
         ++this.m_world.§_-jG§;
      }
      
      public function §_-nR§() : void
      {
         this.§_-pf§.§_-gi§(this.§_-YY§);
      }
      
      public function §_-TI§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§_-ml§();
         var _loc3_:b2Fixture = param1.§_-s9§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§_-ax§())
         {
            this.§_-xb§.EndContact(param1);
         }
         if(param1.§_-Nc§)
         {
            param1.§_-Nc§.§_-4N§ = param1.§_-4N§;
         }
         if(param1.§_-4N§)
         {
            param1.§_-4N§.§_-Nc§ = param1.§_-Nc§;
         }
         if(param1 == this.m_world.§_-pp§)
         {
            this.m_world.§_-pp§ = param1.§_-4N§;
         }
         if(param1.§_-Kl§.§_-rm§)
         {
            param1.§_-Kl§.§_-rm§.§_-Rk§ = param1.§_-Kl§.§_-Rk§;
         }
         if(param1.§_-Kl§.§_-Rk§)
         {
            param1.§_-Kl§.§_-Rk§.§_-rm§ = param1.§_-Kl§.§_-rm§;
         }
         if(param1.§_-Kl§ == _loc4_.§_-pp§)
         {
            _loc4_.§_-pp§ = param1.§_-Kl§.§_-Rk§;
         }
         if(param1.§_-C2§.§_-rm§)
         {
            param1.§_-C2§.§_-rm§.§_-Rk§ = param1.§_-C2§.§_-Rk§;
         }
         if(param1.§_-C2§.§_-Rk§)
         {
            param1.§_-C2§.§_-Rk§.§_-rm§ = param1.§_-C2§.§_-rm§;
         }
         if(param1.§_-C2§ == _loc5_.§_-pp§)
         {
            _loc5_.§_-pp§ = param1.§_-C2§.§_-Rk§;
         }
         this.§_-Vs§.§_-TI§(param1);
         --this.§_-jG§;
      }
      
      public function §_-CD§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§_-pp§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-ml§();
            _loc3_ = _loc1_.§_-s9§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§_-4A§();
            }
            else
            {
               if(_loc1_.§_-o4§ & b2Contact.§_-J6§)
               {
                  if(_loc5_.§_-9W§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-4A§();
                     this.§_-TI§(_loc9_);
                     continue;
                  }
                  if(this.§_-I4§.§_-9W§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-4A§();
                     this.§_-TI§(_loc9_);
                     continue;
                  }
                  _loc1_.§_-o4§ &= ~b2Contact.§_-J6§;
               }
               _loc6_ = _loc2_.§_-v7§;
               _loc7_ = _loc3_.§_-v7§;
               if((_loc8_ = this.§_-pf§.§_-LO§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§_-4A§();
                  this.§_-TI§(_loc9_);
               }
               else
               {
                  _loc1_.§_-gk§(this.§_-xb§);
                  _loc1_ = _loc1_.§_-4A§();
               }
            }
         }
      }
   }
}
