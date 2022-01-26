package §_-qW§
{
   import §_-2V§.b2Contact;
   import §_-2V§.b2ContactEdge;
   import §_-2V§.b2ContactFactory;
   import §_-SM§.b2internal;
   import §_-wZ§.§_-Of§;
   import §_-wZ§.b2ContactPoint;
   import §_-wZ§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §for §:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §_-XD§:§_-Of§;
      
      b2internal var §_-EI§:b2Contact;
      
      b2internal var §_-kN§:int;
      
      b2internal var §_-8k§:b2ContactFilter;
      
      b2internal var §_-v5§:b2ContactListener;
      
      b2internal var §_-Em§:b2ContactFactory;
      
      b2internal var §_-DO§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§_-kN§ = 0;
         this.§_-8k§ = b2ContactFilter.§_-ai§;
         this.§_-v5§ = b2ContactListener.§_-b7§;
         this.§_-Em§ = new b2ContactFactory(this.§_-DO§);
         this.§_-XD§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §_-Qq§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§_-VA§();
         while(_loc7_)
         {
            if(_loc7_.§_-r7§ == _loc5_)
            {
               _loc9_ = _loc7_.§_-k9§.§_-5M§();
               _loc10_ = _loc7_.§_-k9§.§_-w4§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§_-PT§;
         }
         if(_loc6_.§_-ah§(_loc5_) == false)
         {
            return;
         }
         if(this.§_-8k§.§_-ah§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§_-Em§.§_-0K§(_loc3_,_loc4_)).§_-5M§();
         _loc4_ = _loc8_.§_-w4§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§_-ft§ = null;
         _loc8_.§_-4b§ = this.m_world.§_-EI§;
         if(this.m_world.§_-EI§ != null)
         {
            this.m_world.§_-EI§.§_-ft§ = _loc8_;
         }
         this.m_world.§_-EI§ = _loc8_;
         _loc8_.§_-c2§.§_-k9§ = _loc8_;
         _loc8_.§_-c2§.§_-r7§ = _loc6_;
         _loc8_.§_-c2§.§_-6c§ = null;
         _loc8_.§_-c2§.§_-PT§ = _loc5_.§_-EI§;
         if(_loc5_.§_-EI§ != null)
         {
            _loc5_.§_-EI§.§_-6c§ = _loc8_.§_-c2§;
         }
         _loc5_.§_-EI§ = _loc8_.§_-c2§;
         _loc8_.§_-5w§.§_-k9§ = _loc8_;
         _loc8_.§_-5w§.§_-r7§ = _loc5_;
         _loc8_.§_-5w§.§_-6c§ = null;
         _loc8_.§_-5w§.§_-PT§ = _loc6_.§_-EI§;
         if(_loc6_.§_-EI§ != null)
         {
            _loc6_.§_-EI§.§_-6c§ = _loc8_.§_-5w§;
         }
         _loc6_.§_-EI§ = _loc8_.§_-5w§;
         ++this.m_world.§_-kN§;
      }
      
      public function §_-zU§() : void
      {
         this.§_-XD§.§_-XH§(this.§_-Qq§);
      }
      
      public function §_-l6§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§_-5M§();
         var _loc3_:b2Fixture = param1.§_-w4§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§_-m5§())
         {
            this.§_-v5§.EndContact(param1);
         }
         if(param1.§_-ft§)
         {
            param1.§_-ft§.§_-4b§ = param1.§_-4b§;
         }
         if(param1.§_-4b§)
         {
            param1.§_-4b§.§_-ft§ = param1.§_-ft§;
         }
         if(param1 == this.m_world.§_-EI§)
         {
            this.m_world.§_-EI§ = param1.§_-4b§;
         }
         if(param1.§_-c2§.§_-6c§)
         {
            param1.§_-c2§.§_-6c§.§_-PT§ = param1.§_-c2§.§_-PT§;
         }
         if(param1.§_-c2§.§_-PT§)
         {
            param1.§_-c2§.§_-PT§.§_-6c§ = param1.§_-c2§.§_-6c§;
         }
         if(param1.§_-c2§ == _loc4_.§_-EI§)
         {
            _loc4_.§_-EI§ = param1.§_-c2§.§_-PT§;
         }
         if(param1.§_-5w§.§_-6c§)
         {
            param1.§_-5w§.§_-6c§.§_-PT§ = param1.§_-5w§.§_-PT§;
         }
         if(param1.§_-5w§.§_-PT§)
         {
            param1.§_-5w§.§_-PT§.§_-6c§ = param1.§_-5w§.§_-6c§;
         }
         if(param1.§_-5w§ == _loc5_.§_-EI§)
         {
            _loc5_.§_-EI§ = param1.§_-5w§.§_-PT§;
         }
         this.§_-Em§.§_-l6§(param1);
         --this.§_-kN§;
      }
      
      public function §_-dP§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§_-EI§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-5M§();
            _loc3_ = _loc1_.§_-w4§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§_-lA§();
            }
            else
            {
               if(_loc1_.§_-X3§ & b2Contact.§_-3U§)
               {
                  if(_loc5_.§_-ah§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-lA§();
                     this.§_-l6§(_loc9_);
                     continue;
                  }
                  if(this.§_-8k§.§_-ah§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-lA§();
                     this.§_-l6§(_loc9_);
                     continue;
                  }
                  _loc1_.§_-X3§ &= ~b2Contact.§_-3U§;
               }
               _loc6_ = _loc2_.§_-uj§;
               _loc7_ = _loc3_.§_-uj§;
               if((_loc8_ = this.§_-XD§.§_-db§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§_-lA§();
                  this.§_-l6§(_loc9_);
               }
               else
               {
                  _loc1_.§_-IM§(this.§_-v5§);
                  _loc1_ = _loc1_.§_-lA§();
               }
            }
         }
      }
   }
}
