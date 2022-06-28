package §`w§
{
   import §2!+§.b2MassData;
   import §2!+§.b2Shape;
   import §7!u§.b2internal;
   import §72§.§<X§;
   import §72§.b2AABB;
   import §72§.b2RayCastInput;
   import §72§.b2RayCastOutput;
   import §>H§.b2Math;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   import §break§.b2Contact;
   import §break§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §+=§:b2MassData;
      
      b2internal var §^!5§:b2AABB;
      
      b2internal var §7!%§:Number;
      
      b2internal var §3=§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §2!$§:b2Shape;
      
      b2internal var §-!$§:Number;
      
      b2internal var §&!]§:Number;
      
      b2internal var §!!o§;
      
      b2internal var §<j§:b2FilterData;
      
      b2internal var §?!h§:Boolean;
      
      b2internal var §?f§;
      
      public function b2Fixture()
      {
         this.§<j§ = new b2FilterData();
         super();
         this.§^!5§ = new b2AABB();
         this.§?f§ = null;
         this.m_body = null;
         this.§3=§ = null;
         this.§2!$§ = null;
         this.§7!%§ = 0;
         this.§-!$§ = 0;
         this.§&!]§ = 0;
      }
      
      public function §2!r§() : int
      {
         return this.§2!$§.§2!r§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§2!$§;
      }
      
      public function §[!G§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§?!h§ == param1)
         {
            return;
         }
         this.§?!h§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§"x§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§+2§;
            _loc4_ = _loc3_.§?!l§();
            _loc5_ = _loc3_.§0+§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§[!G§(_loc4_.§2r§() || _loc5_.§2r§());
            }
            _loc2_ = _loc2_.§-!3§;
         }
      }
      
      public function §2r§() : Boolean
      {
         return this.§?!h§;
      }
      
      public function §0S§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§<j§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§"x§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§+2§;
            _loc4_ = _loc3_.§?!l§();
            _loc5_ = _loc3_.§0+§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§=!<§();
            }
            _loc2_ = _loc2_.§-!3§;
         }
      }
      
      public function §,`§() : b2FilterData
      {
         return this.§<j§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §+!N§() : b2Fixture
      {
         return this.§3=§;
      }
      
      public function GetUserData() : *
      {
         return this.§?f§;
      }
      
      public function §`!N§(param1:*) : void
      {
         this.§?f§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§2!$§.TestPoint(this.m_body.§2!0§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§2!$§.RayCast(param1,param2,this.m_body.§2!0§());
      }
      
      public function §!!+§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§2!$§.ComputeMass(param1,this.§7!%§);
         return param1;
      }
      
      public function §3N§(param1:Number) : void
      {
         this.§7!%§ = param1;
      }
      
      public function §>z§() : Number
      {
         return this.§7!%§;
      }
      
      public function §7!!§() : Number
      {
         return this.§-!$§;
      }
      
      public function §&!V§(param1:Number) : void
      {
         this.§-!$§ = param1;
      }
      
      public function §`#§() : Number
      {
         return this.§&!]§;
      }
      
      public function §,t§(param1:Number) : void
      {
         this.§&!]§ = param1;
      }
      
      public function §=g§() : b2AABB
      {
         return this.§^!5§;
      }
      
      b2internal function §`4§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§?f§ = param3.§+!+§;
         this.§-!$§ = param3.friction;
         this.§&!]§ = param3.restitution;
         this.m_body = param1;
         this.§3=§ = null;
         this.§<j§ = param3.filter.Copy();
         this.§?!h§ = param3.§6I§;
         this.§2!$§ = param3.shape.Copy();
         this.§7!%§ = param3.density;
      }
      
      b2internal function §[M§() : void
      {
         this.§2!$§ = null;
      }
      
      b2internal function §0!S§(param1:§<X§, param2:b2Transform) : void
      {
         this.§2!$§.ComputeAABB(this.§^!5§,param2);
         this.§!!o§ = param1.§0!S§(this.§^!5§,this);
      }
      
      b2internal function §!O§(param1:§<X§) : void
      {
         if(this.§!!o§ == null)
         {
            return;
         }
         param1.§!O§(this.§!!o§);
         this.§!!o§ = null;
      }
      
      b2internal function §'!@§(param1:§<X§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§!!o§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§2!$§.ComputeAABB(_loc4_,param2);
         this.§2!$§.ComputeAABB(_loc5_,param3);
         this.§^!5§.§%q§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§54§(param3.position,param2.position);
         param1.§`=§(this.§!!o§,this.§^!5§,_loc6_);
      }
   }
}
