package §_-43§
{
   import § if§.b2MassData;
   import § if§.b2Shape;
   import §_-F2§.b2Math;
   import §_-F2§.b2Transform;
   import §_-F2§.b2Vec2;
   import §_-Jx§.§_-e1§;
   import §_-Jx§.b2AABB;
   import §_-Jx§.b2RayCastInput;
   import §_-Jx§.b2RayCastOutput;
   import §_-ZX§.b2Contact;
   import §_-ZX§.b2ContactEdge;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-Gc§:b2MassData;
      
      b2internal var §_-Kh§:b2AABB;
      
      b2internal var §_-RN§:Number;
      
      b2internal var §_-4N§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-s1§:b2Shape;
      
      b2internal var §_-H5§:Number;
      
      b2internal var §_-Uz§:Number;
      
      b2internal var §_-v7§;
      
      b2internal var §_-BY§:b2FilterData;
      
      b2internal var §_-Mb§:Boolean;
      
      b2internal var §_-Kp§;
      
      public function b2Fixture()
      {
         this.§_-BY§ = new b2FilterData();
         super();
         this.§_-Kh§ = new b2AABB();
         this.§_-Kp§ = null;
         this.m_body = null;
         this.§_-4N§ = null;
         this.§_-s1§ = null;
         this.§_-RN§ = 0;
         this.§_-H5§ = 0;
         this.§_-Uz§ = 0;
      }
      
      public function §_-cT§() : int
      {
         return this.§_-s1§.§_-cT§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-s1§;
      }
      
      public function §_-Q2§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§_-Mb§ == param1)
         {
            return;
         }
         this.§_-Mb§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-sA§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-50§;
            _loc4_ = _loc3_.§_-ml§();
            _loc5_ = _loc3_.§_-s9§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-Q2§(_loc4_.§_-wi§() || _loc5_.§_-wi§());
            }
            _loc2_ = _loc2_.§_-Rk§;
         }
      }
      
      public function §_-wi§() : Boolean
      {
         return this.§_-Mb§;
      }
      
      public function §_-0-C§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§_-BY§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-sA§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-50§;
            _loc4_ = _loc3_.§_-ml§();
            _loc5_ = _loc3_.§_-s9§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-0-5§();
            }
            _loc2_ = _loc2_.§_-Rk§;
         }
      }
      
      public function §_-da§() : b2FilterData
      {
         return this.§_-BY§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-4A§() : b2Fixture
      {
         return this.§_-4N§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-Kp§;
      }
      
      public function §_-CM§(param1:*) : void
      {
         this.§_-Kp§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-s1§.TestPoint(this.m_body.§_-lD§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-s1§.RayCast(param1,param2,this.m_body.§_-lD§());
      }
      
      public function §_-Zx§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§_-s1§.ComputeMass(param1,this.§_-RN§);
         return param1;
      }
      
      public function §_-vh§(param1:Number) : void
      {
         this.§_-RN§ = param1;
      }
      
      public function §_-Xa§() : Number
      {
         return this.§_-RN§;
      }
      
      public function §_-P3§() : Number
      {
         return this.§_-H5§;
      }
      
      public function §_-hl§(param1:Number) : void
      {
         this.§_-H5§ = param1;
      }
      
      public function §_-Uc§() : Number
      {
         return this.§_-Uz§;
      }
      
      public function §_-rI§(param1:Number) : void
      {
         this.§_-Uz§ = param1;
      }
      
      public function §_-Ab§() : b2AABB
      {
         return this.§_-Kh§;
      }
      
      b2internal function §_-6l§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§_-Kp§ = param3.§_-eL§;
         this.§_-H5§ = param3.friction;
         this.§_-Uz§ = param3.restitution;
         this.m_body = param1;
         this.§_-4N§ = null;
         this.§_-BY§ = param3.filter.Copy();
         this.§_-Mb§ = param3.§_-Xn§;
         this.§_-s1§ = param3.shape.Copy();
         this.§_-RN§ = param3.density;
      }
      
      b2internal function §_-TI§() : void
      {
         this.§_-s1§ = null;
      }
      
      b2internal function §_-Pw§(param1:§_-e1§, param2:b2Transform) : void
      {
         this.§_-s1§.ComputeAABB(this.§_-Kh§,param2);
         this.§_-v7§ = param1.§_-Pw§(this.§_-Kh§,this);
      }
      
      b2internal function §_-fe§(param1:§_-e1§) : void
      {
         if(this.§_-v7§ == null)
         {
            return;
         }
         param1.§_-fe§(this.§_-v7§);
         this.§_-v7§ = null;
      }
      
      b2internal function §_-vu§(param1:§_-e1§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§_-v7§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§_-s1§.ComputeAABB(_loc4_,param2);
         this.§_-s1§.ComputeAABB(_loc5_,param3);
         this.§_-Kh§.§_-Vn§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§_-Pq§(param3.position,param2.position);
         param1.§_-E2§(this.§_-v7§,this.§_-Kh§,_loc6_);
      }
   }
}
