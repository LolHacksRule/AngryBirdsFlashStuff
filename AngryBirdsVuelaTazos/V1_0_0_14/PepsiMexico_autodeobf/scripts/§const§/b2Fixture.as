package §const§
{
   import §_-4n§.b2Math;
   import §_-4n§.b2Transform;
   import §_-4n§.b2Vec2;
   import §_-K2§.b2Contact;
   import §_-K2§.b2ContactEdge;
   import §_-bW§.b2internal;
   import §_-iw§.§_-T5§;
   import §_-iw§.b2AABB;
   import §_-iw§.b2RayCastInput;
   import §_-iw§.b2RayCastOutput;
   import §_-yJ§.b2MassData;
   import §_-yJ§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-N-§:b2MassData;
      
      b2internal var §_-T7§:b2AABB;
      
      b2internal var §_-aC§:Number;
      
      b2internal var §_-1k§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-RE§:b2Shape;
      
      b2internal var §_-kH§:Number;
      
      b2internal var §_-zm§:Number;
      
      b2internal var §_-8I§;
      
      b2internal var §_-u9§:b2FilterData;
      
      b2internal var §_-PQ§:Boolean;
      
      b2internal var §_-7f§;
      
      public function b2Fixture()
      {
         this.§_-u9§ = new b2FilterData();
         super();
         this.§_-T7§ = new b2AABB();
         this.§_-7f§ = null;
         this.m_body = null;
         this.§_-1k§ = null;
         this.§_-RE§ = null;
         this.§_-aC§ = 0;
         this.§_-kH§ = 0;
         this.§_-zm§ = 0;
      }
      
      public function §_-hZ§() : int
      {
         return this.§_-RE§.§_-hZ§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-RE§;
      }
      
      public function §_-ij§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§_-PQ§ == param1)
         {
            return;
         }
         this.§_-PQ§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-x3§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-Mc§;
            _loc4_ = _loc3_.§_-IQ§();
            _loc5_ = _loc3_.§_-6f§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-ij§(_loc4_.§switch§() || _loc5_.§switch§());
            }
            _loc2_ = _loc2_.§_-Q2§;
         }
      }
      
      public function §switch§() : Boolean
      {
         return this.§_-PQ§;
      }
      
      public function §_-sK§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§_-u9§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-x3§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-Mc§;
            _loc4_ = _loc3_.§_-IQ§();
            _loc5_ = _loc3_.§_-6f§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-yN§();
            }
            _loc2_ = _loc2_.§_-Q2§;
         }
      }
      
      public function §_-Cs§() : b2FilterData
      {
         return this.§_-u9§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-e4§() : b2Fixture
      {
         return this.§_-1k§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-7f§;
      }
      
      public function §_-ii§(param1:*) : void
      {
         this.§_-7f§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-RE§.TestPoint(this.m_body.§_-XD§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-RE§.RayCast(param1,param2,this.m_body.§_-XD§());
      }
      
      public function §_-CC§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§_-RE§.ComputeMass(param1,this.§_-aC§);
         return param1;
      }
      
      public function §_-jA§(param1:Number) : void
      {
         this.§_-aC§ = param1;
      }
      
      public function §_-e2§() : Number
      {
         return this.§_-aC§;
      }
      
      public function §_-1D§() : Number
      {
         return this.§_-kH§;
      }
      
      public function §_-4e§(param1:Number) : void
      {
         this.§_-kH§ = param1;
      }
      
      public function §_-pX§() : Number
      {
         return this.§_-zm§;
      }
      
      public function §_-DK§(param1:Number) : void
      {
         this.§_-zm§ = param1;
      }
      
      public function §_-QR§() : b2AABB
      {
         return this.§_-T7§;
      }
      
      b2internal function §_-mA§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§_-7f§ = param3.§_-tW§;
         this.§_-kH§ = param3.friction;
         this.§_-zm§ = param3.restitution;
         this.m_body = param1;
         this.§_-1k§ = null;
         this.§_-u9§ = param3.filter.Copy();
         this.§_-PQ§ = param3.§_-QB§;
         this.§_-RE§ = param3.shape.Copy();
         this.§_-aC§ = param3.density;
      }
      
      b2internal function §_-T9§() : void
      {
         this.§_-RE§ = null;
      }
      
      b2internal function §_-U5§(param1:§_-T5§, param2:b2Transform) : void
      {
         this.§_-RE§.ComputeAABB(this.§_-T7§,param2);
         this.§_-8I§ = param1.§_-U5§(this.§_-T7§,this);
      }
      
      b2internal function §_-IN§(param1:§_-T5§) : void
      {
         if(this.§_-8I§ == null)
         {
            return;
         }
         param1.§_-IN§(this.§_-8I§);
         this.§_-8I§ = null;
      }
      
      b2internal function §_-jp§(param1:§_-T5§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§_-8I§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§_-RE§.ComputeAABB(_loc4_,param2);
         this.§_-RE§.ComputeAABB(_loc5_,param3);
         this.§_-T7§.§_-8j§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§_-nM§(param3.position,param2.position);
         param1.§_-AX§(this.§_-8I§,this.§_-T7§,_loc6_);
      }
   }
}
