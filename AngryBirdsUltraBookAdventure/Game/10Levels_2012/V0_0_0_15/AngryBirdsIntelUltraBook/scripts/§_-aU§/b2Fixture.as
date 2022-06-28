package §_-aU§
{
   import §_-03n§.b2MassData;
   import §_-03n§.b2Shape;
   import §_-0DM§.b2Contact;
   import §_-0DM§.b2ContactEdge;
   import §_-5§.b2internal;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Transform;
   import §_-Yp§.b2Vec2;
   import §_-gE§.§_-We§;
   import §_-gE§.b2AABB;
   import §_-gE§.b2RayCastInput;
   import §_-gE§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-zG§:b2MassData;
      
      b2internal var §_-bn§:b2AABB;
      
      b2internal var §_-9C§:Number;
      
      b2internal var §_-oz§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-JV§:b2Shape;
      
      b2internal var §_-ns§:Number;
      
      b2internal var §_-O9§:Number;
      
      b2internal var §_-Xg§;
      
      b2internal var §_-Qj§:b2FilterData;
      
      b2internal var §_-n9§:Boolean;
      
      b2internal var §_-oP§;
      
      public function b2Fixture()
      {
         this.§_-Qj§ = new b2FilterData();
         super();
         this.§_-bn§ = new b2AABB();
         this.§_-oP§ = null;
         this.m_body = null;
         this.§_-oz§ = null;
         this.§_-JV§ = null;
         this.§_-9C§ = 0;
         this.§_-ns§ = 0;
         this.§_-O9§ = 0;
      }
      
      public function §_-oF§() : int
      {
         return this.§_-JV§.§_-oF§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-JV§;
      }
      
      public function §_-Jq§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§_-n9§ == param1)
         {
            return;
         }
         this.§_-n9§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-qw§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-20§;
            _loc4_ = _loc3_.§_-k-§();
            _loc5_ = _loc3_.§_-7G§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-Jq§(_loc4_.§_-07V§() || _loc5_.§_-07V§());
            }
            _loc2_ = _loc2_.§_-Oh§;
         }
      }
      
      public function §_-07V§() : Boolean
      {
         return this.§_-n9§;
      }
      
      public function §_-fL§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§_-Qj§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-qw§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-20§;
            _loc4_ = _loc3_.§_-k-§();
            _loc5_ = _loc3_.§_-7G§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-FN§();
            }
            _loc2_ = _loc2_.§_-Oh§;
         }
      }
      
      public function §_-et§() : b2FilterData
      {
         return this.§_-Qj§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-02g§() : b2Fixture
      {
         return this.§_-oz§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-oP§;
      }
      
      public function §_-zJ§(param1:*) : void
      {
         this.§_-oP§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-JV§.TestPoint(this.m_body.§_-tg§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-JV§.RayCast(param1,param2,this.m_body.§_-tg§());
      }
      
      public function §_-N5§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§_-JV§.ComputeMass(param1,this.§_-9C§);
         return param1;
      }
      
      public function §_-xg§(param1:Number) : void
      {
         this.§_-9C§ = param1;
      }
      
      public function §_-G-§() : Number
      {
         return this.§_-9C§;
      }
      
      public function §_-8c§() : Number
      {
         return this.§_-ns§;
      }
      
      public function §_-04G§(param1:Number) : void
      {
         this.§_-ns§ = param1;
      }
      
      public function §_-LZ§() : Number
      {
         return this.§_-O9§;
      }
      
      public function §_-in§(param1:Number) : void
      {
         this.§_-O9§ = param1;
      }
      
      public function override() : b2AABB
      {
         return this.§_-bn§;
      }
      
      b2internal function §_-xb§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§_-oP§ = param3.§_-05u§;
         this.§_-ns§ = param3.friction;
         this.§_-O9§ = param3.restitution;
         this.m_body = param1;
         this.§_-oz§ = null;
         this.§_-Qj§ = param3.filter.Copy();
         this.§_-n9§ = param3.§_-bz§;
         this.§_-JV§ = param3.shape.Copy();
         this.§_-9C§ = param3.density;
      }
      
      b2internal function §_-01§() : void
      {
         this.§_-JV§ = null;
      }
      
      b2internal function §_-7Y§(param1:§_-We§, param2:b2Transform) : void
      {
         this.§_-JV§.ComputeAABB(this.§_-bn§,param2);
         this.§_-Xg§ = param1.§_-7Y§(this.§_-bn§,this);
      }
      
      b2internal function §_-yw§(param1:§_-We§) : void
      {
         if(this.§_-Xg§ == null)
         {
            return;
         }
         param1.§_-yw§(this.§_-Xg§);
         this.§_-Xg§ = null;
      }
      
      b2internal function §_-OO§(param1:§_-We§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§_-Xg§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§_-JV§.ComputeAABB(_loc4_,param2);
         this.§_-JV§.ComputeAABB(_loc5_,param3);
         this.§_-bn§.§_-WW§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§_-DO§(param3.position,param2.position);
         param1.§_-BG§(this.§_-Xg§,this.§_-bn§,_loc6_);
      }
   }
}
