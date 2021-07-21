package § !t§
{
   import §#A§.b2Contact;
   import §#A§.b2ContactEdge;
   import §#b§.b2MassData;
   import §#b§.b2Shape;
   import §'!;§.§1!p§;
   import §'!;§.b2AABB;
   import §'!;§.b2RayCastInput;
   import §'!;§.b2RayCastOutput;
   import §<!B§.b2Math;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var override:b2MassData;
      
      b2internal var §&#§:b2AABB;
      
      b2internal var §"x§:Number;
      
      b2internal var § <§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §5,§:b2Shape;
      
      b2internal var § r§:Number;
      
      b2internal var §`!Y§:Number;
      
      b2internal var §-!§;
      
      b2internal var §!!7§:b2FilterData;
      
      b2internal var §9!r§:Boolean;
      
      b2internal var §>!2§;
      
      public function b2Fixture()
      {
         this.§!!7§ = new b2FilterData();
         super();
         this.§&#§ = new b2AABB();
         this.§>!2§ = null;
         this.m_body = null;
         this.§ <§ = null;
         this.§5,§ = null;
         this.§"x§ = 0;
         this.§ r§ = 0;
         this.§`!Y§ = 0;
      }
      
      public function §"!j§() : int
      {
         return this.§5,§.§"!j§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§5,§;
      }
      
      public function §1!C§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§9!r§ == param1)
         {
            return;
         }
         this.§9!r§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§>!U§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§12§;
            _loc4_ = _loc3_.§,^§();
            _loc5_ = _loc3_.§'!+§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§1!C§(_loc4_.§-!]§() || _loc5_.§-!]§());
            }
            _loc2_ = _loc2_.§1!U§;
         }
      }
      
      public function §-!]§() : Boolean
      {
         return this.§9!r§;
      }
      
      public function §1!i§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§!!7§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§>!U§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§12§;
            _loc4_ = _loc3_.§,^§();
            _loc5_ = _loc3_.§'!+§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§%!h§();
            }
            _loc2_ = _loc2_.§1!U§;
         }
      }
      
      public function §[!V§() : b2FilterData
      {
         return this.§!!7§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §4!j§() : b2Fixture
      {
         return this.§ <§;
      }
      
      public function GetUserData() : *
      {
         return this.§>!2§;
      }
      
      public function §[!X§(param1:*) : void
      {
         this.§>!2§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§5,§.TestPoint(this.m_body.§>!H§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§5,§.RayCast(param1,param2,this.m_body.§>!H§());
      }
      
      public function §!I§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§5,§.ComputeMass(param1,this.§"x§);
         return param1;
      }
      
      public function §8!i§(param1:Number) : void
      {
         this.§"x§ = param1;
      }
      
      public function §3!r§() : Number
      {
         return this.§"x§;
      }
      
      public function §+!K§() : Number
      {
         return this.§ r§;
      }
      
      public function §3R§(param1:Number) : void
      {
         this.§ r§ = param1;
      }
      
      public function §%!>§() : Number
      {
         return this.§`!Y§;
      }
      
      public function §<p§(param1:Number) : void
      {
         this.§`!Y§ = param1;
      }
      
      public function §7!l§() : b2AABB
      {
         return this.§&#§;
      }
      
      b2internal function §?J§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§>!2§ = param3.§!L§;
         this.§ r§ = param3.friction;
         this.§`!Y§ = param3.restitution;
         this.m_body = param1;
         this.§ <§ = null;
         this.§!!7§ = param3.filter.Copy();
         this.§9!r§ = param3.§]w§;
         this.§5,§ = param3.shape.Copy();
         this.§"x§ = param3.density;
      }
      
      b2internal function §;!#§() : void
      {
         this.§5,§ = null;
      }
      
      b2internal function §<!U§(param1:§1!p§, param2:b2Transform) : void
      {
         this.§5,§.ComputeAABB(this.§&#§,param2);
         this.§-!§ = param1.§<!U§(this.§&#§,this);
      }
      
      b2internal function §`!A§(param1:§1!p§) : void
      {
         if(this.§-!§ == null)
         {
            return;
         }
         param1.§`!A§(this.§-!§);
         this.§-!§ = null;
      }
      
      b2internal function §=!J§(param1:§1!p§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§-!§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§5,§.ComputeAABB(_loc4_,param2);
         this.§5,§.ComputeAABB(_loc5_,param3);
         this.§&#§.§^!C§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§<b§(param3.position,param2.position);
         param1.§?"§(this.§-!§,this.§&#§,_loc6_);
      }
   }
}
