package §_-aU§
{
   import §_-0DM§.b2Contact;
   import §_-0DM§.b2ContactEdge;
   import §_-0DM§.b2ContactFactory;
   import §_-5§.b2internal;
   import §_-gE§.§_-We§;
   import §_-gE§.b2ContactPoint;
   import §_-gE§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §_-mJ§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §_-Q-§:§_-We§;
      
      b2internal var §_-4p§:b2Contact;
      
      b2internal var §_-09s§:int;
      
      b2internal var §_-K4§:b2ContactFilter;
      
      b2internal var §_-0DF§:b2ContactListener;
      
      b2internal var §_-xF§:b2ContactFactory;
      
      b2internal var §_-qZ§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§_-09s§ = 0;
         this.§_-K4§ = b2ContactFilter.§_-Rt§;
         this.§_-0DF§ = b2ContactListener.§_-p5§;
         this.§_-xF§ = new b2ContactFactory(this.§_-qZ§);
         this.§_-Q-§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §_-lj§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§_-qw§();
         while(_loc7_)
         {
            if(_loc7_.§_-TK§ == _loc5_)
            {
               _loc9_ = _loc7_.§_-20§.§_-k-§();
               _loc10_ = _loc7_.§_-20§.§_-7G§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§_-Oh§;
         }
         if(_loc6_.§_-VH§(_loc5_) == false)
         {
            return;
         }
         if(this.§_-K4§.§_-VH§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§_-xF§.§_-xb§(_loc3_,_loc4_)).§_-k-§();
         _loc4_ = _loc8_.§_-7G§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§_-021§ = null;
         _loc8_.§_-oz§ = this.m_world.§_-4p§;
         if(this.m_world.§_-4p§ != null)
         {
            this.m_world.§_-4p§.§_-021§ = _loc8_;
         }
         this.m_world.§_-4p§ = _loc8_;
         _loc8_.§_-a-§.§_-20§ = _loc8_;
         _loc8_.§_-a-§.§_-TK§ = _loc6_;
         _loc8_.§_-a-§.§_-05Y§ = null;
         _loc8_.§_-a-§.§_-Oh§ = _loc5_.§_-4p§;
         if(_loc5_.§_-4p§ != null)
         {
            _loc5_.§_-4p§.§_-05Y§ = _loc8_.§_-a-§;
         }
         _loc5_.§_-4p§ = _loc8_.§_-a-§;
         _loc8_.§_-Gh§.§_-20§ = _loc8_;
         _loc8_.§_-Gh§.§_-TK§ = _loc5_;
         _loc8_.§_-Gh§.§_-05Y§ = null;
         _loc8_.§_-Gh§.§_-Oh§ = _loc6_.§_-4p§;
         if(_loc6_.§_-4p§ != null)
         {
            _loc6_.§_-4p§.§_-05Y§ = _loc8_.§_-Gh§;
         }
         _loc6_.§_-4p§ = _loc8_.§_-Gh§;
         ++this.m_world.§_-09s§;
      }
      
      public function §_-Wx§() : void
      {
         this.§_-Q-§.§_-Mm§(this.§_-lj§);
      }
      
      public function §_-01§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§_-k-§();
         var _loc3_:b2Fixture = param1.§_-7G§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§_-bU§())
         {
            this.§_-0DF§.EndContact(param1);
         }
         if(param1.§_-021§)
         {
            param1.§_-021§.§_-oz§ = param1.§_-oz§;
         }
         if(param1.§_-oz§)
         {
            param1.§_-oz§.§_-021§ = param1.§_-021§;
         }
         if(param1 == this.m_world.§_-4p§)
         {
            this.m_world.§_-4p§ = param1.§_-oz§;
         }
         if(param1.§_-a-§.§_-05Y§)
         {
            param1.§_-a-§.§_-05Y§.§_-Oh§ = param1.§_-a-§.§_-Oh§;
         }
         if(param1.§_-a-§.§_-Oh§)
         {
            param1.§_-a-§.§_-Oh§.§_-05Y§ = param1.§_-a-§.§_-05Y§;
         }
         if(param1.§_-a-§ == _loc4_.§_-4p§)
         {
            _loc4_.§_-4p§ = param1.§_-a-§.§_-Oh§;
         }
         if(param1.§_-Gh§.§_-05Y§)
         {
            param1.§_-Gh§.§_-05Y§.§_-Oh§ = param1.§_-Gh§.§_-Oh§;
         }
         if(param1.§_-Gh§.§_-Oh§)
         {
            param1.§_-Gh§.§_-Oh§.§_-05Y§ = param1.§_-Gh§.§_-05Y§;
         }
         if(param1.§_-Gh§ == _loc5_.§_-4p§)
         {
            _loc5_.§_-4p§ = param1.§_-Gh§.§_-Oh§;
         }
         this.§_-xF§.§_-01§(param1);
         --this.§_-09s§;
      }
      
      public function §_-4P§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§_-4p§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-k-§();
            _loc3_ = _loc1_.§_-7G§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§_-02g§();
            }
            else
            {
               if(_loc1_.§_-7R§ & b2Contact.§_-b1§)
               {
                  if(_loc5_.§_-VH§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-02g§();
                     this.§_-01§(_loc9_);
                     continue;
                  }
                  if(this.§_-K4§.§_-VH§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§_-02g§();
                     this.§_-01§(_loc9_);
                     continue;
                  }
                  _loc1_.§_-7R§ &= ~b2Contact.§_-b1§;
               }
               _loc6_ = _loc2_.§_-Xg§;
               _loc7_ = _loc3_.§_-Xg§;
               if((_loc8_ = this.§_-Q-§.§_-Rd§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§_-02g§();
                  this.§_-01§(_loc9_);
               }
               else
               {
                  _loc1_.§_-Gb§(this.§_-0DF§);
                  _loc1_ = _loc1_.§_-02g§();
               }
            }
         }
      }
   }
}
