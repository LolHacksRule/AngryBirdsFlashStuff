package §_-EH§
{
   import §_-Nw§.§_-vU§;
   import §_-Nw§.b2ContactPoint;
   import §_-Nw§.b2DynamicTreeBroadPhase;
   import §_-j6§.b2Contact;
   import §_-j6§.b2ContactEdge;
   import §_-j6§.b2ContactFactory;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §_-UC§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §_-2x§:§_-vU§;
      
      b2internal var §_-Al§:b2Contact;
      
      b2internal var §_-aX§:int;
      
      b2internal var §_-mB§:b2ContactFilter;
      
      b2internal var §_-oe§:b2ContactListener;
      
      b2internal var §_-QD§:b2ContactFactory;
      
      b2internal var §_-hu§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§_-aX§ = 0;
         this.§_-mB§ = b2ContactFilter.§_-Xj§;
         this.§_-oe§ = b2ContactListener.§_-Ky§;
         this.§_-QD§ = new b2ContactFactory(this.§_-hu§);
         this.§_-2x§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §_-Fu§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§_-JW§();
         while(_loc7_)
         {
            if(_loc7_.§_-og§ == _loc5_)
            {
               _loc9_ = _loc7_.§_-CT§.§_-uy§();
               _loc10_ = _loc7_.§_-CT§.§_-WC§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§_-3N§;
         }
         if(_loc6_.§_-WT§(_loc5_) == false)
         {
            return;
         }
         if(this.§_-mB§.§_-WT§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§_-QD§.§_-1Z§(_loc3_,_loc4_)).§_-uy§();
         _loc4_ = _loc8_.§_-WC§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§_-3w§ = null;
         _loc8_.§_-GH§ = this.m_world.§_-Al§;
         if(this.m_world.§_-Al§ != null)
         {
            this.m_world.§_-Al§.§_-3w§ = _loc8_;
         }
         this.m_world.§_-Al§ = _loc8_;
         _loc8_.§_-vp§.§_-CT§ = _loc8_;
         _loc8_.§_-vp§.§_-og§ = _loc6_;
         _loc8_.§_-vp§.§_-ZN§ = null;
         _loc8_.§_-vp§.§_-3N§ = _loc5_.§_-Al§;
         if(_loc5_.§_-Al§ != null)
         {
            _loc5_.§_-Al§.§_-ZN§ = _loc8_.§_-vp§;
         }
         _loc5_.§_-Al§ = _loc8_.§_-vp§;
         _loc8_.§_-kF§.§_-CT§ = _loc8_;
         _loc8_.§_-kF§.§_-og§ = _loc5_;
         _loc8_.§_-kF§.§_-ZN§ = null;
         _loc8_.§_-kF§.§_-3N§ = _loc6_.§_-Al§;
         if(_loc6_.§_-Al§ != null)
         {
            _loc6_.§_-Al§.§_-ZN§ = _loc8_.§_-kF§;
         }
         _loc6_.§_-Al§ = _loc8_.§_-kF§;
         ++this.m_world.§_-aX§;
      }
      
      public function §_-sl§() : void
      {
         this.§_-2x§.§_-xA§(this.§_-Fu§);
      }
      
      public function §else§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§_-uy§();
         var _loc3_:b2Fixture = param1.§_-WC§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§_-3n§())
         {
            this.§_-oe§.EndContact(param1);
         }
         if(param1.§_-3w§)
         {
            param1.§_-3w§.§_-GH§ = param1.§_-GH§;
         }
         if(param1.§_-GH§)
         {
            param1.§_-GH§.§_-3w§ = param1.§_-3w§;
         }
         if(param1 == this.m_world.§_-Al§)
         {
            this.m_world.§_-Al§ = param1.§_-GH§;
         }
         if(param1.§_-vp§.§_-ZN§)
         {
            param1.§_-vp§.§_-ZN§.§_-3N§ = param1.§_-vp§.§_-3N§;
         }
         if(param1.§_-vp§.§_-3N§)
         {
            param1.§_-vp§.§_-3N§.§_-ZN§ = param1.§_-vp§.§_-ZN§;
         }
         if(param1.§_-vp§ == _loc4_.§_-Al§)
         {
            _loc4_.§_-Al§ = param1.§_-vp§.§_-3N§;
         }
         if(param1.§_-kF§.§_-ZN§)
         {
            param1.§_-kF§.§_-ZN§.§_-3N§ = param1.§_-kF§.§_-3N§;
         }
         if(param1.§_-kF§.§_-3N§)
         {
            param1.§_-kF§.§_-3N§.§_-ZN§ = param1.§_-kF§.§_-ZN§;
         }
         if(param1.§_-kF§ == _loc5_.§_-Al§)
         {
            _loc5_.§_-Al§ = param1.§_-kF§.§_-3N§;
         }
         this.§_-QD§.§else§(param1);
         --this.§_-aX§;
      }
      
      public function §_-Qr§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§_-Al§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-uy§();
            _loc3_ = _loc1_.§_-WC§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§_-nc§();
            }
            else
            {
               if(_loc1_.§_-QK§ & b2Contact.§_-fI§)
               {
                  if(_loc5_.§_-WT§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-nc§();
                     this.§else§(_loc9_);
                     continue;
                  }
                  if(this.§_-mB§.§_-WT§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-nc§();
                     this.§else§(_loc9_);
                     continue;
                  }
                  _loc1_.§_-QK§ &= ~b2Contact.§_-fI§;
               }
               _loc6_ = _loc2_.§_-8T§;
               _loc7_ = _loc3_.§_-8T§;
               if((_loc8_ = this.§_-2x§.§_-4S§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§_-nc§();
                  this.§else§(_loc9_);
               }
               else
               {
                  _loc1_.§_-3c§(this.§_-oe§);
                  _loc1_ = _loc1_.§_-nc§();
               }
            }
         }
      }
   }
}
