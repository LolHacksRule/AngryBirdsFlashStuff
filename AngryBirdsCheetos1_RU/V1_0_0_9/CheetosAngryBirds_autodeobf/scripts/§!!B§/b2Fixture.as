package §!!B§
{
   import §3!&§.b2Contact;
   import §3!&§.b2ContactEdge;
   import §5p§.b2MassData;
   import §5p§.b2Shape;
   import §7S§.§"!P§;
   import §7S§.b2AABB;
   import §7S§.b2RayCastInput;
   import §7S§.b2RayCastOutput;
   import §;0§.b2internal;
   import §;U§.b2Math;
   import §;U§.b2Transform;
   import §;U§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §'R§:b2MassData;
      
      b2internal var §;X§:b2AABB;
      
      b2internal var §`!=§:Number;
      
      b2internal var §6!#§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §,!@§:b2Shape;
      
      b2internal var §"!#§:Number;
      
      b2internal var §6O§:Number;
      
      b2internal var §3T§;
      
      b2internal var §?!W§:b2FilterData;
      
      b2internal var §-!S§:Boolean;
      
      b2internal var § 5§;
      
      public function b2Fixture()
      {
         this.§?!W§ = new b2FilterData();
         super();
         this.§;X§ = new b2AABB();
         this.§ 5§ = null;
         this.m_body = null;
         this.§6!#§ = null;
         this.§,!@§ = null;
         this.§`!=§ = 0;
         this.§"!#§ = 0;
         this.§6O§ = 0;
      }
      
      public function §9o§() : int
      {
         return this.§,!@§.§9o§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§,!@§;
      }
      
      public function §!!]§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§-!S§ == param1)
         {
            return;
         }
         this.§-!S§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§""§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§ C§;
            _loc4_ = _loc3_.§-!V§();
            _loc5_ = _loc3_.§0&§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§!!]§(_loc4_.§&!'§() || _loc5_.§&!'§());
            }
            _loc2_ = _loc2_.§@!I§;
         }
      }
      
      public function §&!'§() : Boolean
      {
         return this.§-!S§;
      }
      
      public function §>x§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§?!W§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§""§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§ C§;
            _loc4_ = _loc3_.§-!V§();
            _loc5_ = _loc3_.§0&§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§4y§();
            }
            _loc2_ = _loc2_.§@!I§;
         }
      }
      
      public function §`!8§() : b2FilterData
      {
         return this.§?!W§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §3q§() : b2Fixture
      {
         return this.§6!#§;
      }
      
      public function GetUserData() : *
      {
         return this.§ 5§;
      }
      
      public function §+W§(param1:*) : void
      {
         this.§ 5§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§,!@§.TestPoint(this.m_body.§4>§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§,!@§.RayCast(param1,param2,this.m_body.§4>§());
      }
      
      public function §7,§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§,!@§.ComputeMass(param1,this.§`!=§);
         return param1;
      }
      
      public function §0!A§(param1:Number) : void
      {
         this.§`!=§ = param1;
      }
      
      public function §?!3§() : Number
      {
         return this.§`!=§;
      }
      
      public function §32§() : Number
      {
         return this.§"!#§;
      }
      
      public function §1?§(param1:Number) : void
      {
         this.§"!#§ = param1;
      }
      
      public function §7!&§() : Number
      {
         return this.§6O§;
      }
      
      public function §<v§(param1:Number) : void
      {
         this.§6O§ = param1;
      }
      
      public function §`X§() : b2AABB
      {
         return this.§;X§;
      }
      
      b2internal function §=S§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§ 5§ = param3.§0?§;
         this.§"!#§ = param3.friction;
         this.§6O§ = param3.restitution;
         this.m_body = param1;
         this.§6!#§ = null;
         this.§?!W§ = param3.filter.Copy();
         this.§-!S§ = param3.§'!&§;
         this.§,!@§ = param3.shape.Copy();
         this.§`!=§ = param3.density;
      }
      
      b2internal function §true§() : void
      {
         this.§,!@§ = null;
      }
      
      b2internal function §0!3§(param1:§"!P§, param2:b2Transform) : void
      {
         this.§,!@§.ComputeAABB(this.§;X§,param2);
         this.§3T§ = param1.§0!3§(this.§;X§,this);
      }
      
      b2internal function §3N§(param1:§"!P§) : void
      {
         if(this.§3T§ == null)
         {
            return;
         }
         param1.§3N§(this.§3T§);
         this.§3T§ = null;
      }
      
      b2internal function §4`§(param1:§"!P§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§3T§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§,!@§.ComputeAABB(_loc4_,param2);
         this.§,!@§.ComputeAABB(_loc5_,param3);
         this.§;X§.§1g§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§4!'§(param3.position,param2.position);
         param1.§-![§(this.§3T§,this.§;X§,_loc6_);
      }
   }
}
