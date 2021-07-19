package §_-Iw§
{
   import §_-a5§.b2Contact;
   import §_-a5§.b2ContactEdge;
   import §_-a5§.b2ContactFactory;
   import §_-lh§.b2internal;
   import §_-qg§.§_-nW§;
   import §_-qg§.b2ContactPoint;
   import §_-qg§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §_-lW§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §_-ep§:§_-nW§;
      
      b2internal var §_-W1§:b2Contact;
      
      b2internal var §_-b7§:int;
      
      b2internal var §_-P9§:b2ContactFilter;
      
      b2internal var §_-qO§:b2ContactListener;
      
      b2internal var §_-Fx§:b2ContactFactory;
      
      b2internal var §_-sB§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§_-b7§ = 0;
         this.§_-P9§ = b2ContactFilter.§_-QX§;
         this.§_-qO§ = b2ContactListener.§_-aj§;
         this.§_-Fx§ = new b2ContactFactory(this.§_-sB§);
         this.§_-ep§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §_-Vf§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§_-Xi§();
         while(_loc7_)
         {
            if(_loc7_.§_-dr§ == _loc5_)
            {
               _loc9_ = _loc7_.§_-bX§.§_-8S§();
               _loc10_ = _loc7_.§_-bX§.§_-16§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§_-Jr§;
         }
         if(_loc6_.§_-Zp§(_loc5_) == false)
         {
            return;
         }
         if(this.§_-P9§.§_-Zp§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§_-Fx§.§_-xO§(_loc3_,_loc4_)).§_-8S§();
         _loc4_ = _loc8_.§_-16§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§_-VL§ = null;
         _loc8_.§_-NA§ = this.m_world.§_-W1§;
         if(this.m_world.§_-W1§ != null)
         {
            this.m_world.§_-W1§.§_-VL§ = _loc8_;
         }
         this.m_world.§_-W1§ = _loc8_;
         _loc8_.§_-UU§.§_-bX§ = _loc8_;
         _loc8_.§_-UU§.§_-dr§ = _loc6_;
         _loc8_.§_-UU§.§_-M0§ = null;
         _loc8_.§_-UU§.§_-Jr§ = _loc5_.§_-W1§;
         if(_loc5_.§_-W1§ != null)
         {
            _loc5_.§_-W1§.§_-M0§ = _loc8_.§_-UU§;
         }
         _loc5_.§_-W1§ = _loc8_.§_-UU§;
         _loc8_.§_-f-§.§_-bX§ = _loc8_;
         _loc8_.§_-f-§.§_-dr§ = _loc5_;
         _loc8_.§_-f-§.§_-M0§ = null;
         _loc8_.§_-f-§.§_-Jr§ = _loc6_.§_-W1§;
         if(_loc6_.§_-W1§ != null)
         {
            _loc6_.§_-W1§.§_-M0§ = _loc8_.§_-f-§;
         }
         _loc6_.§_-W1§ = _loc8_.§_-f-§;
         ++this.m_world.§_-b7§;
      }
      
      public function §_-Z6§() : void
      {
         this.§_-ep§.§_-PJ§(this.§_-Vf§);
      }
      
      public function §_-2A§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§_-8S§();
         var _loc3_:b2Fixture = param1.§_-16§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§_-ps§())
         {
            this.§_-qO§.EndContact(param1);
         }
         if(param1.§_-VL§)
         {
            param1.§_-VL§.§_-NA§ = param1.§_-NA§;
         }
         if(param1.§_-NA§)
         {
            param1.§_-NA§.§_-VL§ = param1.§_-VL§;
         }
         if(param1 == this.m_world.§_-W1§)
         {
            this.m_world.§_-W1§ = param1.§_-NA§;
         }
         if(param1.§_-UU§.§_-M0§)
         {
            param1.§_-UU§.§_-M0§.§_-Jr§ = param1.§_-UU§.§_-Jr§;
         }
         if(param1.§_-UU§.§_-Jr§)
         {
            param1.§_-UU§.§_-Jr§.§_-M0§ = param1.§_-UU§.§_-M0§;
         }
         if(param1.§_-UU§ == _loc4_.§_-W1§)
         {
            _loc4_.§_-W1§ = param1.§_-UU§.§_-Jr§;
         }
         if(param1.§_-f-§.§_-M0§)
         {
            param1.§_-f-§.§_-M0§.§_-Jr§ = param1.§_-f-§.§_-Jr§;
         }
         if(param1.§_-f-§.§_-Jr§)
         {
            param1.§_-f-§.§_-Jr§.§_-M0§ = param1.§_-f-§.§_-M0§;
         }
         if(param1.§_-f-§ == _loc5_.§_-W1§)
         {
            _loc5_.§_-W1§ = param1.§_-f-§.§_-Jr§;
         }
         this.§_-Fx§.§_-2A§(param1);
         --this.§_-b7§;
      }
      
      public function §_-ch§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§_-W1§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-8S§();
            _loc3_ = _loc1_.§_-16§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§_-tx§();
            }
            else
            {
               if(_loc1_.§_-Il§ & b2Contact.§_-cT§)
               {
                  if(_loc5_.§_-Zp§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-tx§();
                     this.§_-2A§(_loc9_);
                     continue;
                  }
                  if(this.§_-P9§.§_-Zp§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-tx§();
                     this.§_-2A§(_loc9_);
                     continue;
                  }
                  _loc1_.§_-Il§ &= ~b2Contact.§_-cT§;
               }
               _loc6_ = _loc2_.§_-ev§;
               _loc7_ = _loc3_.§_-ev§;
               if((_loc8_ = this.§_-ep§.§_-pb§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§_-tx§();
                  this.§_-2A§(_loc9_);
               }
               else
               {
                  _loc1_.§_-r-§(this.§_-qO§);
                  _loc1_ = _loc1_.§_-tx§();
               }
            }
         }
      }
   }
}
