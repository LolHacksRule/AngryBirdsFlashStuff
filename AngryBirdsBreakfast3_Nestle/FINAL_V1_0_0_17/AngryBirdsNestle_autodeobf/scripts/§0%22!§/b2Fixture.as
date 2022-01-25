package §0"!§
{
   import §!§.§5!u§;
   import §!§.b2AABB;
   import §!§.b2RayCastInput;
   import §!§.b2RayCastOutput;
   import §'!_§.b2internal;
   import §23§.b2Contact;
   import §23§.b2ContactEdge;
   import §=!!§.b2MassData;
   import §=!!§.b2Shape;
   import §@!E§.b2Math;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §-!i§:b2MassData;
      
      b2internal var §`!F§:b2AABB;
      
      b2internal var §^"'§:Number;
      
      b2internal var §6!c§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §#!O§:b2Shape;
      
      b2internal var §]T§:Number;
      
      b2internal var §1!k§:Number;
      
      b2internal var §^!N§;
      
      b2internal var §1!_§:b2FilterData;
      
      b2internal var §=!r§:Boolean;
      
      b2internal var §finally§;
      
      public function b2Fixture()
      {
         this.§1!_§ = new b2FilterData();
         super();
         this.§`!F§ = new b2AABB();
         this.§finally§ = null;
         this.m_body = null;
         this.§6!c§ = null;
         this.§#!O§ = null;
         this.§^"'§ = 0;
         this.§]T§ = 0;
         this.§1!k§ = 0;
      }
      
      public function §4!v§() : int
      {
         return this.§#!O§.§4!v§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§#!O§;
      }
      
      public function §]4§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§=!r§ == param1)
         {
            return;
         }
         this.§=!r§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§@d§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§@"6§;
            _loc4_ = _loc3_.§6!'§();
            _loc5_ = _loc3_.§]O§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§]4§(_loc4_.§5!V§() || _loc5_.§5!V§());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §5!V§() : Boolean
      {
         return this.§=!r§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§1!_§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§@d§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§@"6§;
            _loc4_ = _loc3_.§6!'§();
            _loc5_ = _loc3_.§]O§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§]!V§();
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §9!l§() : b2FilterData
      {
         return this.§1!_§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §2!9§() : b2Fixture
      {
         return this.§6!c§;
      }
      
      public function GetUserData() : *
      {
         return this.§finally§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§finally§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§#!O§.TestPoint(this.m_body.§%X§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§#!O§.RayCast(param1,param2,this.m_body.§%X§());
      }
      
      public function §&D§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§#!O§.ComputeMass(param1,this.§^"'§);
         return param1;
      }
      
      public function § !u§(param1:Number) : void
      {
         this.§^"'§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§^"'§;
      }
      
      public function §8!>§() : Number
      {
         return this.§]T§;
      }
      
      public function §-!e§(param1:Number) : void
      {
         this.§]T§ = param1;
      }
      
      public function §?2§() : Number
      {
         return this.§1!k§;
      }
      
      public function §,!C§(param1:Number) : void
      {
         this.§1!k§ = param1;
      }
      
      public function §5=§() : b2AABB
      {
         return this.§`!F§;
      }
      
      b2internal function §'!D§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§finally§ = param3.userData;
         this.§]T§ = param3.friction;
         this.§1!k§ = param3.restitution;
         this.m_body = param1;
         this.§6!c§ = null;
         this.§1!_§ = param3.filter.Copy();
         this.§=!r§ = param3.§7'§;
         this.§#!O§ = param3.shape.Copy();
         this.§^"'§ = param3.density;
      }
      
      b2internal function §7!d§() : void
      {
         this.§#!O§ = null;
      }
      
      b2internal function §=!b§(param1:§5!u§, param2:b2Transform) : void
      {
         this.§#!O§.ComputeAABB(this.§`!F§,param2);
         this.§^!N§ = param1.§=!b§(this.§`!F§,this);
      }
      
      b2internal function §4d§(param1:§5!u§) : void
      {
         if(this.§^!N§ == null)
         {
            return;
         }
         param1.§4d§(this.§^!N§);
         this.§^!N§ = null;
      }
      
      b2internal function §3g§(param1:§5!u§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§^!N§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§#!O§.ComputeAABB(_loc4_,param2);
         this.§#!O§.ComputeAABB(_loc5_,param3);
         this.§`!F§.§?z§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§1"5§(param3.position,param2.position);
         param1.§;!n§(this.§^!N§,this.§`!F§,_loc6_);
      }
   }
}
