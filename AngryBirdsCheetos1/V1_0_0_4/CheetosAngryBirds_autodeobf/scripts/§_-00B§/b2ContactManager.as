package §_-00B§
{
   import §_-Jf§.b2internal;
   import §_-Kz§.§_-n0§;
   import §_-Kz§.b2ContactPoint;
   import §_-Kz§.b2DynamicTreeBroadPhase;
   import §_-fl§.b2Contact;
   import §_-fl§.b2ContactEdge;
   import §_-fl§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §_-gg§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §get §:§_-n0§;
      
      b2internal var §_-Ew§:b2Contact;
      
      b2internal var §_-6k§:int;
      
      b2internal var §_-7Z§:b2ContactFilter;
      
      b2internal var §_-5P§:b2ContactListener;
      
      b2internal var §_-0-9§:b2ContactFactory;
      
      b2internal var §_-m7§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§_-6k§ = 0;
         this.§_-7Z§ = b2ContactFilter.§_-V6§;
         this.§_-5P§ = b2ContactListener.§_-b5§;
         this.§_-0-9§ = new b2ContactFactory(this.§_-m7§);
         this.§get § = new b2DynamicTreeBroadPhase();
      }
      
      public function §_-J3§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§_-37§();
         while(_loc7_)
         {
            if(_loc7_.§_-4o§ == _loc5_)
            {
               _loc9_ = _loc7_.§_-NB§.§_-tb§();
               _loc10_ = _loc7_.§_-NB§.§_-Ix§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§_-WK§;
         }
         if(_loc6_.§_-Sd§(_loc5_) == false)
         {
            return;
         }
         if(this.§_-7Z§.§_-Sd§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§_-0-9§.§null §(_loc3_,_loc4_)).§_-tb§();
         _loc4_ = _loc8_.§_-Ix§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§_-u6§ = null;
         _loc8_.§_-E1§ = this.m_world.§_-Ew§;
         if(this.m_world.§_-Ew§ != null)
         {
            this.m_world.§_-Ew§.§_-u6§ = _loc8_;
         }
         this.m_world.§_-Ew§ = _loc8_;
         _loc8_.§_-Ui§.§_-NB§ = _loc8_;
         _loc8_.§_-Ui§.§_-4o§ = _loc6_;
         _loc8_.§_-Ui§.§_-ey§ = null;
         _loc8_.§_-Ui§.§_-WK§ = _loc5_.§_-Ew§;
         if(_loc5_.§_-Ew§ != null)
         {
            _loc5_.§_-Ew§.§_-ey§ = _loc8_.§_-Ui§;
         }
         _loc5_.§_-Ew§ = _loc8_.§_-Ui§;
         _loc8_.§_-4J§.§_-NB§ = _loc8_;
         _loc8_.§_-4J§.§_-4o§ = _loc5_;
         _loc8_.§_-4J§.§_-ey§ = null;
         _loc8_.§_-4J§.§_-WK§ = _loc6_.§_-Ew§;
         if(_loc6_.§_-Ew§ != null)
         {
            _loc6_.§_-Ew§.§_-ey§ = _loc8_.§_-4J§;
         }
         _loc6_.§_-Ew§ = _loc8_.§_-4J§;
         ++this.m_world.§_-6k§;
      }
      
      public function §_-c4§() : void
      {
         this.§get §.§_-Nm§(this.§_-J3§);
      }
      
      public function §_-TB§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§_-tb§();
         var _loc3_:b2Fixture = param1.§_-Ix§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§_-yI§())
         {
            this.§_-5P§.EndContact(param1);
         }
         if(param1.§_-u6§)
         {
            param1.§_-u6§.§_-E1§ = param1.§_-E1§;
         }
         if(param1.§_-E1§)
         {
            param1.§_-E1§.§_-u6§ = param1.§_-u6§;
         }
         if(param1 == this.m_world.§_-Ew§)
         {
            this.m_world.§_-Ew§ = param1.§_-E1§;
         }
         if(param1.§_-Ui§.§_-ey§)
         {
            param1.§_-Ui§.§_-ey§.§_-WK§ = param1.§_-Ui§.§_-WK§;
         }
         if(param1.§_-Ui§.§_-WK§)
         {
            param1.§_-Ui§.§_-WK§.§_-ey§ = param1.§_-Ui§.§_-ey§;
         }
         if(param1.§_-Ui§ == _loc4_.§_-Ew§)
         {
            _loc4_.§_-Ew§ = param1.§_-Ui§.§_-WK§;
         }
         if(param1.§_-4J§.§_-ey§)
         {
            param1.§_-4J§.§_-ey§.§_-WK§ = param1.§_-4J§.§_-WK§;
         }
         if(param1.§_-4J§.§_-WK§)
         {
            param1.§_-4J§.§_-WK§.§_-ey§ = param1.§_-4J§.§_-ey§;
         }
         if(param1.§_-4J§ == _loc5_.§_-Ew§)
         {
            _loc5_.§_-Ew§ = param1.§_-4J§.§_-WK§;
         }
         this.§_-0-9§.§_-TB§(param1);
         --this.§_-6k§;
      }
      
      public function §_-yE§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§_-Ew§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-tb§();
            _loc3_ = _loc1_.§_-Ix§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§_-si§();
            }
            else
            {
               if(_loc1_.§_-Tw§ & b2Contact.§_-ye§)
               {
                  if(_loc5_.§_-Sd§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-si§();
                     this.§_-TB§(_loc9_);
                     continue;
                  }
                  if(this.§_-7Z§.§_-Sd§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-si§();
                     this.§_-TB§(_loc9_);
                     continue;
                  }
                  _loc1_.§_-Tw§ &= ~b2Contact.§_-ye§;
               }
               _loc6_ = _loc2_.§_-Wg§;
               _loc7_ = _loc3_.§_-Wg§;
               if((_loc8_ = this.§get §.§_-wl§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§_-si§();
                  this.§_-TB§(_loc9_);
               }
               else
               {
                  _loc1_.§_-0-8§(this.§_-5P§);
                  _loc1_ = _loc1_.§_-si§();
               }
            }
         }
      }
   }
}
