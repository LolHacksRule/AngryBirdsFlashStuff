package §;`§
{
   import §"!w§.b2MassData;
   import §"!w§.b2Shape;
   import §'!^§.b2Contact;
   import §'!^§.b2ContactEdge;
   import §8K§.b2internal;
   import §>!m§.§,t§;
   import §>!m§.b2AABB;
   import §>!m§.b2RayCastInput;
   import §>!m§.b2RayCastOutput;
   import §[!f§.b2Math;
   import §[!f§.b2Transform;
   import §[!f§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §[!$§:b2MassData;
      
      b2internal var §;p§:b2AABB;
      
      b2internal var §6!y§:Number;
      
      b2internal var §+!>§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §]x§:b2Shape;
      
      b2internal var §,w§:Number;
      
      b2internal var §6T§:Number;
      
      b2internal var §9f§;
      
      b2internal var §8"4§:b2FilterData;
      
      b2internal var §#"H§:Boolean;
      
      b2internal var §#!;§;
      
      public function b2Fixture()
      {
         this.§8"4§ = new b2FilterData();
         super();
         this.§;p§ = new b2AABB();
         this.§#!;§ = null;
         this.m_body = null;
         this.§+!>§ = null;
         this.§]x§ = null;
         this.§6!y§ = 0;
         this.§,w§ = 0;
         this.§6T§ = 0;
      }
      
      public function §^![§() : int
      {
         return this.§]x§.§^![§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§]x§;
      }
      
      public function §&1§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§#"H§ == param1)
         {
            return;
         }
         this.§#"H§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§"R§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§9!G§;
            _loc4_ = _loc3_.§']§();
            _loc5_ = _loc3_.§]J§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§&1§(_loc4_.§-T§() || _loc5_.§-T§());
            }
            _loc2_ = _loc2_.§@!6§;
         }
      }
      
      public function §-T§() : Boolean
      {
         return this.§#"H§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§8"4§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§"R§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§9!G§;
            _loc4_ = _loc3_.§']§();
            _loc5_ = _loc3_.§]J§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§'$§();
            }
            _loc2_ = _loc2_.§@!6§;
         }
      }
      
      public function §'!>§() : b2FilterData
      {
         return this.§8"4§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §0!7§() : b2Fixture
      {
         return this.§+!>§;
      }
      
      public function GetUserData() : *
      {
         return this.§#!;§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§#!;§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§]x§.TestPoint(this.m_body.§[!1§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§]x§.RayCast(param1,param2,this.m_body.§[!1§());
      }
      
      public function §#"9§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§]x§.ComputeMass(param1,this.§6!y§);
         return param1;
      }
      
      public function §,g§(param1:Number) : void
      {
         this.§6!y§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§6!y§;
      }
      
      public function §&!+§() : Number
      {
         return this.§,w§;
      }
      
      public function §3p§(param1:Number) : void
      {
         this.§,w§ = param1;
      }
      
      public function §-c§() : Number
      {
         return this.§6T§;
      }
      
      public function §[!z§(param1:Number) : void
      {
         this.§6T§ = param1;
      }
      
      public function §@"+§() : b2AABB
      {
         return this.§;p§;
      }
      
      b2internal function §&!L§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§#!;§ = param3.§?!#§;
         this.§,w§ = param3.friction;
         this.§6T§ = param3.restitution;
         this.m_body = param1;
         this.§+!>§ = null;
         this.§8"4§ = param3.filter.Copy();
         this.§#"H§ = param3.§&t§;
         this.§]x§ = param3.shape.Copy();
         this.§6!y§ = param3.density;
      }
      
      b2internal function §<!p§() : void
      {
         this.§]x§ = null;
      }
      
      b2internal function §=!o§(param1:§,t§, param2:b2Transform) : void
      {
         this.§]x§.ComputeAABB(this.§;p§,param2);
         this.§9f§ = param1.§=!o§(this.§;p§,this);
      }
      
      b2internal function §4x§(param1:§,t§) : void
      {
         if(this.§9f§ == null)
         {
            return;
         }
         param1.§4x§(this.§9f§);
         this.§9f§ = null;
      }
      
      b2internal function §>G§(param1:§,t§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§9f§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§]x§.ComputeAABB(_loc4_,param2);
         this.§]x§.ComputeAABB(_loc5_,param3);
         this.§;p§.§ T§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§0t§(param3.position,param2.position);
         param1.§import§(this.§9f§,this.§;p§,_loc6_);
      }
   }
}
