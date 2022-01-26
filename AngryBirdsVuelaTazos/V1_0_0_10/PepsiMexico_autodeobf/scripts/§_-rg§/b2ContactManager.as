package §_-rg§
{
   import §_-DM§.b2Contact;
   import §_-DM§.b2ContactEdge;
   import §_-DM§.b2ContactFactory;
   import §_-Et§.§_-ei§;
   import §_-Et§.b2ContactPoint;
   import §_-Et§.b2DynamicTreeBroadPhase;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §_-8r§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §_-qs§:§_-ei§;
      
      b2internal var §_-kI§:b2Contact;
      
      b2internal var §_-88§:int;
      
      b2internal var §_-Oa§:b2ContactFilter;
      
      b2internal var §_-B4§:b2ContactListener;
      
      b2internal var §_-qX§:b2ContactFactory;
      
      b2internal var §_-if§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§_-88§ = 0;
         this.§_-Oa§ = b2ContactFilter.§_-eR§;
         this.§_-B4§ = b2ContactListener.§_-TQ§;
         this.§_-qX§ = new b2ContactFactory(this.§_-if§);
         this.§_-qs§ = new b2DynamicTreeBroadPhase();
      }
      
      public function § if§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§_-c4§();
         while(_loc7_)
         {
            if(_loc7_.§_-Vi§ == _loc5_)
            {
               _loc9_ = _loc7_.§_-vb§.§_-cW§();
               _loc10_ = _loc7_.§_-vb§.§_-q-§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§_-kL§;
         }
         if(_loc6_.§_-Hz§(_loc5_) == false)
         {
            return;
         }
         if(this.§_-Oa§.§_-Hz§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§_-qX§.§_-i-§(_loc3_,_loc4_)).§_-cW§();
         _loc4_ = _loc8_.§_-q-§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§_-M9§ = null;
         _loc8_.§_-AX§ = this.m_world.§_-kI§;
         if(this.m_world.§_-kI§ != null)
         {
            this.m_world.§_-kI§.§_-M9§ = _loc8_;
         }
         this.m_world.§_-kI§ = _loc8_;
         _loc8_.§_-o2§.§_-vb§ = _loc8_;
         _loc8_.§_-o2§.§_-Vi§ = _loc6_;
         _loc8_.§_-o2§.§_-tH§ = null;
         _loc8_.§_-o2§.§_-kL§ = _loc5_.§_-kI§;
         if(_loc5_.§_-kI§ != null)
         {
            _loc5_.§_-kI§.§_-tH§ = _loc8_.§_-o2§;
         }
         _loc5_.§_-kI§ = _loc8_.§_-o2§;
         _loc8_.§_-L9§.§_-vb§ = _loc8_;
         _loc8_.§_-L9§.§_-Vi§ = _loc5_;
         _loc8_.§_-L9§.§_-tH§ = null;
         _loc8_.§_-L9§.§_-kL§ = _loc6_.§_-kI§;
         if(_loc6_.§_-kI§ != null)
         {
            _loc6_.§_-kI§.§_-tH§ = _loc8_.§_-L9§;
         }
         _loc6_.§_-kI§ = _loc8_.§_-L9§;
         ++this.m_world.§_-88§;
      }
      
      public function §_-hD§() : void
      {
         this.§_-qs§.§_-Og§(this.§ if§);
      }
      
      public function §_-1m§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§_-cW§();
         var _loc3_:b2Fixture = param1.§_-q-§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§_-fg§())
         {
            this.§_-B4§.EndContact(param1);
         }
         if(param1.§_-M9§)
         {
            param1.§_-M9§.§_-AX§ = param1.§_-AX§;
         }
         if(param1.§_-AX§)
         {
            param1.§_-AX§.§_-M9§ = param1.§_-M9§;
         }
         if(param1 == this.m_world.§_-kI§)
         {
            this.m_world.§_-kI§ = param1.§_-AX§;
         }
         if(param1.§_-o2§.§_-tH§)
         {
            param1.§_-o2§.§_-tH§.§_-kL§ = param1.§_-o2§.§_-kL§;
         }
         if(param1.§_-o2§.§_-kL§)
         {
            param1.§_-o2§.§_-kL§.§_-tH§ = param1.§_-o2§.§_-tH§;
         }
         if(param1.§_-o2§ == _loc4_.§_-kI§)
         {
            _loc4_.§_-kI§ = param1.§_-o2§.§_-kL§;
         }
         if(param1.§_-L9§.§_-tH§)
         {
            param1.§_-L9§.§_-tH§.§_-kL§ = param1.§_-L9§.§_-kL§;
         }
         if(param1.§_-L9§.§_-kL§)
         {
            param1.§_-L9§.§_-kL§.§_-tH§ = param1.§_-L9§.§_-tH§;
         }
         if(param1.§_-L9§ == _loc5_.§_-kI§)
         {
            _loc5_.§_-kI§ = param1.§_-L9§.§_-kL§;
         }
         this.§_-qX§.§_-1m§(param1);
         --this.§_-88§;
      }
      
      public function §_-4z§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§_-kI§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-cW§();
            _loc3_ = _loc1_.§_-q-§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§_-mR§();
            }
            else
            {
               if(_loc1_.§_-2F§ & b2Contact.§_-FE§)
               {
                  if(_loc5_.§_-Hz§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-mR§();
                     this.§_-1m§(_loc9_);
                     continue;
                  }
                  if(this.§_-Oa§.§_-Hz§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-mR§();
                     this.§_-1m§(_loc9_);
                     continue;
                  }
                  _loc1_.§_-2F§ &= ~b2Contact.§_-FE§;
               }
               _loc6_ = _loc2_.§_-d8§;
               _loc7_ = _loc3_.§_-d8§;
               if((_loc8_ = this.§_-qs§.§_-e2§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§_-mR§();
                  this.§_-1m§(_loc9_);
               }
               else
               {
                  _loc1_.§_-gI§(this.§_-B4§);
                  _loc1_ = _loc1_.§_-mR§();
               }
            }
         }
      }
   }
}
