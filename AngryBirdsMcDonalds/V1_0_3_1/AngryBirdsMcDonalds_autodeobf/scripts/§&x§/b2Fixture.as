package §&x§
{
   import §'!J§.b2Contact;
   import §'!J§.b2ContactEdge;
   import §-!T§.§2!W§;
   import §-!T§.b2AABB;
   import §-!T§.b2RayCastInput;
   import §-!T§.b2RayCastOutput;
   import §0,§.b2Math;
   import §0,§.b2Transform;
   import §0,§.b2Vec2;
   import §3o§.b2internal;
   import §8!b§.b2MassData;
   import §8!b§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §@m§:b2MassData;
      
      b2internal var § p§:b2AABB;
      
      b2internal var §^s§:Number;
      
      b2internal var §18§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §0!%§:b2Shape;
      
      b2internal var §@;§:Number;
      
      b2internal var §"N§:Number;
      
      b2internal var §0!=§;
      
      b2internal var §=8§:b2FilterData;
      
      b2internal var §,N§:Boolean;
      
      b2internal var §"!<§;
      
      public function b2Fixture()
      {
         this.§=8§ = new b2FilterData();
         super();
         this.§ p§ = new b2AABB();
         this.§"!<§ = null;
         this.m_body = null;
         this.§18§ = null;
         this.§0!%§ = null;
         this.§^s§ = 0;
         this.§@;§ = 0;
         this.§"N§ = 0;
      }
      
      public function §"!I§() : int
      {
         return this.§0!%§.§"!I§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§0!%§;
      }
      
      public function §1h§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§,N§ == param1)
         {
            return;
         }
         this.§,N§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§%F§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§&!L§;
            _loc4_ = _loc3_.§+!m§();
            _loc5_ = _loc3_.§4j§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§1h§(_loc4_.§#K§() || _loc5_.§#K§());
            }
            _loc2_ = _loc2_.§1t§;
         }
      }
      
      public function §#K§() : Boolean
      {
         return this.§,N§;
      }
      
      public function §+!N§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§=8§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§%F§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§&!L§;
            _loc4_ = _loc3_.§+!m§();
            _loc5_ = _loc3_.§4j§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§>T§();
            }
            _loc2_ = _loc2_.§1t§;
         }
      }
      
      public function § L§() : b2FilterData
      {
         return this.§=8§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §@!^§() : b2Fixture
      {
         return this.§18§;
      }
      
      public function GetUserData() : *
      {
         return this.§"!<§;
      }
      
      public function §%!W§(param1:*) : void
      {
         this.§"!<§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§0!%§.TestPoint(this.m_body.§<9§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§0!%§.RayCast(param1,param2,this.m_body.§<9§());
      }
      
      public function §0k§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§0!%§.ComputeMass(param1,this.§^s§);
         return param1;
      }
      
      public function §+a§(param1:Number) : void
      {
         this.§^s§ = param1;
      }
      
      public function §>l§() : Number
      {
         return this.§^s§;
      }
      
      public function §5v§() : Number
      {
         return this.§@;§;
      }
      
      public function §;!p§(param1:Number) : void
      {
         this.§@;§ = param1;
      }
      
      public function §"3§() : Number
      {
         return this.§"N§;
      }
      
      public function § !'§(param1:Number) : void
      {
         this.§"N§ = param1;
      }
      
      public function §6!L§() : b2AABB
      {
         return this.§ p§;
      }
      
      b2internal function §;!1§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§"!<§ = param3.§!k§;
         this.§@;§ = param3.friction;
         this.§"N§ = param3.restitution;
         this.m_body = param1;
         this.§18§ = null;
         this.§=8§ = param3.filter.Copy();
         this.§,N§ = param3.§]!G§;
         this.§0!%§ = param3.shape.Copy();
         this.§^s§ = param3.density;
      }
      
      b2internal function § ;§() : void
      {
         this.§0!%§ = null;
      }
      
      b2internal function §&t§(param1:§2!W§, param2:b2Transform) : void
      {
         this.§0!%§.ComputeAABB(this.§ p§,param2);
         this.§0!=§ = param1.§&t§(this.§ p§,this);
      }
      
      b2internal function §!!E§(param1:§2!W§) : void
      {
         if(this.§0!=§ == null)
         {
            return;
         }
         param1.§!!E§(this.§0!=§);
         this.§0!=§ = null;
      }
      
      b2internal function §null §(param1:§2!W§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§0!=§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§0!%§.ComputeAABB(_loc4_,param2);
         this.§0!%§.ComputeAABB(_loc5_,param3);
         this.§ p§.§9c§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§+z§(param3.position,param2.position);
         param1.§7!k§(this.§0!=§,this.§ p§,_loc6_);
      }
   }
}
