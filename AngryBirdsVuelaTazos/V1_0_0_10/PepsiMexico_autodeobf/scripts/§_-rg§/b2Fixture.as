package §_-rg§
{
   import §_-DM§.b2Contact;
   import §_-DM§.b2ContactEdge;
   import §_-Et§.§_-ei§;
   import §_-Et§.b2AABB;
   import §_-Et§.b2RayCastInput;
   import §_-Et§.b2RayCastOutput;
   import §_-I2§.b2MassData;
   import §_-I2§.b2Shape;
   import §_-Zl§.b2Math;
   import §_-Zl§.b2Transform;
   import §_-Zl§.b2Vec2;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-TV§:b2MassData;
      
      b2internal var §_-X1§:b2AABB;
      
      b2internal var §_-3E§:Number;
      
      b2internal var §_-AX§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-uM§:b2Shape;
      
      b2internal var §_-dJ§:Number;
      
      b2internal var §_-W8§:Number;
      
      b2internal var §_-d8§;
      
      b2internal var §_-Iq§:b2FilterData;
      
      b2internal var §_-X2§:Boolean;
      
      b2internal var §_-cT§;
      
      public function b2Fixture()
      {
         this.§_-Iq§ = new b2FilterData();
         super();
         this.§_-X1§ = new b2AABB();
         this.§_-cT§ = null;
         this.m_body = null;
         this.§_-AX§ = null;
         this.§_-uM§ = null;
         this.§_-3E§ = 0;
         this.§_-dJ§ = 0;
         this.§_-W8§ = 0;
      }
      
      public function §_-Iy§() : int
      {
         return this.§_-uM§.§_-Iy§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-uM§;
      }
      
      public function §_-tV§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§_-X2§ == param1)
         {
            return;
         }
         this.§_-X2§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-c4§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-vb§;
            _loc4_ = _loc3_.§_-cW§();
            _loc5_ = _loc3_.§_-q-§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-tV§(_loc4_.§_-Hm§() || _loc5_.§_-Hm§());
            }
            _loc2_ = _loc2_.§_-kL§;
         }
      }
      
      public function §_-Hm§() : Boolean
      {
         return this.§_-X2§;
      }
      
      public function §_-cC§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§_-Iq§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-c4§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-vb§;
            _loc4_ = _loc3_.§_-cW§();
            _loc5_ = _loc3_.§_-q-§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-Lu§();
            }
            _loc2_ = _loc2_.§_-kL§;
         }
      }
      
      public function §_-SN§() : b2FilterData
      {
         return this.§_-Iq§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-mR§() : b2Fixture
      {
         return this.§_-AX§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-cT§;
      }
      
      public function §_-mK§(param1:*) : void
      {
         this.§_-cT§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-uM§.TestPoint(this.m_body.§_-9F§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-uM§.RayCast(param1,param2,this.m_body.§_-9F§());
      }
      
      public function §_-NQ§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§_-uM§.ComputeMass(param1,this.§_-3E§);
         return param1;
      }
      
      public function §_-q4§(param1:Number) : void
      {
         this.§_-3E§ = param1;
      }
      
      public function §_-du§() : Number
      {
         return this.§_-3E§;
      }
      
      public function §_-s4§() : Number
      {
         return this.§_-dJ§;
      }
      
      public function §_-5x§(param1:Number) : void
      {
         this.§_-dJ§ = param1;
      }
      
      public function §_-XJ§() : Number
      {
         return this.§_-W8§;
      }
      
      public function §_-m5§(param1:Number) : void
      {
         this.§_-W8§ = param1;
      }
      
      public function §_-RV§() : b2AABB
      {
         return this.§_-X1§;
      }
      
      b2internal function §_-i-§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§_-cT§ = param3.§_-QX§;
         this.§_-dJ§ = param3.friction;
         this.§_-W8§ = param3.restitution;
         this.m_body = param1;
         this.§_-AX§ = null;
         this.§_-Iq§ = param3.filter.Copy();
         this.§_-X2§ = param3.§_-wk§;
         this.§_-uM§ = param3.shape.Copy();
         this.§_-3E§ = param3.density;
      }
      
      b2internal function §_-1m§() : void
      {
         this.§_-uM§ = null;
      }
      
      b2internal function §_-A5§(param1:§_-ei§, param2:b2Transform) : void
      {
         this.§_-uM§.ComputeAABB(this.§_-X1§,param2);
         this.§_-d8§ = param1.§_-A5§(this.§_-X1§,this);
      }
      
      b2internal function §_-Uu§(param1:§_-ei§) : void
      {
         if(this.§_-d8§ == null)
         {
            return;
         }
         param1.§_-Uu§(this.§_-d8§);
         this.§_-d8§ = null;
      }
      
      b2internal function §_-av§(param1:§_-ei§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§_-d8§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§_-uM§.ComputeAABB(_loc4_,param2);
         this.§_-uM§.ComputeAABB(_loc5_,param3);
         this.§_-X1§.§_-hq§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§_-Fu§(param3.position,param2.position);
         param1.§_-Rs§(this.§_-d8§,this.§_-X1§,_loc6_);
      }
   }
}
