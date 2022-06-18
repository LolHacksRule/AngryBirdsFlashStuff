package §4!&§
{
   import § y§.b2MassData;
   import § y§.b2Shape;
   import §&!+§.b2Math;
   import §&!+§.b2Transform;
   import §&!+§.b2Vec2;
   import §3Z§.b2Contact;
   import §3Z§.b2ContactEdge;
   import §8!%§.b2internal;
   import §<!^§.§ !$§;
   import §<!^§.b2AABB;
   import §<!^§.b2RayCastInput;
   import §<!^§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §?[§:b2MassData;
      
      b2internal var § each§:b2AABB;
      
      b2internal var §2`§:Number;
      
      b2internal var §1!A§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §9D§:b2Shape;
      
      b2internal var §>4§:Number;
      
      b2internal var §;o§:Number;
      
      b2internal var §=!T§;
      
      b2internal var §default§:b2FilterData;
      
      b2internal var § n§:Boolean;
      
      b2internal var §-!F§;
      
      public function b2Fixture()
      {
         this.§default§ = new b2FilterData();
         super();
         this.§ each§ = new b2AABB();
         this.§-!F§ = null;
         this.m_body = null;
         this.§1!A§ = null;
         this.§9D§ = null;
         this.§2`§ = 0;
         this.§>4§ = 0;
         this.§;o§ = 0;
      }
      
      public function §?!S§() : int
      {
         return this.§9D§.§?!S§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§9D§;
      }
      
      public function §5!K§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§ n§ == param1)
         {
            return;
         }
         this.§ n§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§5n§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§+!#§;
            _loc4_ = _loc3_.§?7§();
            _loc5_ = _loc3_.§]!1§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§5!K§(_loc4_.§?A§() || _loc5_.§?A§());
            }
            _loc2_ = _loc2_.§?c§;
         }
      }
      
      public function §?A§() : Boolean
      {
         return this.§ n§;
      }
      
      public function §!!3§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§default§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§5n§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§+!#§;
            _loc4_ = _loc3_.§?7§();
            _loc5_ = _loc3_.§]!1§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§=@§();
            }
            _loc2_ = _loc2_.§?c§;
         }
      }
      
      public function §^!P§() : b2FilterData
      {
         return this.§default§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §'&§() : b2Fixture
      {
         return this.§1!A§;
      }
      
      public function GetUserData() : *
      {
         return this.§-!F§;
      }
      
      public function §`!F§(param1:*) : void
      {
         this.§-!F§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§9D§.TestPoint(this.m_body.§3!H§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§9D§.RayCast(param1,param2,this.m_body.§3!H§());
      }
      
      public function §=K§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§9D§.ComputeMass(param1,this.§2`§);
         return param1;
      }
      
      public function §[!=§(param1:Number) : void
      {
         this.§2`§ = param1;
      }
      
      public function §8]§() : Number
      {
         return this.§2`§;
      }
      
      public function §^!'§() : Number
      {
         return this.§>4§;
      }
      
      public function §;#§(param1:Number) : void
      {
         this.§>4§ = param1;
      }
      
      public function §-i§() : Number
      {
         return this.§;o§;
      }
      
      public function §-!V§(param1:Number) : void
      {
         this.§;o§ = param1;
      }
      
      public function §^t§() : b2AABB
      {
         return this.§ each§;
      }
      
      b2internal function §?j§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§-!F§ = param3.§3_§;
         this.§>4§ = param3.friction;
         this.§;o§ = param3.restitution;
         this.m_body = param1;
         this.§1!A§ = null;
         this.§default§ = param3.filter.Copy();
         this.§ n§ = param3.§4!I§;
         this.§9D§ = param3.shape.Copy();
         this.§2`§ = param3.density;
      }
      
      b2internal function §4c§() : void
      {
         this.§9D§ = null;
      }
      
      b2internal function §-!>§(param1:§ !$§, param2:b2Transform) : void
      {
         this.§9D§.ComputeAABB(this.§ each§,param2);
         this.§=!T§ = param1.§-!>§(this.§ each§,this);
      }
      
      b2internal function §2x§(param1:§ !$§) : void
      {
         if(this.§=!T§ == null)
         {
            return;
         }
         param1.§2x§(this.§=!T§);
         this.§=!T§ = null;
      }
      
      b2internal function §'i§(param1:§ !$§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§=!T§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§9D§.ComputeAABB(_loc4_,param2);
         this.§9D§.ComputeAABB(_loc5_,param3);
         this.§ each§.§&-§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§+w§(param3.position,param2.position);
         param1.§4[§(this.§=!T§,this.§ each§,_loc6_);
      }
   }
}
