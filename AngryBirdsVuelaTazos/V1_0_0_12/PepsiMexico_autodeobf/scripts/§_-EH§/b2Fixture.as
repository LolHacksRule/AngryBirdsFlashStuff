package §_-EH§
{
   import §_-9z§.b2Math;
   import §_-9z§.b2Transform;
   import §_-9z§.b2Vec2;
   import §_-Bt§.b2MassData;
   import §_-Bt§.b2Shape;
   import §_-Nw§.§_-vU§;
   import §_-Nw§.b2AABB;
   import §_-Nw§.b2RayCastInput;
   import §_-Nw§.b2RayCastOutput;
   import §_-j6§.b2Contact;
   import §_-j6§.b2ContactEdge;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-SC§:b2MassData;
      
      b2internal var §_-I9§:b2AABB;
      
      b2internal var §_-fe§:Number;
      
      b2internal var §_-GH§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-Oe§:b2Shape;
      
      b2internal var §_-aJ§:Number;
      
      b2internal var §_-wt§:Number;
      
      b2internal var §_-8T§;
      
      b2internal var §_-M3§:b2FilterData;
      
      b2internal var §_-NB§:Boolean;
      
      b2internal var §_-t4§;
      
      public function b2Fixture()
      {
         this.§_-M3§ = new b2FilterData();
         super();
         this.§_-I9§ = new b2AABB();
         this.§_-t4§ = null;
         this.m_body = null;
         this.§_-GH§ = null;
         this.§_-Oe§ = null;
         this.§_-fe§ = 0;
         this.§_-aJ§ = 0;
         this.§_-wt§ = 0;
      }
      
      public function §_-7L§() : int
      {
         return this.§_-Oe§.§_-7L§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-Oe§;
      }
      
      public function §_-mh§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§_-NB§ == param1)
         {
            return;
         }
         this.§_-NB§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-JW§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-CT§;
            _loc4_ = _loc3_.§_-uy§();
            _loc5_ = _loc3_.§_-WC§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-mh§(_loc4_.§_-Jr§() || _loc5_.§_-Jr§());
            }
            _loc2_ = _loc2_.§_-3N§;
         }
      }
      
      public function §_-Jr§() : Boolean
      {
         return this.§_-NB§;
      }
      
      public function §_-VI§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§_-M3§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-JW§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-CT§;
            _loc4_ = _loc3_.§_-uy§();
            _loc5_ = _loc3_.§_-WC§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-lp§();
            }
            _loc2_ = _loc2_.§_-3N§;
         }
      }
      
      public function §_-Ph§() : b2FilterData
      {
         return this.§_-M3§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-nc§() : b2Fixture
      {
         return this.§_-GH§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-t4§;
      }
      
      public function §_-wK§(param1:*) : void
      {
         this.§_-t4§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-Oe§.TestPoint(this.m_body.§return§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-Oe§.RayCast(param1,param2,this.m_body.§return§());
      }
      
      public function §_-rd§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§_-Oe§.ComputeMass(param1,this.§_-fe§);
         return param1;
      }
      
      public function §_-Bh§(param1:Number) : void
      {
         this.§_-fe§ = param1;
      }
      
      public function §_-OY§() : Number
      {
         return this.§_-fe§;
      }
      
      public function §_-2y§() : Number
      {
         return this.§_-aJ§;
      }
      
      public function §_-ZH§(param1:Number) : void
      {
         this.§_-aJ§ = param1;
      }
      
      public function §_-RA§() : Number
      {
         return this.§_-wt§;
      }
      
      public function §_-6K§(param1:Number) : void
      {
         this.§_-wt§ = param1;
      }
      
      public function §_-jF§() : b2AABB
      {
         return this.§_-I9§;
      }
      
      b2internal function §_-1Z§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§_-t4§ = param3.§_-ZT§;
         this.§_-aJ§ = param3.friction;
         this.§_-wt§ = param3.restitution;
         this.m_body = param1;
         this.§_-GH§ = null;
         this.§_-M3§ = param3.filter.Copy();
         this.§_-NB§ = param3.§_-8X§;
         this.§_-Oe§ = param3.shape.Copy();
         this.§_-fe§ = param3.density;
      }
      
      b2internal function §else§() : void
      {
         this.§_-Oe§ = null;
      }
      
      b2internal function §_-S3§(param1:§_-vU§, param2:b2Transform) : void
      {
         this.§_-Oe§.ComputeAABB(this.§_-I9§,param2);
         this.§_-8T§ = param1.§_-S3§(this.§_-I9§,this);
      }
      
      b2internal function §_-r5§(param1:§_-vU§) : void
      {
         if(this.§_-8T§ == null)
         {
            return;
         }
         param1.§_-r5§(this.§_-8T§);
         this.§_-8T§ = null;
      }
      
      b2internal function §_-Hl§(param1:§_-vU§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§_-8T§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§_-Oe§.ComputeAABB(_loc4_,param2);
         this.§_-Oe§.ComputeAABB(_loc5_,param3);
         this.§_-I9§.§_-ri§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§_-9M§(param3.position,param2.position);
         param1.§_-4G§(this.§_-8T§,this.§_-I9§,_loc6_);
      }
   }
}
