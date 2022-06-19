package §`j§
{
   import §&U§.b2MassData;
   import §&U§.b2Shape;
   import §0!G§.b2Math;
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §8Y§.b2Contact;
   import §8Y§.b2ContactEdge;
   import §9"§.§>![§;
   import §9"§.b2AABB;
   import §9"§.b2RayCastInput;
   import §9"§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §'R§:b2MassData;
      
      b2internal var §^T§:b2AABB;
      
      b2internal var §4U§:Number;
      
      b2internal var §#!&§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §&l§:b2Shape;
      
      b2internal var §!@§:Number;
      
      b2internal var §3!&§:Number;
      
      b2internal var §!§;
      
      b2internal var §'!X§:b2FilterData;
      
      b2internal var §'Z§:Boolean;
      
      b2internal var §'8§;
      
      public function b2Fixture()
      {
         this.§'!X§ = new b2FilterData();
         super();
         this.§^T§ = new b2AABB();
         this.§'8§ = null;
         this.m_body = null;
         this.§#!&§ = null;
         this.§&l§ = null;
         this.§4U§ = 0;
         this.§!@§ = 0;
         this.§3!&§ = 0;
      }
      
      public function §"!M§() : int
      {
         return this.§&l§.§"!M§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§&l§;
      }
      
      public function §5!_§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§'Z§ == param1)
         {
            return;
         }
         this.§'Z§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§6q§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§"!$§;
            _loc4_ = _loc3_.§&^§();
            _loc5_ = _loc3_.§7I§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§5!_§(_loc4_.§`3§() || _loc5_.§`3§());
            }
            _loc2_ = _loc2_.§%Y§;
         }
      }
      
      public function §`3§() : Boolean
      {
         return this.§'Z§;
      }
      
      public function § !5§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§'!X§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§6q§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§"!$§;
            _loc4_ = _loc3_.§&^§();
            _loc5_ = _loc3_.§7I§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§@!0§();
            }
            _loc2_ = _loc2_.§%Y§;
         }
      }
      
      public function §;5§() : b2FilterData
      {
         return this.§'!X§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §[;§() : b2Fixture
      {
         return this.§#!&§;
      }
      
      public function GetUserData() : *
      {
         return this.§'8§;
      }
      
      public function §,!-§(param1:*) : void
      {
         this.§'8§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§&l§.TestPoint(this.m_body.§4!P§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§&l§.RayCast(param1,param2,this.m_body.§4!P§());
      }
      
      public function §%`§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§&l§.ComputeMass(param1,this.§4U§);
         return param1;
      }
      
      public function §8!^§(param1:Number) : void
      {
         this.§4U§ = param1;
      }
      
      public function §#p§() : Number
      {
         return this.§4U§;
      }
      
      public function §^]§() : Number
      {
         return this.§!@§;
      }
      
      public function §&]§(param1:Number) : void
      {
         this.§!@§ = param1;
      }
      
      public function §]9§() : Number
      {
         return this.§3!&§;
      }
      
      public function §7§(param1:Number) : void
      {
         this.§3!&§ = param1;
      }
      
      public function §17§() : b2AABB
      {
         return this.§^T§;
      }
      
      b2internal function §>y§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§'8§ = param3.§4!E§;
         this.§!@§ = param3.friction;
         this.§3!&§ = param3.restitution;
         this.m_body = param1;
         this.§#!&§ = null;
         this.§'!X§ = param3.filter.Copy();
         this.§'Z§ = param3.§0!N§;
         this.§&l§ = param3.shape.Copy();
         this.§4U§ = param3.density;
      }
      
      b2internal function §;@§() : void
      {
         this.§&l§ = null;
      }
      
      b2internal function §case§(param1:§>![§, param2:b2Transform) : void
      {
         this.§&l§.ComputeAABB(this.§^T§,param2);
         this.§!§ = param1.§case§(this.§^T§,this);
      }
      
      b2internal function §^<§(param1:§>![§) : void
      {
         if(this.§!§ == null)
         {
            return;
         }
         param1.§^<§(this.§!§);
         this.§!§ = null;
      }
      
      b2internal function §=!P§(param1:§>![§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§!§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§&l§.ComputeAABB(_loc4_,param2);
         this.§&l§.ComputeAABB(_loc5_,param3);
         this.§^T§.§8h§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§4_§(param3.position,param2.position);
         param1.§5! §(this.§!§,this.§^T§,_loc6_);
      }
   }
}
