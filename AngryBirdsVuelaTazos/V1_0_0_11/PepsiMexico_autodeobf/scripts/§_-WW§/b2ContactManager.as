package §_-WW§
{
   import §_-cw§.b2Contact;
   import §_-cw§.b2ContactEdge;
   import §_-cw§.b2ContactFactory;
   import §_-iO§.b2internal;
   import §_-tK§.§_-S8§;
   import §_-tK§.b2ContactPoint;
   import §_-tK§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §_-B§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §_-ZV§:§_-S8§;
      
      b2internal var §_-Zv§:b2Contact;
      
      b2internal var §_-6u§:int;
      
      b2internal var §_-w2§:b2ContactFilter;
      
      b2internal var §_-cx§:b2ContactListener;
      
      b2internal var §_-jE§:b2ContactFactory;
      
      b2internal var §_-ia§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§_-6u§ = 0;
         this.§_-w2§ = b2ContactFilter.§_-P9§;
         this.§_-cx§ = b2ContactListener.§_-XE§;
         this.§_-jE§ = new b2ContactFactory(this.§_-ia§);
         this.§_-ZV§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §_-Q§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§_-s8§();
         while(_loc7_)
         {
            if(_loc7_.§_-ik§ == _loc5_)
            {
               _loc9_ = _loc7_.§_-xH§.§_-8a§();
               _loc10_ = _loc7_.§_-xH§.§_-tA§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§_-70§;
         }
         if(_loc6_.§_-GT§(_loc5_) == false)
         {
            return;
         }
         if(this.§_-w2§.§_-GT§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§_-jE§.§_-JU§(_loc3_,_loc4_)).§_-8a§();
         _loc4_ = _loc8_.§_-tA§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§_-mb§ = null;
         _loc8_.§_-Lg§ = this.m_world.§_-Zv§;
         if(this.m_world.§_-Zv§ != null)
         {
            this.m_world.§_-Zv§.§_-mb§ = _loc8_;
         }
         this.m_world.§_-Zv§ = _loc8_;
         _loc8_.§_-N3§.§_-xH§ = _loc8_;
         _loc8_.§_-N3§.§_-ik§ = _loc6_;
         _loc8_.§_-N3§.§_-Kz§ = null;
         _loc8_.§_-N3§.§_-70§ = _loc5_.§_-Zv§;
         if(_loc5_.§_-Zv§ != null)
         {
            _loc5_.§_-Zv§.§_-Kz§ = _loc8_.§_-N3§;
         }
         _loc5_.§_-Zv§ = _loc8_.§_-N3§;
         _loc8_.§_-kg§.§_-xH§ = _loc8_;
         _loc8_.§_-kg§.§_-ik§ = _loc5_;
         _loc8_.§_-kg§.§_-Kz§ = null;
         _loc8_.§_-kg§.§_-70§ = _loc6_.§_-Zv§;
         if(_loc6_.§_-Zv§ != null)
         {
            _loc6_.§_-Zv§.§_-Kz§ = _loc8_.§_-kg§;
         }
         _loc6_.§_-Zv§ = _loc8_.§_-kg§;
         ++this.m_world.§_-6u§;
      }
      
      public function §_-3F§() : void
      {
         this.§_-ZV§.§_-V8§(this.§_-Q§);
      }
      
      public function §_-Hh§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§_-8a§();
         var _loc3_:b2Fixture = param1.§_-tA§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§_-2W§())
         {
            this.§_-cx§.EndContact(param1);
         }
         if(param1.§_-mb§)
         {
            param1.§_-mb§.§_-Lg§ = param1.§_-Lg§;
         }
         if(param1.§_-Lg§)
         {
            param1.§_-Lg§.§_-mb§ = param1.§_-mb§;
         }
         if(param1 == this.m_world.§_-Zv§)
         {
            this.m_world.§_-Zv§ = param1.§_-Lg§;
         }
         if(param1.§_-N3§.§_-Kz§)
         {
            param1.§_-N3§.§_-Kz§.§_-70§ = param1.§_-N3§.§_-70§;
         }
         if(param1.§_-N3§.§_-70§)
         {
            param1.§_-N3§.§_-70§.§_-Kz§ = param1.§_-N3§.§_-Kz§;
         }
         if(param1.§_-N3§ == _loc4_.§_-Zv§)
         {
            _loc4_.§_-Zv§ = param1.§_-N3§.§_-70§;
         }
         if(param1.§_-kg§.§_-Kz§)
         {
            param1.§_-kg§.§_-Kz§.§_-70§ = param1.§_-kg§.§_-70§;
         }
         if(param1.§_-kg§.§_-70§)
         {
            param1.§_-kg§.§_-70§.§_-Kz§ = param1.§_-kg§.§_-Kz§;
         }
         if(param1.§_-kg§ == _loc5_.§_-Zv§)
         {
            _loc5_.§_-Zv§ = param1.§_-kg§.§_-70§;
         }
         this.§_-jE§.§_-Hh§(param1);
         --this.§_-6u§;
      }
      
      public function §_-Tn§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§_-Zv§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-8a§();
            _loc3_ = _loc1_.§_-tA§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§_-7P§();
            }
            else
            {
               if(_loc1_.§_-Sr§ & b2Contact.§_-wL§)
               {
                  if(_loc5_.§_-GT§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-7P§();
                     this.§_-Hh§(_loc9_);
                     continue;
                  }
                  if(this.§_-w2§.§_-GT§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-7P§();
                     this.§_-Hh§(_loc9_);
                     continue;
                  }
                  _loc1_.§_-Sr§ &= ~b2Contact.§_-wL§;
               }
               _loc6_ = _loc2_.§_-Mu§;
               _loc7_ = _loc3_.§_-Mu§;
               if((_loc8_ = this.§_-ZV§.§_-9u§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§_-7P§();
                  this.§_-Hh§(_loc9_);
               }
               else
               {
                  _loc1_.§_-XS§(this.§_-cx§);
                  _loc1_ = _loc1_.§_-7P§();
               }
            }
         }
      }
   }
}
