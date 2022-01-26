package §_-qW§
{
   import §_-2V§.b2Contact;
   import §_-2V§.b2ContactEdge;
   import §_-8i§.b2MassData;
   import §_-8i§.b2Shape;
   import §_-SM§.b2internal;
   import §_-wZ§.§_-Of§;
   import §_-wZ§.b2AABB;
   import §_-wZ§.b2RayCastInput;
   import §_-wZ§.b2RayCastOutput;
   import §var§.b2Math;
   import §var§.b2Transform;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-eA§:b2MassData;
      
      b2internal var §_-kM§:b2AABB;
      
      b2internal var §_-AO§:Number;
      
      b2internal var §_-4b§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-Wq§:b2Shape;
      
      b2internal var §_-7v§:Number;
      
      b2internal var §_-t4§:Number;
      
      b2internal var §_-uj§;
      
      b2internal var §_-Ch§:b2FilterData;
      
      b2internal var §_-j3§:Boolean;
      
      b2internal var §_-AC§;
      
      public function b2Fixture()
      {
         this.§_-Ch§ = new b2FilterData();
         super();
         this.§_-kM§ = new b2AABB();
         this.§_-AC§ = null;
         this.m_body = null;
         this.§_-4b§ = null;
         this.§_-Wq§ = null;
         this.§_-AO§ = 0;
         this.§_-7v§ = 0;
         this.§_-t4§ = 0;
      }
      
      public function §_-kK§() : int
      {
         return this.§_-Wq§.§_-kK§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-Wq§;
      }
      
      public function §_-3l§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§_-j3§ == param1)
         {
            return;
         }
         this.§_-j3§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-VA§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-k9§;
            _loc4_ = _loc3_.§_-5M§();
            _loc5_ = _loc3_.§_-w4§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-3l§(_loc4_.§ null§() || _loc5_.§ null§());
            }
            _loc2_ = _loc2_.§_-PT§;
         }
      }
      
      public function § null§() : Boolean
      {
         return this.§_-j3§;
      }
      
      public function §_-nS§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§_-Ch§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-VA§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-k9§;
            _loc4_ = _loc3_.§_-5M§();
            _loc5_ = _loc3_.§_-w4§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-KG§();
            }
            _loc2_ = _loc2_.§_-PT§;
         }
      }
      
      public function §_-lj§() : b2FilterData
      {
         return this.§_-Ch§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-lA§() : b2Fixture
      {
         return this.§_-4b§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-AC§;
      }
      
      public function §_-WN§(param1:*) : void
      {
         this.§_-AC§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-Wq§.TestPoint(this.m_body.§_-tx§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-Wq§.RayCast(param1,param2,this.m_body.§_-tx§());
      }
      
      public function §_-A3§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§_-Wq§.ComputeMass(param1,this.§_-AO§);
         return param1;
      }
      
      public function §_-pJ§(param1:Number) : void
      {
         this.§_-AO§ = param1;
      }
      
      public function §_-Xo§() : Number
      {
         return this.§_-AO§;
      }
      
      public function §_-l-§() : Number
      {
         return this.§_-7v§;
      }
      
      public function §_-YO§(param1:Number) : void
      {
         this.§_-7v§ = param1;
      }
      
      public function §_-JL§() : Number
      {
         return this.§_-t4§;
      }
      
      public function §_-at§(param1:Number) : void
      {
         this.§_-t4§ = param1;
      }
      
      public function §_-uM§() : b2AABB
      {
         return this.§_-kM§;
      }
      
      b2internal function §_-0K§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§_-AC§ = param3.§_-mx§;
         this.§_-7v§ = param3.friction;
         this.§_-t4§ = param3.restitution;
         this.m_body = param1;
         this.§_-4b§ = null;
         this.§_-Ch§ = param3.filter.Copy();
         this.§_-j3§ = param3.§_-3T§;
         this.§_-Wq§ = param3.shape.Copy();
         this.§_-AO§ = param3.density;
      }
      
      b2internal function §_-l6§() : void
      {
         this.§_-Wq§ = null;
      }
      
      b2internal function §_-c6§(param1:§_-Of§, param2:b2Transform) : void
      {
         this.§_-Wq§.ComputeAABB(this.§_-kM§,param2);
         this.§_-uj§ = param1.§_-c6§(this.§_-kM§,this);
      }
      
      b2internal function §_-La§(param1:§_-Of§) : void
      {
         if(this.§_-uj§ == null)
         {
            return;
         }
         param1.§_-La§(this.§_-uj§);
         this.§_-uj§ = null;
      }
      
      b2internal function §_-XR§(param1:§_-Of§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§_-uj§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§_-Wq§.ComputeAABB(_loc4_,param2);
         this.§_-Wq§.ComputeAABB(_loc5_,param3);
         this.§_-kM§.§_-aw§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§_-MF§(param3.position,param2.position);
         param1.§_-sJ§(this.§_-uj§,this.§_-kM§,_loc6_);
      }
   }
}
