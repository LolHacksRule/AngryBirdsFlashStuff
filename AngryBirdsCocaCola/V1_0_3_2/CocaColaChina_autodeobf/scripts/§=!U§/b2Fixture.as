package §=!U§
{
   import §"!R§.b2internal;
   import §'&§.b2MassData;
   import §'&§.b2Shape;
   import §;!7§.§>c§;
   import §;!7§.b2AABB;
   import §;!7§.b2RayCastInput;
   import §;!7§.b2RayCastOutput;
   import §@M§.b2Contact;
   import §@M§.b2ContactEdge;
   import §implements§.b2Math;
   import §implements§.b2Transform;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §@!R§:b2MassData;
      
      b2internal var §3a§:b2AABB;
      
      b2internal var §62§:Number;
      
      b2internal var §9`§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §,[§:b2Shape;
      
      b2internal var §1c§:Number;
      
      b2internal var §%D§:Number;
      
      b2internal var §86§;
      
      b2internal var §3!+§:b2FilterData;
      
      b2internal var §13§:Boolean;
      
      b2internal var §9!M§;
      
      public function b2Fixture()
      {
         this.§3!+§ = new b2FilterData();
         super();
         this.§3a§ = new b2AABB();
         this.§9!M§ = null;
         this.m_body = null;
         this.§9`§ = null;
         this.§,[§ = null;
         this.§62§ = 0;
         this.§1c§ = 0;
         this.§%D§ = 0;
      }
      
      public function §@e§() : int
      {
         return this.§,[§.§@e§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§,[§;
      }
      
      public function native(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§13§ == param1)
         {
            return;
         }
         this.§13§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§8!=§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§#^§;
            _loc4_ = _loc3_.§ !N§();
            _loc5_ = _loc3_.§^9§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.native(_loc4_.§const§() || _loc5_.§const§());
            }
            _loc2_ = _loc2_.§>C§;
         }
      }
      
      public function §const§() : Boolean
      {
         return this.§13§;
      }
      
      public function §<!3§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§3!+§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§8!=§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§#^§;
            _loc4_ = _loc3_.§ !N§();
            _loc5_ = _loc3_.§^9§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§%!=§();
            }
            _loc2_ = _loc2_.§>C§;
         }
      }
      
      public function §@!-§() : b2FilterData
      {
         return this.§3!+§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §^r§() : b2Fixture
      {
         return this.§9`§;
      }
      
      public function GetUserData() : *
      {
         return this.§9!M§;
      }
      
      public function §=!=§(param1:*) : void
      {
         this.§9!M§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§,[§.TestPoint(this.m_body.§'_§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§,[§.RayCast(param1,param2,this.m_body.§'_§());
      }
      
      public function §6d§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§,[§.ComputeMass(param1,this.§62§);
         return param1;
      }
      
      public function §@^§(param1:Number) : void
      {
         this.§62§ = param1;
      }
      
      public function §-@§() : Number
      {
         return this.§62§;
      }
      
      public function §!O§() : Number
      {
         return this.§1c§;
      }
      
      public function §!o§(param1:Number) : void
      {
         this.§1c§ = param1;
      }
      
      public function §>!B§() : Number
      {
         return this.§%D§;
      }
      
      public function §^!B§(param1:Number) : void
      {
         this.§%D§ = param1;
      }
      
      public function §`h§() : b2AABB
      {
         return this.§3a§;
      }
      
      b2internal function §0!^§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§9!M§ = param3.§`!`§;
         this.§1c§ = param3.friction;
         this.§%D§ = param3.restitution;
         this.m_body = param1;
         this.§9`§ = null;
         this.§3!+§ = param3.filter.Copy();
         this.§13§ = param3.§<?§;
         this.§,[§ = param3.shape.Copy();
         this.§62§ = param3.density;
      }
      
      b2internal function §9!K§() : void
      {
         this.§,[§ = null;
      }
      
      b2internal function §]!0§(param1:§>c§, param2:b2Transform) : void
      {
         this.§,[§.ComputeAABB(this.§3a§,param2);
         this.§86§ = param1.§]!0§(this.§3a§,this);
      }
      
      b2internal function §8!V§(param1:§>c§) : void
      {
         if(this.§86§ == null)
         {
            return;
         }
         param1.§8!V§(this.§86§);
         this.§86§ = null;
      }
      
      b2internal function §[! §(param1:§>c§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§86§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§,[§.ComputeAABB(_loc4_,param2);
         this.§,[§.ComputeAABB(_loc5_,param3);
         this.§3a§.§5!B§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§^!J§(param3.position,param2.position);
         param1.§1$§(this.§86§,this.§3a§,_loc6_);
      }
   }
}
