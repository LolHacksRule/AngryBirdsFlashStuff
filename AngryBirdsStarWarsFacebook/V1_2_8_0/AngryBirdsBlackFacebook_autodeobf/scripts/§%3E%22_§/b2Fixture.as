package §>"_§
{
   import §1!2§.b2MassData;
   import §1!2§.b2Shape;
   import §7!I§.b2internal;
   import §7"A§.b2Math;
   import §7"A§.b2Transform;
   import §7"A§.b2Vec2;
   import §>r§.§2";§;
   import §>r§.b2AABB;
   import §>r§.b2RayCastInput;
   import §>r§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §3k§:b2MassData;
      
      b2internal var §&#0§:b2AABB;
      
      b2internal var §2"#§:Number;
      
      b2internal var §?"Z§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §6"m§:b2Shape;
      
      b2internal var §&!e§:Number;
      
      b2internal var §%"p§:Number;
      
      b2internal var §0#"§;
      
      b2internal var §,#4§:b2FilterData;
      
      b2internal var §<!4§:Boolean;
      
      b2internal var §[!^§;
      
      public function b2Fixture()
      {
         this.§,#4§ = new b2FilterData();
         super();
         this.§&#0§ = new b2AABB();
         this.§[!^§ = null;
         this.m_body = null;
         this.§?"Z§ = null;
         this.§6"m§ = null;
         this.§2"#§ = 0;
         this.§&!e§ = 0;
         this.§%"p§ = 0;
      }
      
      public function §+"M§() : int
      {
         return this.§6"m§.§+"M§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§6"m§;
      }
      
      public function §9"[§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§<!4§ == param1)
         {
            return;
         }
         this.§<!4§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§&!4§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§;!@§;
            _loc4_ = _loc3_.§%"<§();
            _loc5_ = _loc3_.§&"!§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§9"[§(_loc4_.§]!a§() || _loc5_.§]!a§());
            }
            _loc2_ = _loc2_.§7u§;
         }
      }
      
      public function §]!a§() : Boolean
      {
         return this.§<!4§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§,#4§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§&!4§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§;!@§;
            _loc4_ = _loc3_.§%"<§();
            _loc5_ = _loc3_.§&"!§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§]!U§();
            }
            _loc2_ = _loc2_.§7u§;
         }
      }
      
      public function §6"@§() : b2FilterData
      {
         return this.§,#4§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §^a§() : b2Fixture
      {
         return this.§?"Z§;
      }
      
      public function GetUserData() : *
      {
         return this.§[!^§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§[!^§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§6"m§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§6"m§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function §7!^§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§6"m§.ComputeMass(param1,this.§2"#§);
         return param1;
      }
      
      public function SetDensity(param1:Number) : void
      {
         this.§2"#§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§2"#§;
      }
      
      public function §`x§() : Number
      {
         return this.§&!e§;
      }
      
      public function §#!O§(param1:Number) : void
      {
         this.§&!e§ = param1;
      }
      
      public function §@!i§() : Number
      {
         return this.§%"p§;
      }
      
      public function §4"K§(param1:Number) : void
      {
         this.§%"p§ = param1;
      }
      
      public function §""Y§() : b2AABB
      {
         return this.§&#0§;
      }
      
      b2internal function § "a§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§[!^§ = param3.§="M§;
         this.§&!e§ = param3.friction;
         this.§%"p§ = param3.restitution;
         this.m_body = param1;
         this.§?"Z§ = null;
         this.§,#4§ = param3.filter.Copy();
         this.§<!4§ = param3.§ !$§;
         this.§6"m§ = param3.shape.Copy();
         this.§2"#§ = param3.density;
      }
      
      b2internal function § !g§() : void
      {
         this.§6"m§ = null;
      }
      
      b2internal function §4"6§(param1:§2";§, param2:b2Transform) : void
      {
         this.§6"m§.ComputeAABB(this.§&#0§,param2);
         this.§0#"§ = param1.§4"6§(this.§&#0§,this);
      }
      
      b2internal function §<!i§(param1:§2";§) : void
      {
         if(this.§0#"§ == null)
         {
            return;
         }
         param1.§<!i§(this.§0#"§);
         this.§0#"§ = null;
      }
      
      b2internal function §?",§(param1:§2";§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§0#"§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§6"m§.ComputeAABB(_loc4_,param2);
         this.§6"m§.ComputeAABB(_loc5_,param3);
         this.§&#0§.§5!^§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§["+§(param3.position,param2.position);
         param1.§9#7§(this.§0#"§,this.§&#0§,_loc6_);
      }
   }
}
