package §_-WW§
{
   import §_-26§.b2MassData;
   import §_-26§.b2Shape;
   import §_-cw§.b2Contact;
   import §_-cw§.b2ContactEdge;
   import §_-dx§.b2Math;
   import §_-dx§.b2Transform;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2internal;
   import §_-tK§.§_-S8§;
   import §_-tK§.b2AABB;
   import §_-tK§.b2RayCastInput;
   import §_-tK§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-hC§:b2MassData;
      
      b2internal var §_-gf§:b2AABB;
      
      b2internal var §_-73§:Number;
      
      b2internal var §_-Lg§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-6o§:b2Shape;
      
      b2internal var §_-Gw§:Number;
      
      b2internal var §_-6p§:Number;
      
      b2internal var §_-Mu§;
      
      b2internal var §_-Pg§:b2FilterData;
      
      b2internal var §_-cJ§:Boolean;
      
      b2internal var §_-3M§;
      
      public function b2Fixture()
      {
         this.§_-Pg§ = new b2FilterData();
         super();
         this.§_-gf§ = new b2AABB();
         this.§_-3M§ = null;
         this.m_body = null;
         this.§_-Lg§ = null;
         this.§_-6o§ = null;
         this.§_-73§ = 0;
         this.§_-Gw§ = 0;
         this.§_-6p§ = 0;
      }
      
      public function §_-AY§() : int
      {
         return this.§_-6o§.§_-AY§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-6o§;
      }
      
      public function §_-Hy§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§_-cJ§ == param1)
         {
            return;
         }
         this.§_-cJ§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-s8§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-xH§;
            _loc4_ = _loc3_.§_-8a§();
            _loc5_ = _loc3_.§_-tA§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-Hy§(_loc4_.§_-gA§() || _loc5_.§_-gA§());
            }
            _loc2_ = _loc2_.§_-70§;
         }
      }
      
      public function §_-gA§() : Boolean
      {
         return this.§_-cJ§;
      }
      
      public function §super§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§_-Pg§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-s8§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-xH§;
            _loc4_ = _loc3_.§_-8a§();
            _loc5_ = _loc3_.§_-tA§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-1l§();
            }
            _loc2_ = _loc2_.§_-70§;
         }
      }
      
      public function §_-t3§() : b2FilterData
      {
         return this.§_-Pg§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-7P§() : b2Fixture
      {
         return this.§_-Lg§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-3M§;
      }
      
      public function §_-t4§(param1:*) : void
      {
         this.§_-3M§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-6o§.TestPoint(this.m_body.§_-LW§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-6o§.RayCast(param1,param2,this.m_body.§_-LW§());
      }
      
      public function §_-PU§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§_-6o§.ComputeMass(param1,this.§_-73§);
         return param1;
      }
      
      public function §_-DE§(param1:Number) : void
      {
         this.§_-73§ = param1;
      }
      
      public function §_-TH§() : Number
      {
         return this.§_-73§;
      }
      
      public function §_-MO§() : Number
      {
         return this.§_-Gw§;
      }
      
      public function §_-ZS§(param1:Number) : void
      {
         this.§_-Gw§ = param1;
      }
      
      public function §_-jk§() : Number
      {
         return this.§_-6p§;
      }
      
      public function §_-Ir§(param1:Number) : void
      {
         this.§_-6p§ = param1;
      }
      
      public function §_-Qe§() : b2AABB
      {
         return this.§_-gf§;
      }
      
      b2internal function §_-JU§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§_-3M§ = param3.§_-5W§;
         this.§_-Gw§ = param3.friction;
         this.§_-6p§ = param3.restitution;
         this.m_body = param1;
         this.§_-Lg§ = null;
         this.§_-Pg§ = param3.filter.Copy();
         this.§_-cJ§ = param3.§_-ZL§;
         this.§_-6o§ = param3.shape.Copy();
         this.§_-73§ = param3.density;
      }
      
      b2internal function §_-Hh§() : void
      {
         this.§_-6o§ = null;
      }
      
      b2internal function §_-BX§(param1:§_-S8§, param2:b2Transform) : void
      {
         this.§_-6o§.ComputeAABB(this.§_-gf§,param2);
         this.§_-Mu§ = param1.§_-BX§(this.§_-gf§,this);
      }
      
      b2internal function §_-o1§(param1:§_-S8§) : void
      {
         if(this.§_-Mu§ == null)
         {
            return;
         }
         param1.§_-o1§(this.§_-Mu§);
         this.§_-Mu§ = null;
      }
      
      b2internal function §_-EK§(param1:§_-S8§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§_-Mu§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§_-6o§.ComputeAABB(_loc4_,param2);
         this.§_-6o§.ComputeAABB(_loc5_,param3);
         this.§_-gf§.§_-9B§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§_-L6§(param3.position,param2.position);
         param1.§_-wh§(this.§_-Mu§,this.§_-gf§,_loc6_);
      }
   }
}
