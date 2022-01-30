package §7!q§
{
   import §,k§.b2Contact;
   import §,k§.b2ContactEdge;
   import §-g§.§<!D§;
   import §-g§.b2AABB;
   import §-g§.b2RayCastInput;
   import §-g§.b2RayCastOutput;
   import §1!z§.b2Math;
   import §1!z§.b2Transform;
   import §1!z§.b2Vec2;
   import §5!]§.b2MassData;
   import §5!]§.b2Shape;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §9!a§:b2MassData;
      
      b2internal var §&U§:b2AABB;
      
      b2internal var §#!e§:Number;
      
      b2internal var §,"!§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §`![§:b2Shape;
      
      b2internal var §=!U§:Number;
      
      b2internal var §1!a§:Number;
      
      b2internal var §&;§;
      
      b2internal var §8[§:b2FilterData;
      
      b2internal var §`§:Boolean;
      
      b2internal var §]!_§;
      
      public function b2Fixture()
      {
         this.§8[§ = new b2FilterData();
         super();
         this.§&U§ = new b2AABB();
         this.§]!_§ = null;
         this.m_body = null;
         this.§,"!§ = null;
         this.§`![§ = null;
         this.§#!e§ = 0;
         this.§=!U§ = 0;
         this.§1!a§ = 0;
      }
      
      public function §7!r§() : int
      {
         return this.§`![§.§7!r§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§`![§;
      }
      
      public function §^e§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§`§ == param1)
         {
            return;
         }
         this.§`§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§2H§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§9"6§;
            _loc4_ = _loc3_.§[u§();
            _loc5_ = _loc3_.§<j§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§^e§(_loc4_.§;";§() || _loc5_.§;";§());
            }
            _loc2_ = _loc2_.§!",§;
         }
      }
      
      public function §;";§() : Boolean
      {
         return this.§`§;
      }
      
      public function §-!J§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§8[§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§2H§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§9"6§;
            _loc4_ = _loc3_.§[u§();
            _loc5_ = _loc3_.§<j§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§!!§();
            }
            _loc2_ = _loc2_.§!",§;
         }
      }
      
      public function §`$§() : b2FilterData
      {
         return this.§8[§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §5!`§() : b2Fixture
      {
         return this.§,"!§;
      }
      
      public function GetUserData() : *
      {
         return this.§]!_§;
      }
      
      public function §?!5§(param1:*) : void
      {
         this.§]!_§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§`![§.TestPoint(this.m_body.§4!f§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§`![§.RayCast(param1,param2,this.m_body.§4!f§());
      }
      
      public function §%!'§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§`![§.ComputeMass(param1,this.§#!e§);
         return param1;
      }
      
      public function §["3§(param1:Number) : void
      {
         this.§#!e§ = param1;
      }
      
      public function §,!D§() : Number
      {
         return this.§#!e§;
      }
      
      public function §?!_§() : Number
      {
         return this.§=!U§;
      }
      
      public function §"!#§(param1:Number) : void
      {
         this.§=!U§ = param1;
      }
      
      public function §?Q§() : Number
      {
         return this.§1!a§;
      }
      
      public function §'!c§(param1:Number) : void
      {
         this.§1!a§ = param1;
      }
      
      public function §!!f§() : b2AABB
      {
         return this.§&U§;
      }
      
      b2internal function §="1§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§]!_§ = param3.§>T§;
         this.§=!U§ = param3.friction;
         this.§1!a§ = param3.restitution;
         this.m_body = param1;
         this.§,"!§ = null;
         this.§8[§ = param3.filter.Copy();
         this.§`§ = param3.§]E§;
         this.§`![§ = param3.shape.Copy();
         this.§#!e§ = param3.density;
      }
      
      b2internal function §,"0§() : void
      {
         this.§`![§ = null;
      }
      
      b2internal function §3p§(param1:§<!D§, param2:b2Transform) : void
      {
         this.§`![§.ComputeAABB(this.§&U§,param2);
         this.§&;§ = param1.§3p§(this.§&U§,this);
      }
      
      b2internal function §1k§(param1:§<!D§) : void
      {
         if(this.§&;§ == null)
         {
            return;
         }
         param1.§1k§(this.§&;§);
         this.§&;§ = null;
      }
      
      b2internal function § g§(param1:§<!D§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§&;§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§`![§.ComputeAABB(_loc4_,param2);
         this.§`![§.ComputeAABB(_loc5_,param3);
         this.§&U§.§%!p§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§8"<§(param3.position,param2.position);
         param1.§]!G§(this.§&;§,this.§&U§,_loc6_);
      }
   }
}
