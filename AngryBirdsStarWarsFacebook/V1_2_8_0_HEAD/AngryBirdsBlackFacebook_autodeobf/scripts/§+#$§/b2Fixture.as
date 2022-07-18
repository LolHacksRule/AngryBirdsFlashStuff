package §+#$§
{
   import §3"5§.§8t§;
   import §3"5§.b2AABB;
   import §3"5§.b2RayCastInput;
   import §3"5§.b2RayCastOutput;
   import §4!$§.b2MassData;
   import §4!$§.b2Shape;
   import §5"i§.b2internal;
   import §8[§.b2Contact;
   import §8[§.b2ContactEdge;
   import §[R§.b2Math;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §9"S§:b2MassData;
      
      b2internal var §?!>§:b2AABB;
      
      b2internal var §7!P§:Number;
      
      b2internal var §!"!§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §5%§:b2Shape;
      
      b2internal var §9!y§:Number;
      
      b2internal var §=!K§:Number;
      
      b2internal var §4"t§;
      
      b2internal var §5"c§:b2FilterData;
      
      b2internal var §&#!§:Boolean;
      
      b2internal var §0!+§;
      
      public function b2Fixture()
      {
         this.§5"c§ = new b2FilterData();
         super();
         this.§?!>§ = new b2AABB();
         this.§0!+§ = null;
         this.m_body = null;
         this.§!"!§ = null;
         this.§5%§ = null;
         this.§7!P§ = 0;
         this.§9!y§ = 0;
         this.§=!K§ = 0;
      }
      
      public function §8! §() : int
      {
         return this.§5%§.§8! §();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§5%§;
      }
      
      public function §"!I§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§&#!§ == param1)
         {
            return;
         }
         this.§&#!§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§9!K§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§>"6§;
            _loc4_ = _loc3_.§?!@§();
            _loc5_ = _loc3_.§;"R§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§"!I§(_loc4_.§!W§() || _loc5_.§!W§());
            }
            _loc2_ = _loc2_.§]!D§;
         }
      }
      
      public function §!W§() : Boolean
      {
         return this.§&#!§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§5"c§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§9!K§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§>"6§;
            _loc4_ = _loc3_.§?!@§();
            _loc5_ = _loc3_.§;"R§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§=y§();
            }
            _loc2_ = _loc2_.§]!D§;
         }
      }
      
      public function §`!7§() : b2FilterData
      {
         return this.§5"c§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §>!>§() : b2Fixture
      {
         return this.§!"!§;
      }
      
      public function GetUserData() : *
      {
         return this.§0!+§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§0!+§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§5%§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§5%§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function §5!O§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§5%§.ComputeMass(param1,this.§7!P§);
         return param1;
      }
      
      public function SetDensity(param1:Number) : void
      {
         this.§7!P§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§7!P§;
      }
      
      public function §`"s§() : Number
      {
         return this.§9!y§;
      }
      
      public function §"Y§(param1:Number) : void
      {
         this.§9!y§ = param1;
      }
      
      public function §7H§() : Number
      {
         return this.§=!K§;
      }
      
      public function §5q§(param1:Number) : void
      {
         this.§=!K§ = param1;
      }
      
      public function §8# §() : b2AABB
      {
         return this.§?!>§;
      }
      
      b2internal function §=!S§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§0!+§ = param3.§@"g§;
         this.§9!y§ = param3.friction;
         this.§=!K§ = param3.restitution;
         this.m_body = param1;
         this.§!"!§ = null;
         this.§5"c§ = param3.filter.Copy();
         this.§&#!§ = param3.§-"`§;
         this.§5%§ = param3.shape.Copy();
         this.§7!P§ = param3.density;
      }
      
      b2internal function §;!"§() : void
      {
         this.§5%§ = null;
      }
      
      b2internal function § #Q§(param1:§8t§, param2:b2Transform) : void
      {
         this.§5%§.ComputeAABB(this.§?!>§,param2);
         this.§4"t§ = param1.§ #Q§(this.§?!>§,this);
      }
      
      b2internal function §,X§(param1:§8t§) : void
      {
         if(this.§4"t§ == null)
         {
            return;
         }
         param1.§,X§(this.§4"t§);
         this.§4"t§ = null;
      }
      
      b2internal function §4!A§(param1:§8t§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§4"t§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§5%§.ComputeAABB(_loc4_,param2);
         this.§5%§.ComputeAABB(_loc5_,param3);
         this.§?!>§.§"";§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§8!3§(param3.position,param2.position);
         param1.§=!`§(this.§4"t§,this.§?!>§,_loc6_);
      }
   }
}
