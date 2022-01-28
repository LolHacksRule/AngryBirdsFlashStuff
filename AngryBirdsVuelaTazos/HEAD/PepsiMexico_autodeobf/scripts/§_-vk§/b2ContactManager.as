package §_-vk§
{
   import §_-l7§.b2Contact;
   import §_-l7§.b2ContactEdge;
   import §_-l7§.b2ContactFactory;
   import §_-mg§.§_-Y0§;
   import §_-mg§.b2ContactPoint;
   import §_-mg§.b2DynamicTreeBroadPhase;
   import §_-rz§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §_-1X§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §_-qO§:§_-Y0§;
      
      b2internal var §_-L3§:b2Contact;
      
      b2internal var §_-aG§:int;
      
      b2internal var §_-XN§:b2ContactFilter;
      
      b2internal var §_-1P§:b2ContactListener;
      
      b2internal var §_-a5§:b2ContactFactory;
      
      b2internal var §_-PG§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§_-aG§ = 0;
         this.§_-XN§ = b2ContactFilter.§_-ZM§;
         this.§_-1P§ = b2ContactListener.§_-8v§;
         this.§_-a5§ = new b2ContactFactory(this.§_-PG§);
         this.§_-qO§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §_-Ec§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§_-ea§();
         while(_loc7_)
         {
            if(_loc7_.§_-uw§ == _loc5_)
            {
               _loc9_ = _loc7_.§_-AG§.§_-bX§();
               _loc10_ = _loc7_.§_-AG§.§_-sy§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§_-PP§;
         }
         if(_loc6_.§_-Wn§(_loc5_) == false)
         {
            return;
         }
         if(this.§_-XN§.§_-Wn§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§_-a5§.§_-gE§(_loc3_,_loc4_)).§_-bX§();
         _loc4_ = _loc8_.§_-sy§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§_-Fg§ = null;
         _loc8_.§_-np§ = this.m_world.§_-L3§;
         if(this.m_world.§_-L3§ != null)
         {
            this.m_world.§_-L3§.§_-Fg§ = _loc8_;
         }
         this.m_world.§_-L3§ = _loc8_;
         _loc8_.§_-0g§.§_-AG§ = _loc8_;
         _loc8_.§_-0g§.§_-uw§ = _loc6_;
         _loc8_.§_-0g§.§_-SO§ = null;
         _loc8_.§_-0g§.§_-PP§ = _loc5_.§_-L3§;
         if(_loc5_.§_-L3§ != null)
         {
            _loc5_.§_-L3§.§_-SO§ = _loc8_.§_-0g§;
         }
         _loc5_.§_-L3§ = _loc8_.§_-0g§;
         _loc8_.§_-X§.§_-AG§ = _loc8_;
         _loc8_.§_-X§.§_-uw§ = _loc5_;
         _loc8_.§_-X§.§_-SO§ = null;
         _loc8_.§_-X§.§_-PP§ = _loc6_.§_-L3§;
         if(_loc6_.§_-L3§ != null)
         {
            _loc6_.§_-L3§.§_-SO§ = _loc8_.§_-X§;
         }
         _loc6_.§_-L3§ = _loc8_.§_-X§;
         ++this.m_world.§_-aG§;
      }
      
      public function §_-Bk§() : void
      {
         this.§_-qO§.§_-TV§(this.§_-Ec§);
      }
      
      public function §_-6A§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§_-bX§();
         var _loc3_:b2Fixture = param1.§_-sy§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§_-gC§())
         {
            this.§_-1P§.EndContact(param1);
         }
         if(param1.§_-Fg§)
         {
            param1.§_-Fg§.§_-np§ = param1.§_-np§;
         }
         if(param1.§_-np§)
         {
            param1.§_-np§.§_-Fg§ = param1.§_-Fg§;
         }
         if(param1 == this.m_world.§_-L3§)
         {
            this.m_world.§_-L3§ = param1.§_-np§;
         }
         if(param1.§_-0g§.§_-SO§)
         {
            param1.§_-0g§.§_-SO§.§_-PP§ = param1.§_-0g§.§_-PP§;
         }
         if(param1.§_-0g§.§_-PP§)
         {
            param1.§_-0g§.§_-PP§.§_-SO§ = param1.§_-0g§.§_-SO§;
         }
         if(param1.§_-0g§ == _loc4_.§_-L3§)
         {
            _loc4_.§_-L3§ = param1.§_-0g§.§_-PP§;
         }
         if(param1.§_-X§.§_-SO§)
         {
            param1.§_-X§.§_-SO§.§_-PP§ = param1.§_-X§.§_-PP§;
         }
         if(param1.§_-X§.§_-PP§)
         {
            param1.§_-X§.§_-PP§.§_-SO§ = param1.§_-X§.§_-SO§;
         }
         if(param1.§_-X§ == _loc5_.§_-L3§)
         {
            _loc5_.§_-L3§ = param1.§_-X§.§_-PP§;
         }
         this.§_-a5§.§_-6A§(param1);
         --this.§_-aG§;
      }
      
      public function §_-yp§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§_-L3§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-bX§();
            _loc3_ = _loc1_.§_-sy§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§_-9Y§();
            }
            else
            {
               if(_loc1_.§_-xk§ & b2Contact.§_-8D§)
               {
                  if(_loc5_.§_-Wn§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-9Y§();
                     this.§_-6A§(_loc9_);
                     continue;
                  }
                  if(this.§_-XN§.§_-Wn§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-9Y§();
                     this.§_-6A§(_loc9_);
                     continue;
                  }
                  _loc1_.§_-xk§ &= ~b2Contact.§_-8D§;
               }
               _loc6_ = _loc2_.§_-ej§;
               _loc7_ = _loc3_.§_-ej§;
               if((_loc8_ = this.§_-qO§.§_-lP§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§_-9Y§();
                  this.§_-6A§(_loc9_);
               }
               else
               {
                  _loc1_.§_-Ht§(this.§_-1P§);
                  _loc1_ = _loc1_.§_-9Y§();
               }
            }
         }
      }
   }
}
