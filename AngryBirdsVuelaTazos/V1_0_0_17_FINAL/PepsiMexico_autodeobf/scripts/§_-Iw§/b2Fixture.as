package §_-Iw§
{
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Transform;
   import §_-Ja§.b2Vec2;
   import §_-Kt§.b2MassData;
   import §_-Kt§.b2Shape;
   import §_-a5§.b2Contact;
   import §_-a5§.b2ContactEdge;
   import §_-lh§.b2internal;
   import §_-qg§.§_-nW§;
   import §_-qg§.b2AABB;
   import §_-qg§.b2RayCastInput;
   import §_-qg§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §_-NJ§:b2MassData;
      
      b2internal var §_-xI§:b2AABB;
      
      b2internal var §_-9V§:Number;
      
      b2internal var §_-NA§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §_-o6§:b2Shape;
      
      b2internal var § null§:Number;
      
      b2internal var §_-dl§:Number;
      
      b2internal var §_-ev§;
      
      b2internal var §_-el§:b2FilterData;
      
      b2internal var §_-VZ§:Boolean;
      
      b2internal var §_-OB§;
      
      public function b2Fixture()
      {
         this.§_-el§ = new b2FilterData();
         super();
         this.§_-xI§ = new b2AABB();
         this.§_-OB§ = null;
         this.m_body = null;
         this.§_-NA§ = null;
         this.§_-o6§ = null;
         this.§_-9V§ = 0;
         this.§ null§ = 0;
         this.§_-dl§ = 0;
      }
      
      public function §_-ww§() : int
      {
         return this.§_-o6§.§_-ww§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§_-o6§;
      }
      
      public function §_-uP§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§_-VZ§ == param1)
         {
            return;
         }
         this.§_-VZ§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-Xi§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-bX§;
            _loc4_ = _loc3_.§_-8S§();
            _loc5_ = _loc3_.§_-16§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-uP§(_loc4_.§_-YU§() || _loc5_.§_-YU§());
            }
            _loc2_ = _loc2_.§_-Jr§;
         }
      }
      
      public function §_-YU§() : Boolean
      {
         return this.§_-VZ§;
      }
      
      public function §_-9A§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§_-el§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§_-Xi§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-bX§;
            _loc4_ = _loc3_.§_-8S§();
            _loc5_ = _loc3_.§_-16§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§_-om§();
            }
            _loc2_ = _loc2_.§_-Jr§;
         }
      }
      
      public function §_-ys§() : b2FilterData
      {
         return this.§_-el§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §_-tx§() : b2Fixture
      {
         return this.§_-NA§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-OB§;
      }
      
      public function §_-g6§(param1:*) : void
      {
         this.§_-OB§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§_-o6§.TestPoint(this.m_body.§_-ZO§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§_-o6§.RayCast(param1,param2,this.m_body.§_-ZO§());
      }
      
      public function §_-vR§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§_-o6§.ComputeMass(param1,this.§_-9V§);
         return param1;
      }
      
      public function §_-lI§(param1:Number) : void
      {
         this.§_-9V§ = param1;
      }
      
      public function §_-0I§() : Number
      {
         return this.§_-9V§;
      }
      
      public function §_-zC§() : Number
      {
         return this.§ null§;
      }
      
      public function §_-FW§(param1:Number) : void
      {
         this.§ null§ = param1;
      }
      
      public function §_-J0§() : Number
      {
         return this.§_-dl§;
      }
      
      public function §_-6X§(param1:Number) : void
      {
         this.§_-dl§ = param1;
      }
      
      public function §_-SE§() : b2AABB
      {
         return this.§_-xI§;
      }
      
      b2internal function §_-xO§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§_-OB§ = param3.§_-Vb§;
         this.§ null§ = param3.friction;
         this.§_-dl§ = param3.restitution;
         this.m_body = param1;
         this.§_-NA§ = null;
         this.§_-el§ = param3.filter.Copy();
         this.§_-VZ§ = param3.§_-n0§;
         this.§_-o6§ = param3.shape.Copy();
         this.§_-9V§ = param3.density;
      }
      
      b2internal function §_-2A§() : void
      {
         this.§_-o6§ = null;
      }
      
      b2internal function §_-mf§(param1:§_-nW§, param2:b2Transform) : void
      {
         this.§_-o6§.ComputeAABB(this.§_-xI§,param2);
         this.§_-ev§ = param1.§_-mf§(this.§_-xI§,this);
      }
      
      b2internal function §_-aV§(param1:§_-nW§) : void
      {
         if(this.§_-ev§ == null)
         {
            return;
         }
         param1.§_-aV§(this.§_-ev§);
         this.§_-ev§ = null;
      }
      
      b2internal function §_-GT§(param1:§_-nW§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§_-ev§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§_-o6§.ComputeAABB(_loc4_,param2);
         this.§_-o6§.ComputeAABB(_loc5_,param3);
         this.§_-xI§.§_-ot§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§_-TD§(param3.position,param2.position);
         param1.§_-Se§(this.§_-ev§,this.§_-xI§,_loc6_);
      }
   }
}
