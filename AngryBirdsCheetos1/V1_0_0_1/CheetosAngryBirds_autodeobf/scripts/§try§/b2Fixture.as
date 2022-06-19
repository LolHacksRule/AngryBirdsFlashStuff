package §try§
{
   import §_-b4§.b2internal;
   import §_-cG§.b2MassData;
   import §_-cG§.b2Shape;
   import §_-cP§.b2Math;
   import §_-cP§.b2Transform;
   import §_-cP§.b2Vec2;
   import §_-yI§.§_-2G§;
   import §_-yI§.b2AABB;
   import §_-yI§.b2RayCastInput;
   import §_-yI§.b2RayCastOutput;
   import §with§.b2Contact;
   import §with§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-JS§:b2MassData;
      
      b2internal var §_-f0§:b2AABB;
      
      b2internal var §_-J9§:Number;
      
      b2internal var §_-QK§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-k7§:b2Shape;
      
      b2internal var §_-HA§:Number;
      
      b2internal var §_-QB§:Number;
      
      b2internal var §_-j8§;
      
      b2internal var §_-sv§:b2FilterData;
      
      b2internal var §_-Ei§:Boolean;
      
      b2internal var §_-C3§;
      
      public function b2Fixture()
      {
         this.§_-sv§ = new b2FilterData();
         super();
         this.§_-f0§ = new b2AABB();
         this.§_-C3§ = null;
         this.m_body = null;
         this.§_-QK§ = null;
         this.§_-k7§ = null;
         this.§_-J9§ = 0;
         this.§_-HA§ = 0;
         this.§_-QB§ = 0;
      }
      
      public function §_-sl§() : int
      {
         return this.§_-k7§.§_-sl§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-k7§;
      }
      
      public function §_-i7§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§_-Ei§ == param1)
         {
            return;
         }
         this.§_-Ei§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-KS§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-3P§;
            _loc4_ = _loc3_.§_-79§();
            _loc5_ = _loc3_.§_-mq§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-i7§(_loc4_.§_-6i§() || _loc5_.§_-6i§());
            }
            _loc2_ = _loc2_.§_-TE§;
         }
      }
      
      public function §_-6i§() : Boolean
      {
         return this.§_-Ei§;
      }
      
      public function §_-wN§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§_-sv§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-KS§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-3P§;
            _loc4_ = _loc3_.§_-79§();
            _loc5_ = _loc3_.§_-mq§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-nM§();
            }
            _loc2_ = _loc2_.§_-TE§;
         }
      }
      
      public function §_-dl§() : b2FilterData
      {
         return this.§_-sv§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-go§() : b2Fixture
      {
         return this.§_-QK§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-C3§;
      }
      
      public function §_-N-§(param1:*) : void
      {
         this.§_-C3§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-k7§.TestPoint(this.m_body.§_-KR§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-k7§.RayCast(param1,param2,this.m_body.§_-KR§());
      }
      
      public function §_-UC§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§_-k7§.ComputeMass(param1,this.§_-J9§);
         return param1;
      }
      
      public function §_-cF§(param1:Number) : void
      {
         this.§_-J9§ = param1;
      }
      
      public function §_-mn§() : Number
      {
         return this.§_-J9§;
      }
      
      public function §_-Hy§() : Number
      {
         return this.§_-HA§;
      }
      
      public function §_-6P§(param1:Number) : void
      {
         this.§_-HA§ = param1;
      }
      
      public function §_-m2§() : Number
      {
         return this.§_-QB§;
      }
      
      public function §_-Kj§(param1:Number) : void
      {
         this.§_-QB§ = param1;
      }
      
      public function §import§() : b2AABB
      {
         return this.§_-f0§;
      }
      
      b2internal function §_-JJ§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§_-C3§ = param3.§_-MJ§;
         this.§_-HA§ = param3.friction;
         this.§_-QB§ = param3.restitution;
         this.m_body = param1;
         this.§_-QK§ = null;
         this.§_-sv§ = param3.filter.Copy();
         this.§_-Ei§ = param3.§_-p§;
         this.§_-k7§ = param3.shape.Copy();
         this.§_-J9§ = param3.density;
      }
      
      b2internal function §_-y3§() : void
      {
         this.§_-k7§ = null;
      }
      
      b2internal function §_-Kb§(param1:§_-2G§, param2:b2Transform) : void
      {
         this.§_-k7§.ComputeAABB(this.§_-f0§,param2);
         this.§_-j8§ = param1.§_-Kb§(this.§_-f0§,this);
      }
      
      b2internal function §_-ht§(param1:§_-2G§) : void
      {
         if(this.§_-j8§ == null)
         {
            return;
         }
         param1.§_-ht§(this.§_-j8§);
         this.§_-j8§ = null;
      }
      
      b2internal function §_-5d§(param1:§_-2G§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§_-j8§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§_-k7§.ComputeAABB(_loc4_,param2);
         this.§_-k7§.ComputeAABB(_loc5_,param3);
         this.§_-f0§.§_-m-§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§_-4g§(param3.position,param2.position);
         param1.§_-Aj§(this.§_-j8§,this.§_-f0§,_loc6_);
      }
   }
}
