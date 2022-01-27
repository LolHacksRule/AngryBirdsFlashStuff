package §0!?§
{
   import §!O§.b2MassData;
   import §!O§.b2Shape;
   import §0!=§.b2Math;
   import §0!=§.b2Transform;
   import §0!=§.b2Vec2;
   import §0^§.b2internal;
   import §;!U§.b2Contact;
   import §;!U§.b2ContactEdge;
   import §`!E§.§'e§;
   import §`!E§.b2AABB;
   import §`!E§.b2RayCastInput;
   import §`!E§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §0!W§:b2MassData;
      
      b2internal var § !c§:b2AABB;
      
      b2internal var §'[§:Number;
      
      b2internal var §=!T§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §9w§:b2Shape;
      
      b2internal var §89§:Number;
      
      b2internal var §@P§:Number;
      
      b2internal var §6&§;
      
      b2internal var § l§:b2FilterData;
      
      b2internal var §1!Y§:Boolean;
      
      b2internal var §`!0§;
      
      public function b2Fixture()
      {
         this.§ l§ = new b2FilterData();
         super();
         this.§ !c§ = new b2AABB();
         this.§`!0§ = null;
         this.m_body = null;
         this.§=!T§ = null;
         this.§9w§ = null;
         this.§'[§ = 0;
         this.§89§ = 0;
         this.§@P§ = 0;
      }
      
      public function §7"§() : int
      {
         return this.§9w§.§7"§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§9w§;
      }
      
      public function §2f§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§1!Y§ == param1)
         {
            return;
         }
         this.§1!Y§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§+!1§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§<!C§;
            _loc4_ = _loc3_.§!^§();
            _loc5_ = _loc3_.§"P§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§2f§(_loc4_.§5M§() || _loc5_.§5M§());
            }
            _loc2_ = _loc2_.§^T§;
         }
      }
      
      public function §5M§() : Boolean
      {
         return this.§1!Y§;
      }
      
      public function §;!5§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§ l§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§+!1§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§<!C§;
            _loc4_ = _loc3_.§!^§();
            _loc5_ = _loc3_.§"P§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§#<§();
            }
            _loc2_ = _loc2_.§^T§;
         }
      }
      
      public function §5`§() : b2FilterData
      {
         return this.§ l§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §=t§() : b2Fixture
      {
         return this.§=!T§;
      }
      
      public function GetUserData() : *
      {
         return this.§`!0§;
      }
      
      public function §^!M§(param1:*) : void
      {
         this.§`!0§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§9w§.TestPoint(this.m_body.§6!a§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§9w§.RayCast(param1,param2,this.m_body.§6!a§());
      }
      
      public function §'!X§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§9w§.ComputeMass(param1,this.§'[§);
         return param1;
      }
      
      public function §],§(param1:Number) : void
      {
         this.§'[§ = param1;
      }
      
      public function §4n§() : Number
      {
         return this.§'[§;
      }
      
      public function §2![§() : Number
      {
         return this.§89§;
      }
      
      public function override(param1:Number) : void
      {
         this.§89§ = param1;
      }
      
      public function §-<§() : Number
      {
         return this.§@P§;
      }
      
      public function §>!3§(param1:Number) : void
      {
         this.§@P§ = param1;
      }
      
      public function §="§() : b2AABB
      {
         return this.§ !c§;
      }
      
      b2internal function §6>§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§`!0§ = param3.§2=§;
         this.§89§ = param3.friction;
         this.§@P§ = param3.restitution;
         this.m_body = param1;
         this.§=!T§ = null;
         this.§ l§ = param3.filter.Copy();
         this.§1!Y§ = param3.§9M§;
         this.§9w§ = param3.shape.Copy();
         this.§'[§ = param3.density;
      }
      
      b2internal function §>s§() : void
      {
         this.§9w§ = null;
      }
      
      b2internal function §<R§(param1:§'e§, param2:b2Transform) : void
      {
         this.§9w§.ComputeAABB(this.§ !c§,param2);
         this.§6&§ = param1.§<R§(this.§ !c§,this);
      }
      
      b2internal function §'!F§(param1:§'e§) : void
      {
         if(this.§6&§ == null)
         {
            return;
         }
         param1.§'!F§(this.§6&§);
         this.§6&§ = null;
      }
      
      b2internal function §7y§(param1:§'e§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§6&§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§9w§.ComputeAABB(_loc4_,param2);
         this.§9w§.ComputeAABB(_loc5_,param3);
         this.§ !c§.§ else§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§2V§(param3.position,param2.position);
         param1.§>!8§(this.§6&§,this.§ !c§,_loc6_);
      }
   }
}
