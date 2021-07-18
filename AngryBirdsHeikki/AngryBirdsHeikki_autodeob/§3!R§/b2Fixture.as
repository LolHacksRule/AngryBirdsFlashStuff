package §3!R§
{
   import §!4§.§!s§;
   import §!4§.b2AABB;
   import §!4§.b2RayCastInput;
   import §!4§.b2RayCastOutput;
   import §6A§.b2Math;
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §7q§.b2MassData;
   import §7q§.b2Shape;
   import §=0§.b2Contact;
   import §=0§.b2ContactEdge;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §;M§:b2MassData;
      
      b2internal var § !+§:b2AABB;
      
      b2internal var §6!A§:Number;
      
      b2internal var §>W§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §9S§:b2Shape;
      
      b2internal var §^!>§:Number;
      
      b2internal var §1!T§:Number;
      
      b2internal var §&<§;
      
      b2internal var § 3§:b2FilterData;
      
      b2internal var §'!M§:Boolean;
      
      b2internal var §,!&§;
      
      public function b2Fixture()
      {
         this.§ 3§ = new b2FilterData();
         super();
         this.§ !+§ = new b2AABB();
         this.§,!&§ = null;
         this.m_body = null;
         this.§>W§ = null;
         this.§9S§ = null;
         this.§6!A§ = 0;
         this.§^!>§ = 0;
         this.§1!T§ = 0;
      }
      
      public function §0i§() : int
      {
         return this.§9S§.§0i§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§9S§;
      }
      
      public function §@!_§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§'!M§ == param1)
         {
            return;
         }
         this.§'!M§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!+§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§-!$§;
            _loc4_ = _loc3_.§#!D§();
            _loc5_ = _loc3_.§''§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§@!_§(_loc4_.§4!B§() || _loc5_.§4!B§());
            }
            _loc2_ = _loc2_.§+m§;
         }
      }
      
      public function §4!B§() : Boolean
      {
         return this.§'!M§;
      }
      
      public function §8a§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§ 3§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!+§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§-!$§;
            _loc4_ = _loc3_.§#!D§();
            _loc5_ = _loc3_.§''§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§[!R§();
            }
            _loc2_ = _loc2_.§+m§;
         }
      }
      
      public function §5[§() : b2FilterData
      {
         return this.§ 3§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §5!J§() : b2Fixture
      {
         return this.§>W§;
      }
      
      public function GetUserData() : *
      {
         return this.§,!&§;
      }
      
      public function §-N§(param1:*) : void
      {
         this.§,!&§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§9S§.TestPoint(this.m_body.§6V§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§9S§.RayCast(param1,param2,this.m_body.§6V§());
      }
      
      public function §3_§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§9S§.ComputeMass(param1,this.§6!A§);
         return param1;
      }
      
      public function §;!%§(param1:Number) : void
      {
         this.§6!A§ = param1;
      }
      
      public function § !E§() : Number
      {
         return this.§6!A§;
      }
      
      public function §+!c§() : Number
      {
         return this.§^!>§;
      }
      
      public function §@9§(param1:Number) : void
      {
         this.§^!>§ = param1;
      }
      
      public function §]!_§() : Number
      {
         return this.§1!T§;
      }
      
      public function §>!X§(param1:Number) : void
      {
         this.§1!T§ = param1;
      }
      
      public function §;!V§() : b2AABB
      {
         return this.§ !+§;
      }
      
      b2internal function §;O§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§,!&§ = param3.§<!B§;
         this.§^!>§ = param3.friction;
         this.§1!T§ = param3.restitution;
         this.m_body = param1;
         this.§>W§ = null;
         this.§ 3§ = param3.filter.Copy();
         this.§'!M§ = param3.§0h§;
         this.§9S§ = param3.shape.Copy();
         this.§6!A§ = param3.density;
      }
      
      b2internal function §;!^§() : void
      {
         this.§9S§ = null;
      }
      
      b2internal function §+!#§(param1:§!s§, param2:b2Transform) : void
      {
         this.§9S§.ComputeAABB(this.§ !+§,param2);
         this.§&<§ = param1.§+!#§(this.§ !+§,this);
      }
      
      b2internal function §&R§(param1:§!s§) : void
      {
         if(this.§&<§ == null)
         {
            return;
         }
         param1.§&R§(this.§&<§);
         this.§&<§ = null;
      }
      
      b2internal function §8!6§(param1:§!s§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§&<§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§9S§.ComputeAABB(_loc4_,param2);
         this.§9S§.ComputeAABB(_loc5_,param3);
         this.§ !+§.§#2§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§8!Y§(param3.position,param2.position);
         param1.§&W§(this.§&<§,this.§ !+§,_loc6_);
      }
   }
}
