package §+d§
{
   import §%E§.b2Contact;
   import §%E§.b2ContactEdge;
   import §6%§.b2internal;
   import §8`§.b2MassData;
   import §8`§.b2Shape;
   import §=n§.§@!C§;
   import §=n§.b2AABB;
   import §=n§.b2RayCastInput;
   import §=n§.b2RayCastOutput;
   import §`!^§.b2Math;
   import §`!^§.b2Transform;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §%!N§:b2MassData;
      
      b2internal var §7G§:b2AABB;
      
      b2internal var §8b§:Number;
      
      b2internal var §8A§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §0K§:b2Shape;
      
      b2internal var §,R§:Number;
      
      b2internal var §#!;§:Number;
      
      b2internal var §2!=§;
      
      b2internal var § !0§:b2FilterData;
      
      b2internal var §-!"§:Boolean;
      
      b2internal var § 1§;
      
      public function b2Fixture()
      {
         this.§ !0§ = new b2FilterData();
         super();
         this.§7G§ = new b2AABB();
         this.§ 1§ = null;
         this.m_body = null;
         this.§8A§ = null;
         this.§0K§ = null;
         this.§8b§ = 0;
         this.§,R§ = 0;
         this.§#!;§ = 0;
      }
      
      public function §,!d§() : int
      {
         return this.§0K§.§,!d§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§0K§;
      }
      
      public function §5S§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§-!"§ == param1)
         {
            return;
         }
         this.§-!"§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§#! §();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§!d§;
            _loc4_ = _loc3_.§5m§();
            _loc5_ = _loc3_.§3t§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§5S§(_loc4_.§8f§() || _loc5_.§8f§());
            }
            _loc2_ = _loc2_.§-w§;
         }
      }
      
      public function §8f§() : Boolean
      {
         return this.§-!"§;
      }
      
      public function §#R§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§ !0§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§#! §();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§!d§;
            _loc4_ = _loc3_.§5m§();
            _loc5_ = _loc3_.§3t§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§ !6§();
            }
            _loc2_ = _loc2_.§-w§;
         }
      }
      
      public function §[Z§() : b2FilterData
      {
         return this.§ !0§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §%;§() : b2Fixture
      {
         return this.§8A§;
      }
      
      public function GetUserData() : *
      {
         return this.§ 1§;
      }
      
      public function §?#§(param1:*) : void
      {
         this.§ 1§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§0K§.TestPoint(this.m_body.§3!d§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§0K§.RayCast(param1,param2,this.m_body.§3!d§());
      }
      
      public function §=8§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§0K§.ComputeMass(param1,this.§8b§);
         return param1;
      }
      
      public function §"!-§(param1:Number) : void
      {
         this.§8b§ = param1;
      }
      
      public function §4!$§() : Number
      {
         return this.§8b§;
      }
      
      public function §<j§() : Number
      {
         return this.§,R§;
      }
      
      public function §`;§(param1:Number) : void
      {
         this.§,R§ = param1;
      }
      
      public function § "§() : Number
      {
         return this.§#!;§;
      }
      
      public function §8X§(param1:Number) : void
      {
         this.§#!;§ = param1;
      }
      
      public function §>&§() : b2AABB
      {
         return this.§7G§;
      }
      
      b2internal function §2!f§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§ 1§ = param3.§>V§;
         this.§,R§ = param3.friction;
         this.§#!;§ = param3.restitution;
         this.m_body = param1;
         this.§8A§ = null;
         this.§ !0§ = param3.filter.Copy();
         this.§-!"§ = param3.§"9§;
         this.§0K§ = param3.shape.Copy();
         this.§8b§ = param3.density;
      }
      
      b2internal function §9!1§() : void
      {
         this.§0K§ = null;
      }
      
      b2internal function §%j§(param1:§@!C§, param2:b2Transform) : void
      {
         this.§0K§.ComputeAABB(this.§7G§,param2);
         this.§2!=§ = param1.§%j§(this.§7G§,this);
      }
      
      b2internal function §=!=§(param1:§@!C§) : void
      {
         if(this.§2!=§ == null)
         {
            return;
         }
         param1.§=!=§(this.§2!=§);
         this.§2!=§ = null;
      }
      
      b2internal function §,r§(param1:§@!C§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§2!=§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§0K§.ComputeAABB(_loc4_,param2);
         this.§0K§.ComputeAABB(_loc5_,param3);
         this.§7G§.§;n§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§!M§(param3.position,param2.position);
         param1.§<r§(this.§2!=§,this.§7G§,_loc6_);
      }
   }
}
