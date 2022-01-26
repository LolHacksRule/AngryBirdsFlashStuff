package §_-00B§
{
   import §_-Jf§.b2internal;
   import §_-Kz§.§_-n0§;
   import §_-Kz§.b2AABB;
   import §_-Kz§.b2RayCastInput;
   import §_-Kz§.b2RayCastOutput;
   import §_-OY§.b2MassData;
   import §_-OY§.b2Shape;
   import §_-Vn§.b2Math;
   import §_-Vn§.b2Transform;
   import §_-Vn§.b2Vec2;
   import §_-fl§.b2Contact;
   import §_-fl§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-g9§:b2MassData;
      
      b2internal var §_-Nk§:b2AABB;
      
      b2internal var §_-0-m§:Number;
      
      b2internal var §_-E1§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-2G§:b2Shape;
      
      b2internal var §_-es§:Number;
      
      b2internal var §_-Nb§:Number;
      
      b2internal var §_-Wg§;
      
      b2internal var §_-7B§:b2FilterData;
      
      b2internal var §_-Q0§:Boolean;
      
      b2internal var §_-uF§;
      
      public function b2Fixture()
      {
         this.§_-7B§ = new b2FilterData();
         super();
         this.§_-Nk§ = new b2AABB();
         this.§_-uF§ = null;
         this.m_body = null;
         this.§_-E1§ = null;
         this.§_-2G§ = null;
         this.§_-0-m§ = 0;
         this.§_-es§ = 0;
         this.§_-Nb§ = 0;
      }
      
      public function §_-n§() : int
      {
         return this.§_-2G§.§_-n§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-2G§;
      }
      
      public function §_-tu§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§_-Q0§ == param1)
         {
            return;
         }
         this.§_-Q0§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-37§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-NB§;
            _loc4_ = _loc3_.§_-tb§();
            _loc5_ = _loc3_.§_-Ix§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-tu§(_loc4_.§_-z0§() || _loc5_.§_-z0§());
            }
            _loc2_ = _loc2_.§_-WK§;
         }
      }
      
      public function §_-z0§() : Boolean
      {
         return this.§_-Q0§;
      }
      
      public function §_-Na§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§_-7B§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-37§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-NB§;
            _loc4_ = _loc3_.§_-tb§();
            _loc5_ = _loc3_.§_-Ix§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-SC§();
            }
            _loc2_ = _loc2_.§_-WK§;
         }
      }
      
      public function §const§() : b2FilterData
      {
         return this.§_-7B§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-si§() : b2Fixture
      {
         return this.§_-E1§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-uF§;
      }
      
      public function §_-aa§(param1:*) : void
      {
         this.§_-uF§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-2G§.TestPoint(this.m_body.§_-fs§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-2G§.RayCast(param1,param2,this.m_body.§_-fs§());
      }
      
      public function §_-e9§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§_-2G§.ComputeMass(param1,this.§_-0-m§);
         return param1;
      }
      
      public function §_-1D§(param1:Number) : void
      {
         this.§_-0-m§ = param1;
      }
      
      public function §_-nc§() : Number
      {
         return this.§_-0-m§;
      }
      
      public function §_-n7§() : Number
      {
         return this.§_-es§;
      }
      
      public function §_-Xw§(param1:Number) : void
      {
         this.§_-es§ = param1;
      }
      
      public function §_-IK§() : Number
      {
         return this.§_-Nb§;
      }
      
      public function §_-9H§(param1:Number) : void
      {
         this.§_-Nb§ = param1;
      }
      
      public function §_-r0§() : b2AABB
      {
         return this.§_-Nk§;
      }
      
      b2internal function §null §(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§_-uF§ = param3.§_-FA§;
         this.§_-es§ = param3.friction;
         this.§_-Nb§ = param3.restitution;
         this.m_body = param1;
         this.§_-E1§ = null;
         this.§_-7B§ = param3.filter.Copy();
         this.§_-Q0§ = param3.§_-Ml§;
         this.§_-2G§ = param3.shape.Copy();
         this.§_-0-m§ = param3.density;
      }
      
      b2internal function §_-TB§() : void
      {
         this.§_-2G§ = null;
      }
      
      b2internal function §_-00b§(param1:§_-n0§, param2:b2Transform) : void
      {
         this.§_-2G§.ComputeAABB(this.§_-Nk§,param2);
         this.§_-Wg§ = param1.§_-00b§(this.§_-Nk§,this);
      }
      
      b2internal function §_-XN§(param1:§_-n0§) : void
      {
         if(this.§_-Wg§ == null)
         {
            return;
         }
         param1.§_-XN§(this.§_-Wg§);
         this.§_-Wg§ = null;
      }
      
      b2internal function §_-0o§(param1:§_-n0§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§_-Wg§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§_-2G§.ComputeAABB(_loc4_,param2);
         this.§_-2G§.ComputeAABB(_loc5_,param3);
         this.§_-Nk§.§_-ww§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§_-FN§(param3.position,param2.position);
         param1.§_-7g§(this.§_-Wg§,this.§_-Nk§,_loc6_);
      }
   }
}
