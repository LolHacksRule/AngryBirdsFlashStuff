package §[W§
{
   import § !5§.b2internal;
   import §+,§.b2Math;
   import §+,§.b2Transform;
   import §+,§.b2Vec2;
   import §-!$§.b2MassData;
   import §-!$§.b2Shape;
   import §3!O§.b2Contact;
   import §3!O§.b2ContactEdge;
   import §?§.§"!2§;
   import §?§.b2AABB;
   import §?§.b2RayCastInput;
   import §?§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §`1§:b2MassData;
      
      b2internal var §'A§:b2AABB;
      
      b2internal var §'w§:Number;
      
      b2internal var §60§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §5D§:b2Shape;
      
      b2internal var §+`§:Number;
      
      b2internal var §?x§:Number;
      
      b2internal var §>8§;
      
      b2internal var §]d§:b2FilterData;
      
      b2internal var §"!P§:Boolean;
      
      b2internal var §40§;
      
      public function b2Fixture()
      {
         this.§]d§ = new b2FilterData();
         super();
         this.§'A§ = new b2AABB();
         this.§40§ = null;
         this.m_body = null;
         this.§60§ = null;
         this.§5D§ = null;
         this.§'w§ = 0;
         this.§+`§ = 0;
         this.§?x§ = 0;
      }
      
      public function §@i§() : int
      {
         return this.§5D§.§@i§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§5D§;
      }
      
      public function §!Z§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§"!P§ == param1)
         {
            return;
         }
         this.§"!P§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§4!U§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§1!=§;
            _loc4_ = _loc3_.§6!?§();
            _loc5_ = _loc3_.§4v§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§!Z§(_loc4_.§3!S§() || _loc5_.§3!S§());
            }
            _loc2_ = _loc2_.§"!+§;
         }
      }
      
      public function §3!S§() : Boolean
      {
         return this.§"!P§;
      }
      
      public function §8r§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§]d§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§4!U§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§1!=§;
            _loc4_ = _loc3_.§6!?§();
            _loc5_ = _loc3_.§4v§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§@m§();
            }
            _loc2_ = _loc2_.§"!+§;
         }
      }
      
      public function §4!>§() : b2FilterData
      {
         return this.§]d§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §25§() : b2Fixture
      {
         return this.§60§;
      }
      
      public function GetUserData() : *
      {
         return this.§40§;
      }
      
      public function §0!R§(param1:*) : void
      {
         this.§40§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§5D§.TestPoint(this.m_body.§@#§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§5D§.RayCast(param1,param2,this.m_body.§@#§());
      }
      
      public function §]v§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§5D§.ComputeMass(param1,this.§'w§);
         return param1;
      }
      
      public function §1!1§(param1:Number) : void
      {
         this.§'w§ = param1;
      }
      
      public function §^?§() : Number
      {
         return this.§'w§;
      }
      
      public function §1!U§() : Number
      {
         return this.§+`§;
      }
      
      public function §9T§(param1:Number) : void
      {
         this.§+`§ = param1;
      }
      
      public function §?;§() : Number
      {
         return this.§?x§;
      }
      
      public function §>,§(param1:Number) : void
      {
         this.§?x§ = param1;
      }
      
      public function §!,§() : b2AABB
      {
         return this.§'A§;
      }
      
      b2internal function §2Q§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§40§ = param3.§=!<§;
         this.§+`§ = param3.friction;
         this.§?x§ = param3.restitution;
         this.m_body = param1;
         this.§60§ = null;
         this.§]d§ = param3.filter.Copy();
         this.§"!P§ = param3.§^X§;
         this.§5D§ = param3.shape.Copy();
         this.§'w§ = param3.density;
      }
      
      b2internal function §;t§() : void
      {
         this.§5D§ = null;
      }
      
      b2internal function §6B§(param1:§"!2§, param2:b2Transform) : void
      {
         this.§5D§.ComputeAABB(this.§'A§,param2);
         this.§>8§ = param1.§6B§(this.§'A§,this);
      }
      
      b2internal function §%d§(param1:§"!2§) : void
      {
         if(this.§>8§ == null)
         {
            return;
         }
         param1.§%d§(this.§>8§);
         this.§>8§ = null;
      }
      
      b2internal function §6!^§(param1:§"!2§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§>8§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§5D§.ComputeAABB(_loc4_,param2);
         this.§5D§.ComputeAABB(_loc5_,param3);
         this.§'A§.§7!P§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§,!!§(param3.position,param2.position);
         param1.§!!0§(this.§>8§,this.§'A§,_loc6_);
      }
   }
}
