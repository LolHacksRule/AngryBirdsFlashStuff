package §1!+§
{
   import §%!9§.b2Math;
   import §%!9§.b2Transform;
   import §%!9§.b2Vec2;
   import §+#f§.b2MassData;
   import §+#f§.b2Shape;
   import §7"^§.§'"J§;
   import §7"^§.b2AABB;
   import §7"^§.b2RayCastInput;
   import §7"^§.b2RayCastOutput;
   import §9#K§.b2internal;
   import §[#L§.b2Contact;
   import §[#L§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §8!+§:b2MassData;
      
      b2internal var t1_aabb:b2AABB;
      
      b2internal var t2_aabb:b2AABB;
      
      b2internal var §;#8§:b2AABB;
      
      b2internal var §[!;§:Number;
      
      b2internal var §3!=§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §&#f§:b2Shape;
      
      b2internal var §+"B§:Number;
      
      b2internal var §]$3§:Number;
      
      b2internal var §-#T§;
      
      b2internal var §'"i§:b2FilterData;
      
      b2internal var §7!$§:Boolean;
      
      b2internal var §]"q§;
      
      public function b2Fixture()
      {
         this.§'"i§ = new b2FilterData();
         super();
         this.§;#8§ = new b2AABB();
         this.§]"q§ = null;
         this.m_body = null;
         this.§3!=§ = null;
         this.§&#f§ = null;
         this.§[!;§ = 0;
         this.§+"B§ = 0;
         this.§]$3§ = 0;
      }
      
      public function §%"+§() : int
      {
         return this.§&#f§.§%"+§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§&#f§;
      }
      
      public function §9!`§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§7!$§ == param1)
         {
            return;
         }
         this.§7!$§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§#"`§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§,#v§;
            _loc4_ = _loc3_.§]"v§();
            _loc5_ = _loc3_.§4!i§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§9!`§(_loc4_.§1!`§() || _loc5_.§1!`§());
            }
            _loc2_ = _loc2_.§+!e§;
         }
      }
      
      public function §1!`§() : Boolean
      {
         return this.§7!$§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§'"i§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§#"`§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§,#v§;
            _loc4_ = _loc3_.§]"v§();
            _loc5_ = _loc3_.§4!i§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§8#x§();
            }
            _loc2_ = _loc2_.§+!e§;
         }
      }
      
      public function GetFilterData() : b2FilterData
      {
         return this.§'"i§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §,=§() : b2Fixture
      {
         return this.§3!=§;
      }
      
      public function GetUserData() : *
      {
         return this.§]"q§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§]"q§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§&#f§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§&#f§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function §1"[§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§&#f§.ComputeMass(param1,this.§[!;§);
         return param1;
      }
      
      public function SetDensity(param1:Number) : void
      {
         this.§[!;§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§[!;§;
      }
      
      public function GetFriction() : Number
      {
         return this.§+"B§;
      }
      
      public function SetFriction(param1:Number) : void
      {
         this.§+"B§ = param1;
      }
      
      public function GetRestitution() : Number
      {
         return this.§]$3§;
      }
      
      public function SetRestitution(param1:Number) : void
      {
         this.§]$3§ = param1;
      }
      
      public function §##g§() : b2AABB
      {
         return this.§;#8§;
      }
      
      b2internal function §@!7§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§]"q§ = param3.§1$%§;
         this.§+"B§ = param3.friction;
         this.§]$3§ = param3.restitution;
         this.m_body = param1;
         this.§3!=§ = null;
         this.§'"i§ = param3.filter.Copy();
         this.§7!$§ = param3.§?r§;
         this.§&#f§ = param3.shape.Copy();
         this.§[!;§ = param3.density;
      }
      
      b2internal function §@#V§() : void
      {
         this.§&#f§ = null;
      }
      
      b2internal function §;!C§(param1:§'"J§, param2:b2Transform) : void
      {
         this.§&#f§.ComputeAABB(this.§;#8§,param2);
         this.§-#T§ = param1.§;!C§(this.§;#8§,this);
      }
      
      b2internal function §-!"§(param1:§'"J§) : void
      {
         if(this.§-#T§ == null)
         {
            return;
         }
         param1.§-!"§(this.§-#T§);
         this.§-#T§ = null;
      }
      
      b2internal function § 4§(param1:§'"J§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§-#T§)
         {
            return;
         }
         if(this.t1_aabb == null)
         {
            this.t1_aabb = new b2AABB();
         }
         else
         {
            this.t1_aabb.§""x§.x = 0;
            this.t1_aabb.§""x§.y = 0;
            this.t1_aabb.§%"i§.x = 0;
            this.t1_aabb.§%"i§.y = 0;
         }
         if(this.t2_aabb == null)
         {
            this.t2_aabb = new b2AABB();
         }
         else
         {
            this.t2_aabb.§""x§.x = 0;
            this.t2_aabb.§""x§.y = 0;
            this.t2_aabb.§%"i§.x = 0;
            this.t2_aabb.§%"i§.y = 0;
         }
         this.§&#f§.ComputeAABB(this.t1_aabb,param2);
         this.§&#f§.ComputeAABB(this.t2_aabb,param3);
         this.§;#8§.§[$+§(this.t1_aabb,this.t2_aabb);
         var _loc4_:b2Vec2 = b2Math.§ "&§(param3.position,param2.position);
         param1.§[H§(this.§-#T§,this.§;#8§,_loc4_);
      }
   }
}
