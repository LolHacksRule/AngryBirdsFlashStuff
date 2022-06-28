package §#V§
{
   import §,C§.b2MassData;
   import §,C§.b2Shape;
   import §,G§.b2Contact;
   import §,G§.b2ContactEdge;
   import §3!m§.b2internal;
   import §8w§.§2U§;
   import §8w§.b2AABB;
   import §8w§.b2RayCastInput;
   import §8w§.b2RayCastOutput;
   import §;%§.b2Math;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §4<§:b2MassData;
      
      b2internal var each:b2AABB;
      
      b2internal var §?!T§:Number;
      
      b2internal var §@o§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §"!w§:b2Shape;
      
      b2internal var §@s§:Number;
      
      b2internal var §]!&§:Number;
      
      b2internal var § !P§;
      
      b2internal var §>R§:b2FilterData;
      
      b2internal var § !B§:Boolean;
      
      b2internal var §,h§;
      
      public function b2Fixture()
      {
         this.§>R§ = new b2FilterData();
         super();
         this.each = new b2AABB();
         this.§,h§ = null;
         this.m_body = null;
         this.§@o§ = null;
         this.§"!w§ = null;
         this.§?!T§ = 0;
         this.§@s§ = 0;
         this.§]!&§ = 0;
      }
      
      public function §'!_§() : int
      {
         return this.§"!w§.§'!_§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§"!w§;
      }
      
      public function §#=§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§ !B§ == param1)
         {
            return;
         }
         this.§ !B§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§ !S§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§80§;
            _loc4_ = _loc3_.§68§();
            _loc5_ = _loc3_.§[t§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§#=§(_loc4_.§0S§() || _loc5_.§0S§());
            }
            _loc2_ = _loc2_.§#!R§;
         }
      }
      
      public function §0S§() : Boolean
      {
         return this.§ !B§;
      }
      
      public function §6!U§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§>R§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§ !S§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§80§;
            _loc4_ = _loc3_.§68§();
            _loc5_ = _loc3_.§[t§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§9!E§();
            }
            _loc2_ = _loc2_.§#!R§;
         }
      }
      
      public function §%!v§() : b2FilterData
      {
         return this.§>R§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §>H§() : b2Fixture
      {
         return this.§@o§;
      }
      
      public function GetUserData() : *
      {
         return this.§,h§;
      }
      
      public function §2[§(param1:*) : void
      {
         this.§,h§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§"!w§.TestPoint(this.m_body.§7§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§"!w§.RayCast(param1,param2,this.m_body.§7§());
      }
      
      public function §-!`§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§"!w§.ComputeMass(param1,this.§?!T§);
         return param1;
      }
      
      public function §!_§(param1:Number) : void
      {
         this.§?!T§ = param1;
      }
      
      public function §9q§() : Number
      {
         return this.§?!T§;
      }
      
      public function §-! §() : Number
      {
         return this.§@s§;
      }
      
      public function §?!§(param1:Number) : void
      {
         this.§@s§ = param1;
      }
      
      public function § !@§() : Number
      {
         return this.§]!&§;
      }
      
      public function §6+§(param1:Number) : void
      {
         this.§]!&§ = param1;
      }
      
      public function §"Y§() : b2AABB
      {
         return this.each;
      }
      
      b2internal function §1#§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§,h§ = param3.§#+§;
         this.§@s§ = param3.friction;
         this.§]!&§ = param3.restitution;
         this.m_body = param1;
         this.§@o§ = null;
         this.§>R§ = param3.filter.Copy();
         this.§ !B§ = param3.§>'§;
         this.§"!w§ = param3.shape.Copy();
         this.§?!T§ = param3.density;
      }
      
      b2internal function §,!W§() : void
      {
         this.§"!w§ = null;
      }
      
      b2internal function §1!@§(param1:§2U§, param2:b2Transform) : void
      {
         this.§"!w§.ComputeAABB(this.each,param2);
         this.§ !P§ = param1.§1!@§(this.each,this);
      }
      
      b2internal function §for §(param1:§2U§) : void
      {
         if(this.§ !P§ == null)
         {
            return;
         }
         param1.§for §(this.§ !P§);
         this.§ !P§ = null;
      }
      
      b2internal function §^!7§(param1:§2U§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§ !P§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§"!w§.ComputeAABB(_loc4_,param2);
         this.§"!w§.ComputeAABB(_loc5_,param3);
         this.each.§3!M§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§9!<§(param3.position,param2.position);
         param1.§&!N§(this.§ !P§,this.each,_loc6_);
      }
   }
}
