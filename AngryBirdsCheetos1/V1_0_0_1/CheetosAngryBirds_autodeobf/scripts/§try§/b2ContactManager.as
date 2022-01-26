package §try§
{
   import §_-b4§.b2internal;
   import §_-yI§.§_-2G§;
   import §_-yI§.b2ContactPoint;
   import §_-yI§.b2DynamicTreeBroadPhase;
   import §with§.b2Contact;
   import §with§.b2ContactEdge;
   import §with§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §_-RU§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §_-3t§:§_-2G§;
      
      b2internal var §_-vp§:b2Contact;
      
      b2internal var §_-V5§:int;
      
      b2internal var §_-Kq§:b2ContactFilter;
      
      b2internal var §_-2z§:b2ContactListener;
      
      b2internal var §_-0-P§:b2ContactFactory;
      
      b2internal var §_-Ts§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§_-V5§ = 0;
         this.§_-Kq§ = b2ContactFilter.§_-V7§;
         this.§_-2z§ = b2ContactListener.§_-eS§;
         this.§_-0-P§ = new b2ContactFactory(this.§_-Ts§);
         this.§_-3t§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §_-h7§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§_-KS§();
         while(_loc7_)
         {
            if(_loc7_.§_-u9§ == _loc5_)
            {
               _loc9_ = _loc7_.§_-3P§.§_-79§();
               _loc10_ = _loc7_.§_-3P§.§_-mq§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§_-TE§;
         }
         if(_loc6_.§_-hE§(_loc5_) == false)
         {
            return;
         }
         if(this.§_-Kq§.§_-hE§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§_-0-P§.§_-JJ§(_loc3_,_loc4_)).§_-79§();
         _loc4_ = _loc8_.§_-mq§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§_-o2§ = null;
         _loc8_.§_-QK§ = this.m_world.§_-vp§;
         if(this.m_world.§_-vp§ != null)
         {
            this.m_world.§_-vp§.§_-o2§ = _loc8_;
         }
         this.m_world.§_-vp§ = _loc8_;
         _loc8_.§_-Iq§.§_-3P§ = _loc8_;
         _loc8_.§_-Iq§.§_-u9§ = _loc6_;
         _loc8_.§_-Iq§.§_-0-V§ = null;
         _loc8_.§_-Iq§.§_-TE§ = _loc5_.§_-vp§;
         if(_loc5_.§_-vp§ != null)
         {
            _loc5_.§_-vp§.§_-0-V§ = _loc8_.§_-Iq§;
         }
         _loc5_.§_-vp§ = _loc8_.§_-Iq§;
         _loc8_.§_-sW§.§_-3P§ = _loc8_;
         _loc8_.§_-sW§.§_-u9§ = _loc5_;
         _loc8_.§_-sW§.§_-0-V§ = null;
         _loc8_.§_-sW§.§_-TE§ = _loc6_.§_-vp§;
         if(_loc6_.§_-vp§ != null)
         {
            _loc6_.§_-vp§.§_-0-V§ = _loc8_.§_-sW§;
         }
         _loc6_.§_-vp§ = _loc8_.§_-sW§;
         ++this.m_world.§_-V5§;
      }
      
      public function §_-Q7§() : void
      {
         this.§_-3t§.§_-Ue§(this.§_-h7§);
      }
      
      public function §_-y3§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§_-79§();
         var _loc3_:b2Fixture = param1.§_-mq§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§_-oy§())
         {
            this.§_-2z§.EndContact(param1);
         }
         if(param1.§_-o2§)
         {
            param1.§_-o2§.§_-QK§ = param1.§_-QK§;
         }
         if(param1.§_-QK§)
         {
            param1.§_-QK§.§_-o2§ = param1.§_-o2§;
         }
         if(param1 == this.m_world.§_-vp§)
         {
            this.m_world.§_-vp§ = param1.§_-QK§;
         }
         if(param1.§_-Iq§.§_-0-V§)
         {
            param1.§_-Iq§.§_-0-V§.§_-TE§ = param1.§_-Iq§.§_-TE§;
         }
         if(param1.§_-Iq§.§_-TE§)
         {
            param1.§_-Iq§.§_-TE§.§_-0-V§ = param1.§_-Iq§.§_-0-V§;
         }
         if(param1.§_-Iq§ == _loc4_.§_-vp§)
         {
            _loc4_.§_-vp§ = param1.§_-Iq§.§_-TE§;
         }
         if(param1.§_-sW§.§_-0-V§)
         {
            param1.§_-sW§.§_-0-V§.§_-TE§ = param1.§_-sW§.§_-TE§;
         }
         if(param1.§_-sW§.§_-TE§)
         {
            param1.§_-sW§.§_-TE§.§_-0-V§ = param1.§_-sW§.§_-0-V§;
         }
         if(param1.§_-sW§ == _loc5_.§_-vp§)
         {
            _loc5_.§_-vp§ = param1.§_-sW§.§_-TE§;
         }
         this.§_-0-P§.§_-y3§(param1);
         --this.§_-V5§;
      }
      
      public function §_-0-p§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§_-vp§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-79§();
            _loc3_ = _loc1_.§_-mq§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§_-go§();
            }
            else
            {
               if(_loc1_.§_-L9§ & b2Contact.§_-Ti§)
               {
                  if(_loc5_.§_-hE§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-go§();
                     this.§_-y3§(_loc9_);
                     continue;
                  }
                  if(this.§_-Kq§.§_-hE§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-go§();
                     this.§_-y3§(_loc9_);
                     continue;
                  }
                  _loc1_.§_-L9§ &= ~b2Contact.§_-Ti§;
               }
               _loc6_ = _loc2_.§_-j8§;
               _loc7_ = _loc3_.§_-j8§;
               if((_loc8_ = this.§_-3t§.§_-wT§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§_-go§();
                  this.§_-y3§(_loc9_);
               }
               else
               {
                  _loc1_.§_-cE§(this.§_-2z§);
                  _loc1_ = _loc1_.§_-go§();
               }
            }
         }
      }
   }
}
