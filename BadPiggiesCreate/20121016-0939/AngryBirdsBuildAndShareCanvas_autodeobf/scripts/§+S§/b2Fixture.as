package §+S§
{
   import §"!9§.b2MassData;
   import §"!9§.b2Shape;
   import §2"=§.b2Math;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §5!o§.§#!M§;
   import §5!o§.b2AABB;
   import §5!o§.b2RayCastInput;
   import §5!o§.b2RayCastOutput;
   import §;T§.b2Contact;
   import §;T§.b2ContactEdge;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §1!x§:b2MassData;
      
      b2internal var §]"+§:b2AABB;
      
      b2internal var §-&§:Number;
      
      b2internal var §>""§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §#j§:b2Shape;
      
      b2internal var §?!a§:Number;
      
      b2internal var § try§:Number;
      
      b2internal var §-!]§;
      
      b2internal var §&!<§:b2FilterData;
      
      b2internal var §-!W§:Boolean;
      
      b2internal var §6g§;
      
      public function b2Fixture()
      {
         this.§&!<§ = new b2FilterData();
         super();
         this.§]"+§ = new b2AABB();
         this.§6g§ = null;
         this.m_body = null;
         this.§>""§ = null;
         this.§#j§ = null;
         this.§-&§ = 0;
         this.§?!a§ = 0;
         this.§ try§ = 0;
      }
      
      public function §+!O§() : int
      {
         return this.§#j§.§+!O§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§#j§;
      }
      
      public function §@u§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§-!W§ == param1)
         {
            return;
         }
         this.§-!W§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§4!T§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§3w§;
            _loc4_ = _loc3_.§=!'§();
            _loc5_ = _loc3_.§&O§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§@u§(_loc4_.§]!h§() || _loc5_.§]!h§());
            }
            _loc2_ = _loc2_.§9!V§;
         }
      }
      
      public function §]!h§() : Boolean
      {
         return this.§-!W§;
      }
      
      public function §"!G§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§&!<§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§4!T§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§3w§;
            _loc4_ = _loc3_.§=!'§();
            _loc5_ = _loc3_.§&O§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§6L§();
            }
            _loc2_ = _loc2_.§9!V§;
         }
      }
      
      public function §%!$§() : b2FilterData
      {
         return this.§&!<§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §'!q§() : b2Fixture
      {
         return this.§>""§;
      }
      
      public function GetUserData() : *
      {
         return this.§6g§;
      }
      
      public function §?"5§(param1:*) : void
      {
         this.§6g§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§#j§.TestPoint(this.m_body.§?^§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§#j§.RayCast(param1,param2,this.m_body.§?^§());
      }
      
      public function §9!B§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§#j§.ComputeMass(param1,this.§-&§);
         return param1;
      }
      
      public function §,!p§(param1:Number) : void
      {
         this.§-&§ = param1;
      }
      
      public function §11§() : Number
      {
         return this.§-&§;
      }
      
      public function §2!U§() : Number
      {
         return this.§?!a§;
      }
      
      public function §=!i§(param1:Number) : void
      {
         this.§?!a§ = param1;
      }
      
      public function §^"'§() : Number
      {
         return this.§ try§;
      }
      
      public function §8!^§(param1:Number) : void
      {
         this.§ try§ = param1;
      }
      
      public function §1!^§() : b2AABB
      {
         return this.§]"+§;
      }
      
      b2internal function §-!x§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§6g§ = param3.§1P§;
         this.§?!a§ = param3.friction;
         this.§ try§ = param3.restitution;
         this.m_body = param1;
         this.§>""§ = null;
         this.§&!<§ = param3.filter.Copy();
         this.§-!W§ = param3.§1!P§;
         this.§#j§ = param3.shape.Copy();
         this.§-&§ = param3.density;
      }
      
      b2internal function §;&§() : void
      {
         this.§#j§ = null;
      }
      
      b2internal function §>!#§(param1:§#!M§, param2:b2Transform) : void
      {
         this.§#j§.ComputeAABB(this.§]"+§,param2);
         this.§-!]§ = param1.§>!#§(this.§]"+§,this);
      }
      
      b2internal function §`4§(param1:§#!M§) : void
      {
         if(this.§-!]§ == null)
         {
            return;
         }
         param1.§`4§(this.§-!]§);
         this.§-!]§ = null;
      }
      
      b2internal function §";§(param1:§#!M§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§-!]§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§#j§.ComputeAABB(_loc4_,param2);
         this.§#j§.ComputeAABB(_loc5_,param3);
         this.§]"+§.§%!]§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§'!%§(param3.position,param2.position);
         param1.§-!?§(this.§-!]§,this.§]"+§,_loc6_);
      }
   }
}
