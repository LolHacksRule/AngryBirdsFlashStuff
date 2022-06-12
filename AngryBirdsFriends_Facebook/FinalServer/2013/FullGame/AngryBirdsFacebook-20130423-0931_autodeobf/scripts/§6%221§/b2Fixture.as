package §6"1§
{
   import §!"3§.b2MassData;
   import §!"3§.b2Shape;
   import §'"-§.§3Q§;
   import §'"-§.b2AABB;
   import §'"-§.b2RayCastInput;
   import §'"-§.b2RayCastOutput;
   import §'"6§.b2Contact;
   import §'"6§.b2ContactEdge;
   import §,"[§.b2internal;
   import §6!^§.b2Math;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §&!Y§:b2MassData;
      
      b2internal var §5"&§:b2AABB;
      
      b2internal var §%!$§:Number;
      
      b2internal var §?!g§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §>!!§:b2Shape;
      
      b2internal var §8&§:Number;
      
      b2internal var §7"$§:Number;
      
      b2internal var §2!x§;
      
      b2internal var §5"9§:b2FilterData;
      
      b2internal var §#!w§:Boolean;
      
      b2internal var §]!d§;
      
      public function b2Fixture()
      {
         this.§5"9§ = new b2FilterData();
         super();
         this.§5"&§ = new b2AABB();
         this.§]!d§ = null;
         this.m_body = null;
         this.§?!g§ = null;
         this.§>!!§ = null;
         this.§%!$§ = 0;
         this.§8&§ = 0;
         this.§7"$§ = 0;
      }
      
      public function §>!f§() : int
      {
         return this.§>!!§.§>!f§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§>!!§;
      }
      
      public function §<"C§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§#!w§ == param1)
         {
            return;
         }
         this.§#!w§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§0!z§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§-"G§;
            _loc4_ = _loc3_.§]!A§();
            _loc5_ = _loc3_.§3!]§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§<"C§(_loc4_.§0d§() || _loc5_.§0d§());
            }
            _loc2_ = _loc2_.§3u§;
         }
      }
      
      public function §0d§() : Boolean
      {
         return this.§#!w§;
      }
      
      public function §'y§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§5"9§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§0!z§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§-"G§;
            _loc4_ = _loc3_.§]!A§();
            _loc5_ = _loc3_.§3!]§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§^e§();
            }
            _loc2_ = _loc2_.§3u§;
         }
      }
      
      public function §%"L§() : b2FilterData
      {
         return this.§5"9§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §>!v§() : b2Fixture
      {
         return this.§?!g§;
      }
      
      public function GetUserData() : *
      {
         return this.§]!d§;
      }
      
      public function §^!>§(param1:*) : void
      {
         this.§]!d§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§>!!§.TestPoint(this.m_body.§!"0§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§>!!§.RayCast(param1,param2,this.m_body.§!"0§());
      }
      
      public function §!!v§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§>!!§.ComputeMass(param1,this.§%!$§);
         return param1;
      }
      
      public function §'!+§(param1:Number) : void
      {
         this.§%!$§ = param1;
      }
      
      public function §?!=§() : Number
      {
         return this.§%!$§;
      }
      
      public function §,!z§() : Number
      {
         return this.§8&§;
      }
      
      public function §5L§(param1:Number) : void
      {
         this.§8&§ = param1;
      }
      
      public function §-"E§() : Number
      {
         return this.§7"$§;
      }
      
      public function §-!e§(param1:Number) : void
      {
         this.§7"$§ = param1;
      }
      
      public function §+""§() : b2AABB
      {
         return this.§5"&§;
      }
      
      b2internal function §3!N§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§]!d§ = param3.§-!"§;
         this.§8&§ = param3.friction;
         this.§7"$§ = param3.restitution;
         this.m_body = param1;
         this.§?!g§ = null;
         this.§5"9§ = param3.filter.Copy();
         this.§#!w§ = param3.§"m§;
         this.§>!!§ = param3.shape.Copy();
         this.§%!$§ = param3.density;
      }
      
      b2internal function §2!s§() : void
      {
         this.§>!!§ = null;
      }
      
      b2internal function §!!$§(param1:§3Q§, param2:b2Transform) : void
      {
         this.§>!!§.ComputeAABB(this.§5"&§,param2);
         this.§2!x§ = param1.§!!$§(this.§5"&§,this);
      }
      
      b2internal function §&-§(param1:§3Q§) : void
      {
         if(this.§2!x§ == null)
         {
            return;
         }
         param1.§&-§(this.§2!x§);
         this.§2!x§ = null;
      }
      
      b2internal function §`?§(param1:§3Q§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§2!x§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§>!!§.ComputeAABB(_loc4_,param2);
         this.§>!!§.ComputeAABB(_loc5_,param3);
         this.§5"&§.§9!-§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§9N§(param3.position,param2.position);
         param1.§ c§(this.§2!x§,this.§5"&§,_loc6_);
      }
   }
}
