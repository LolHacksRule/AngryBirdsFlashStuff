package §?0§
{
   import §'!#§.b2Contact;
   import §'!#§.b2ContactEdge;
   import §'!3§.b2internal;
   import §3q§.b2Math;
   import §3q§.b2Transform;
   import §3q§.b2Vec2;
   import §9!$§.§&!8§;
   import §9!$§.b2AABB;
   import §9!$§.b2RayCastInput;
   import §9!$§.b2RayCastOutput;
   import §@,§.b2MassData;
   import §@,§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §2z§:b2MassData;
      
      b2internal var §'k§:b2AABB;
      
      b2internal var §'Z§:Number;
      
      b2internal var §>!W§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §1!O§:b2Shape;
      
      b2internal var §#!L§:Number;
      
      b2internal var §=!5§:Number;
      
      b2internal var §[k§;
      
      b2internal var §9!,§:b2FilterData;
      
      b2internal var §'!;§:Boolean;
      
      b2internal var §[!U§;
      
      public function b2Fixture()
      {
         this.§9!,§ = new b2FilterData();
         super();
         this.§'k§ = new b2AABB();
         this.§[!U§ = null;
         this.m_body = null;
         this.§>!W§ = null;
         this.§1!O§ = null;
         this.§'Z§ = 0;
         this.§#!L§ = 0;
         this.§=!5§ = 0;
      }
      
      public function §1!A§() : int
      {
         return this.§1!O§.§1!A§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§1!O§;
      }
      
      public function §>w§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§'!;§ == param1)
         {
            return;
         }
         this.§'!;§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§0U§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§2j§;
            _loc4_ = _loc3_.§40§();
            _loc5_ = _loc3_.§2!F§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§>w§(_loc4_.§]W§() || _loc5_.§]W§());
            }
            _loc2_ = _loc2_.§20§;
         }
      }
      
      public function §]W§() : Boolean
      {
         return this.§'!;§;
      }
      
      public function §"_§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§9!,§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§0U§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§2j§;
            _loc4_ = _loc3_.§40§();
            _loc5_ = _loc3_.§2!F§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§"D§();
            }
            _loc2_ = _loc2_.§20§;
         }
      }
      
      public function §'d§() : b2FilterData
      {
         return this.§9!,§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §%W§() : b2Fixture
      {
         return this.§>!W§;
      }
      
      public function GetUserData() : *
      {
         return this.§[!U§;
      }
      
      public function §"Z§(param1:*) : void
      {
         this.§[!U§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§1!O§.TestPoint(this.m_body.§[!4§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§1!O§.RayCast(param1,param2,this.m_body.§[!4§());
      }
      
      public function §]r§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§1!O§.ComputeMass(param1,this.§'Z§);
         return param1;
      }
      
      public function §"j§(param1:Number) : void
      {
         this.§'Z§ = param1;
      }
      
      public function §4!Z§() : Number
      {
         return this.§'Z§;
      }
      
      public function §[W§() : Number
      {
         return this.§#!L§;
      }
      
      public function §2o§(param1:Number) : void
      {
         this.§#!L§ = param1;
      }
      
      public function §&b§() : Number
      {
         return this.§=!5§;
      }
      
      public function §<%§(param1:Number) : void
      {
         this.§=!5§ = param1;
      }
      
      public function §13§() : b2AABB
      {
         return this.§'k§;
      }
      
      b2internal function § V§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§[!U§ = param3.§1!%§;
         this.§#!L§ = param3.friction;
         this.§=!5§ = param3.restitution;
         this.m_body = param1;
         this.§>!W§ = null;
         this.§9!,§ = param3.filter.Copy();
         this.§'!;§ = param3.§3!!§;
         this.§1!O§ = param3.shape.Copy();
         this.§'Z§ = param3.density;
      }
      
      b2internal function §"z§() : void
      {
         this.§1!O§ = null;
      }
      
      b2internal function §&w§(param1:§&!8§, param2:b2Transform) : void
      {
         this.§1!O§.ComputeAABB(this.§'k§,param2);
         this.§[k§ = param1.§&w§(this.§'k§,this);
      }
      
      b2internal function §-k§(param1:§&!8§) : void
      {
         if(this.§[k§ == null)
         {
            return;
         }
         param1.§-k§(this.§[k§);
         this.§[k§ = null;
      }
      
      b2internal function §&g§(param1:§&!8§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§[k§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§1!O§.ComputeAABB(_loc4_,param2);
         this.§1!O§.ComputeAABB(_loc5_,param3);
         this.§'k§.§<![§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§;!-§(param3.position,param2.position);
         param1.§<!D§(this.§[k§,this.§'k§,_loc6_);
      }
   }
}
