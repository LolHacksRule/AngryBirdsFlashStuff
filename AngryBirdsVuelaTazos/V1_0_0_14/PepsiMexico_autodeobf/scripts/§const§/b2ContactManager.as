package §const§
{
   import §_-K2§.b2Contact;
   import §_-K2§.b2ContactEdge;
   import §_-K2§.b2ContactFactory;
   import §_-bW§.b2internal;
   import §_-iw§.§_-T5§;
   import §_-iw§.b2ContactPoint;
   import §_-iw§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §_-lz§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §_-Oa§:§_-T5§;
      
      b2internal var §_-z-§:b2Contact;
      
      b2internal var §_-LQ§:int;
      
      b2internal var §_-PA§:b2ContactFilter;
      
      b2internal var §_-eN§:b2ContactListener;
      
      b2internal var §_-LC§:b2ContactFactory;
      
      b2internal var §_-cp§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§_-LQ§ = 0;
         this.§_-PA§ = b2ContactFilter.§default§;
         this.§_-eN§ = b2ContactListener.§_-b8§;
         this.§_-LC§ = new b2ContactFactory(this.§_-cp§);
         this.§_-Oa§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §_-Pu§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§_-x3§();
         while(_loc7_)
         {
            if(_loc7_.§_-Z3§ == _loc5_)
            {
               _loc9_ = _loc7_.§_-Mc§.§_-IQ§();
               _loc10_ = _loc7_.§_-Mc§.§_-6f§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§_-Q2§;
         }
         if(_loc6_.§_-dd§(_loc5_) == false)
         {
            return;
         }
         if(this.§_-PA§.§_-dd§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§_-LC§.§_-mA§(_loc3_,_loc4_)).§_-IQ§();
         _loc4_ = _loc8_.§_-6f§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§_-nr§ = null;
         _loc8_.§_-1k§ = this.m_world.§_-z-§;
         if(this.m_world.§_-z-§ != null)
         {
            this.m_world.§_-z-§.§_-nr§ = _loc8_;
         }
         this.m_world.§_-z-§ = _loc8_;
         _loc8_.§_-yh§.§_-Mc§ = _loc8_;
         _loc8_.§_-yh§.§_-Z3§ = _loc6_;
         _loc8_.§_-yh§.§_-zv§ = null;
         _loc8_.§_-yh§.§_-Q2§ = _loc5_.§_-z-§;
         if(_loc5_.§_-z-§ != null)
         {
            _loc5_.§_-z-§.§_-zv§ = _loc8_.§_-yh§;
         }
         _loc5_.§_-z-§ = _loc8_.§_-yh§;
         _loc8_.§_-hV§.§_-Mc§ = _loc8_;
         _loc8_.§_-hV§.§_-Z3§ = _loc5_;
         _loc8_.§_-hV§.§_-zv§ = null;
         _loc8_.§_-hV§.§_-Q2§ = _loc6_.§_-z-§;
         if(_loc6_.§_-z-§ != null)
         {
            _loc6_.§_-z-§.§_-zv§ = _loc8_.§_-hV§;
         }
         _loc6_.§_-z-§ = _loc8_.§_-hV§;
         ++this.m_world.§_-LQ§;
      }
      
      public function §_-08§() : void
      {
         this.§_-Oa§.§_-gh§(this.§_-Pu§);
      }
      
      public function §_-T9§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§_-IQ§();
         var _loc3_:b2Fixture = param1.§_-6f§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§_-i9§())
         {
            this.§_-eN§.EndContact(param1);
         }
         if(param1.§_-nr§)
         {
            param1.§_-nr§.§_-1k§ = param1.§_-1k§;
         }
         if(param1.§_-1k§)
         {
            param1.§_-1k§.§_-nr§ = param1.§_-nr§;
         }
         if(param1 == this.m_world.§_-z-§)
         {
            this.m_world.§_-z-§ = param1.§_-1k§;
         }
         if(param1.§_-yh§.§_-zv§)
         {
            param1.§_-yh§.§_-zv§.§_-Q2§ = param1.§_-yh§.§_-Q2§;
         }
         if(param1.§_-yh§.§_-Q2§)
         {
            param1.§_-yh§.§_-Q2§.§_-zv§ = param1.§_-yh§.§_-zv§;
         }
         if(param1.§_-yh§ == _loc4_.§_-z-§)
         {
            _loc4_.§_-z-§ = param1.§_-yh§.§_-Q2§;
         }
         if(param1.§_-hV§.§_-zv§)
         {
            param1.§_-hV§.§_-zv§.§_-Q2§ = param1.§_-hV§.§_-Q2§;
         }
         if(param1.§_-hV§.§_-Q2§)
         {
            param1.§_-hV§.§_-Q2§.§_-zv§ = param1.§_-hV§.§_-zv§;
         }
         if(param1.§_-hV§ == _loc5_.§_-z-§)
         {
            _loc5_.§_-z-§ = param1.§_-hV§.§_-Q2§;
         }
         this.§_-LC§.§_-T9§(param1);
         --this.§_-LQ§;
      }
      
      public function §_-IA§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§_-z-§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-IQ§();
            _loc3_ = _loc1_.§_-6f§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§_-e4§();
            }
            else
            {
               if(_loc1_.§_-rY§ & b2Contact.§_-w1§)
               {
                  if(_loc5_.§_-dd§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-e4§();
                     this.§_-T9§(_loc9_);
                     continue;
                  }
                  if(this.§_-PA§.§_-dd§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-e4§();
                     this.§_-T9§(_loc9_);
                     continue;
                  }
                  _loc1_.§_-rY§ &= ~b2Contact.§_-w1§;
               }
               _loc6_ = _loc2_.§_-8I§;
               _loc7_ = _loc3_.§_-8I§;
               if((_loc8_ = this.§_-Oa§.§_-va§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§_-e4§();
                  this.§_-T9§(_loc9_);
               }
               else
               {
                  _loc1_.§_-Fw§(this.§_-eN§);
                  _loc1_ = _loc1_.§_-e4§();
               }
            }
         }
      }
   }
}
