package §4U§
{
   import § Y§.§=!!§;
   import § Y§.b2AABB;
   import § Y§.b2RayCastInput;
   import § Y§.b2RayCastOutput;
   import §#!M§.b2internal;
   import §<!8§.b2Math;
   import §<!8§.b2Transform;
   import §<!8§.b2Vec2;
   import §>![§.b2MassData;
   import §>![§.b2Shape;
   import §`!O§.b2Contact;
   import §`!O§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §9k§:b2MassData;
      
      b2internal var §<!Y§:b2AABB;
      
      b2internal var §-!G§:Number;
      
      b2internal var §^!B§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §0L§:b2Shape;
      
      b2internal var §2s§:Number;
      
      b2internal var §7-§:Number;
      
      b2internal var §^!?§;
      
      b2internal var §=!R§:b2FilterData;
      
      b2internal var §?6§:Boolean;
      
      b2internal var §]%§;
      
      public function b2Fixture()
      {
         this.§=!R§ = new b2FilterData();
         super();
         this.§<!Y§ = new b2AABB();
         this.§]%§ = null;
         this.m_body = null;
         this.§^!B§ = null;
         this.§0L§ = null;
         this.§-!G§ = 0;
         this.§2s§ = 0;
         this.§7-§ = 0;
      }
      
      public function §6`§() : int
      {
         return this.§0L§.§6`§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§0L§;
      }
      
      public function §#!]§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§?6§ == param1)
         {
            return;
         }
         this.§?6§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§5!N§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§<l§;
            _loc4_ = _loc3_.§7#§();
            _loc5_ = _loc3_.§ O§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§#!]§(_loc4_.§]y§() || _loc5_.§]y§());
            }
            _loc2_ = _loc2_.§+!Q§;
         }
      }
      
      public function §]y§() : Boolean
      {
         return this.§?6§;
      }
      
      public function §4!&§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§=!R§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§5!N§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§<l§;
            _loc4_ = _loc3_.§7#§();
            _loc5_ = _loc3_.§ O§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§'+§();
            }
            _loc2_ = _loc2_.§+!Q§;
         }
      }
      
      public function §+!#§() : b2FilterData
      {
         return this.§=!R§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §#!3§() : b2Fixture
      {
         return this.§^!B§;
      }
      
      public function GetUserData() : *
      {
         return this.§]%§;
      }
      
      public function §3!Z§(param1:*) : void
      {
         this.§]%§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§0L§.TestPoint(this.m_body.§1!J§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§0L§.RayCast(param1,param2,this.m_body.§1!J§());
      }
      
      public function §]0§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§0L§.ComputeMass(param1,this.§-!G§);
         return param1;
      }
      
      public function §#w§(param1:Number) : void
      {
         this.§-!G§ = param1;
      }
      
      public function §73§() : Number
      {
         return this.§-!G§;
      }
      
      public function §3f§() : Number
      {
         return this.§2s§;
      }
      
      public function §<N§(param1:Number) : void
      {
         this.§2s§ = param1;
      }
      
      public function §?!L§() : Number
      {
         return this.§7-§;
      }
      
      public function §;!8§(param1:Number) : void
      {
         this.§7-§ = param1;
      }
      
      public function §0^§() : b2AABB
      {
         return this.§<!Y§;
      }
      
      b2internal function §&!W§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§]%§ = param3.§6!6§;
         this.§2s§ = param3.friction;
         this.§7-§ = param3.restitution;
         this.m_body = param1;
         this.§^!B§ = null;
         this.§=!R§ = param3.filter.Copy();
         this.§?6§ = param3.§"p§;
         this.§0L§ = param3.shape.Copy();
         this.§-!G§ = param3.density;
      }
      
      b2internal function §'D§() : void
      {
         this.§0L§ = null;
      }
      
      b2internal function §7N§(param1:§=!!§, param2:b2Transform) : void
      {
         this.§0L§.ComputeAABB(this.§<!Y§,param2);
         this.§^!?§ = param1.§7N§(this.§<!Y§,this);
      }
      
      b2internal function §9!"§(param1:§=!!§) : void
      {
         if(this.§^!?§ == null)
         {
            return;
         }
         param1.§9!"§(this.§^!?§);
         this.§^!?§ = null;
      }
      
      b2internal function §'?§(param1:§=!!§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§^!?§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§0L§.ComputeAABB(_loc4_,param2);
         this.§0L§.ComputeAABB(_loc5_,param3);
         this.§<!Y§.§!!Y§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§2!+§(param3.position,param2.position);
         param1.§?!S§(this.§^!?§,this.§<!Y§,_loc6_);
      }
   }
}
