package §_-vk§
{
   import §_-Pu§.b2MassData;
   import §_-Pu§.b2Shape;
   import §_-bA§.b2Math;
   import §_-bA§.b2Transform;
   import §_-bA§.b2Vec2;
   import §_-l7§.b2Contact;
   import §_-l7§.b2ContactEdge;
   import §_-mg§.§_-Y0§;
   import §_-mg§.b2AABB;
   import §_-mg§.b2RayCastInput;
   import §_-mg§.b2RayCastOutput;
   import §_-rz§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-9G§:b2MassData;
      
      b2internal var §_-pT§:b2AABB;
      
      b2internal var §_-JU§:Number;
      
      b2internal var §_-np§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-Vr§:b2Shape;
      
      b2internal var §_-di§:Number;
      
      b2internal var §_-ox§:Number;
      
      b2internal var §_-ej§;
      
      b2internal var §_-iv§:b2FilterData;
      
      b2internal var §_-tC§:Boolean;
      
      b2internal var §_-84§;
      
      public function b2Fixture()
      {
         this.§_-iv§ = new b2FilterData();
         super();
         this.§_-pT§ = new b2AABB();
         this.§_-84§ = null;
         this.m_body = null;
         this.§_-np§ = null;
         this.§_-Vr§ = null;
         this.§_-JU§ = 0;
         this.§_-di§ = 0;
         this.§_-ox§ = 0;
      }
      
      public function §_-Wx§() : int
      {
         return this.§_-Vr§.§_-Wx§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-Vr§;
      }
      
      public function §_-5U§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§_-tC§ == param1)
         {
            return;
         }
         this.§_-tC§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-ea§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-AG§;
            _loc4_ = _loc3_.§_-bX§();
            _loc5_ = _loc3_.§_-sy§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-5U§(_loc4_.§_-Nn§() || _loc5_.§_-Nn§());
            }
            _loc2_ = _loc2_.§_-PP§;
         }
      }
      
      public function §_-Nn§() : Boolean
      {
         return this.§_-tC§;
      }
      
      public function §_-rb§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§_-iv§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-ea§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-AG§;
            _loc4_ = _loc3_.§_-bX§();
            _loc5_ = _loc3_.§_-sy§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-HV§();
            }
            _loc2_ = _loc2_.§_-PP§;
         }
      }
      
      public function §_-mD§() : b2FilterData
      {
         return this.§_-iv§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-9Y§() : b2Fixture
      {
         return this.§_-np§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-84§;
      }
      
      public function §_-EQ§(param1:*) : void
      {
         this.§_-84§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-Vr§.TestPoint(this.m_body.§_-ow§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-Vr§.RayCast(param1,param2,this.m_body.§_-ow§());
      }
      
      public function §_-XY§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§_-Vr§.ComputeMass(param1,this.§_-JU§);
         return param1;
      }
      
      public function §_-9I§(param1:Number) : void
      {
         this.§_-JU§ = param1;
      }
      
      public function §_-V2§() : Number
      {
         return this.§_-JU§;
      }
      
      public function §_-LG§() : Number
      {
         return this.§_-di§;
      }
      
      public function §_-d3§(param1:Number) : void
      {
         this.§_-di§ = param1;
      }
      
      public function §_-VG§() : Number
      {
         return this.§_-ox§;
      }
      
      public function §_-ee§(param1:Number) : void
      {
         this.§_-ox§ = param1;
      }
      
      public function §_-Sk§() : b2AABB
      {
         return this.§_-pT§;
      }
      
      b2internal function §_-gE§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§_-84§ = param3.§_-nF§;
         this.§_-di§ = param3.friction;
         this.§_-ox§ = param3.restitution;
         this.m_body = param1;
         this.§_-np§ = null;
         this.§_-iv§ = param3.filter.Copy();
         this.§_-tC§ = param3.§_-lJ§;
         this.§_-Vr§ = param3.shape.Copy();
         this.§_-JU§ = param3.density;
      }
      
      b2internal function §_-6A§() : void
      {
         this.§_-Vr§ = null;
      }
      
      b2internal function §_-Nl§(param1:§_-Y0§, param2:b2Transform) : void
      {
         this.§_-Vr§.ComputeAABB(this.§_-pT§,param2);
         this.§_-ej§ = param1.§_-Nl§(this.§_-pT§,this);
      }
      
      b2internal function §_-Xm§(param1:§_-Y0§) : void
      {
         if(this.§_-ej§ == null)
         {
            return;
         }
         param1.§_-Xm§(this.§_-ej§);
         this.§_-ej§ = null;
      }
      
      b2internal function §_-XH§(param1:§_-Y0§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§_-ej§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§_-Vr§.ComputeAABB(_loc4_,param2);
         this.§_-Vr§.ComputeAABB(_loc5_,param3);
         this.§_-pT§.§_-9M§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§_-2E§(param3.position,param2.position);
         param1.§_-Mf§(this.§_-ej§,this.§_-pT§,_loc6_);
      }
   }
}
