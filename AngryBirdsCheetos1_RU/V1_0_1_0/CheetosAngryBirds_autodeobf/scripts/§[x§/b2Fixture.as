package §[x§
{
   import §#b§.b2MassData;
   import §#b§.b2Shape;
   import §%!B§.§-!9§;
   import §%!B§.b2AABB;
   import §%!B§.b2RayCastInput;
   import §%!B§.b2RayCastOutput;
   import §&!B§.b2Math;
   import §&!B§.b2Transform;
   import §&!B§.b2Vec2;
   import §43§.b2Contact;
   import §43§.b2ContactEdge;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §;!?§:b2MassData;
      
      b2internal var §[!%§:b2AABB;
      
      b2internal var §7!M§:Number;
      
      b2internal var §83§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §[T§:b2Shape;
      
      b2internal var §'q§:Number;
      
      b2internal var §?!G§:Number;
      
      b2internal var §[!Q§;
      
      b2internal var §,!0§:b2FilterData;
      
      b2internal var §2!$§:Boolean;
      
      b2internal var §%m§;
      
      public function b2Fixture()
      {
         this.§,!0§ = new b2FilterData();
         super();
         this.§[!%§ = new b2AABB();
         this.§%m§ = null;
         this.m_body = null;
         this.§83§ = null;
         this.§[T§ = null;
         this.§7!M§ = 0;
         this.§'q§ = 0;
         this.§?!G§ = 0;
      }
      
      public function §=!,§() : int
      {
         return this.§[T§.§=!,§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§[T§;
      }
      
      public function §-!+§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§2!$§ == param1)
         {
            return;
         }
         this.§2!$§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§-o§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§#0§;
            _loc4_ = _loc3_.§31§();
            _loc5_ = _loc3_.§;!E§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§-!+§(_loc4_.§9#§() || _loc5_.§9#§());
            }
            _loc2_ = _loc2_.§;! §;
         }
      }
      
      public function §9#§() : Boolean
      {
         return this.§2!$§;
      }
      
      public function §'v§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§,!0§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§-o§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§#0§;
            _loc4_ = _loc3_.§31§();
            _loc5_ = _loc3_.§;!E§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§!!3§();
            }
            _loc2_ = _loc2_.§;! §;
         }
      }
      
      public function §#@§() : b2FilterData
      {
         return this.§,!0§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §&-§() : b2Fixture
      {
         return this.§83§;
      }
      
      public function GetUserData() : *
      {
         return this.§%m§;
      }
      
      public function §4R§(param1:*) : void
      {
         this.§%m§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§[T§.TestPoint(this.m_body.§4g§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§[T§.RayCast(param1,param2,this.m_body.§4g§());
      }
      
      public function §0x§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§[T§.ComputeMass(param1,this.§7!M§);
         return param1;
      }
      
      public function §9!0§(param1:Number) : void
      {
         this.§7!M§ = param1;
      }
      
      public function §%!T§() : Number
      {
         return this.§7!M§;
      }
      
      public function §%!?§() : Number
      {
         return this.§'q§;
      }
      
      public function §5D§(param1:Number) : void
      {
         this.§'q§ = param1;
      }
      
      public function §]!8§() : Number
      {
         return this.§?!G§;
      }
      
      public function §"?§(param1:Number) : void
      {
         this.§?!G§ = param1;
      }
      
      public function §0!4§() : b2AABB
      {
         return this.§[!%§;
      }
      
      b2internal function §[?§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§%m§ = param3.§ X§;
         this.§'q§ = param3.friction;
         this.§?!G§ = param3.restitution;
         this.m_body = param1;
         this.§83§ = null;
         this.§,!0§ = param3.filter.Copy();
         this.§2!$§ = param3.§2k§;
         this.§[T§ = param3.shape.Copy();
         this.§7!M§ = param3.density;
      }
      
      b2internal function §58§() : void
      {
         this.§[T§ = null;
      }
      
      b2internal function §0!^§(param1:§-!9§, param2:b2Transform) : void
      {
         this.§[T§.ComputeAABB(this.§[!%§,param2);
         this.§[!Q§ = param1.§0!^§(this.§[!%§,this);
      }
      
      b2internal function §@!@§(param1:§-!9§) : void
      {
         if(this.§[!Q§ == null)
         {
            return;
         }
         param1.§@!@§(this.§[!Q§);
         this.§[!Q§ = null;
      }
      
      b2internal function §"D§(param1:§-!9§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§[!Q§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§[T§.ComputeAABB(_loc4_,param2);
         this.§[T§.ComputeAABB(_loc5_,param3);
         this.§[!%§.§<[§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§12§(param3.position,param2.position);
         param1.§]!=§(this.§[!Q§,this.§[!%§,_loc6_);
      }
   }
}
