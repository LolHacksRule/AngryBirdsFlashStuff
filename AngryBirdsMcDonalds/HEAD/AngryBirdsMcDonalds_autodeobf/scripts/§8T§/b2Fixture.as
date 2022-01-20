package §8T§
{
   import §+S§.b2Math;
   import §+S§.b2Transform;
   import §+S§.b2Vec2;
   import §,!V§.§"!>§;
   import §,!V§.b2AABB;
   import §,!V§.b2RayCastInput;
   import §,!V§.b2RayCastOutput;
   import §6!g§.b2Contact;
   import §6!g§.b2ContactEdge;
   import §<!D§.b2MassData;
   import §<!D§.b2Shape;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §+9§:b2MassData;
      
      b2internal var §!g§:b2AABB;
      
      b2internal var §5F§:Number;
      
      b2internal var §[h§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §=!>§:b2Shape;
      
      b2internal var §]!o§:Number;
      
      b2internal var §,!2§:Number;
      
      b2internal var §46§;
      
      b2internal var §!!O§:b2FilterData;
      
      b2internal var §5v§:Boolean;
      
      b2internal var §0!R§;
      
      public function b2Fixture()
      {
         this.§!!O§ = new b2FilterData();
         super();
         this.§!g§ = new b2AABB();
         this.§0!R§ = null;
         this.m_body = null;
         this.§[h§ = null;
         this.§=!>§ = null;
         this.§5F§ = 0;
         this.§]!o§ = 0;
         this.§,!2§ = 0;
      }
      
      public function §1l§() : int
      {
         return this.§=!>§.§1l§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§=!>§;
      }
      
      public function §;!H§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§5v§ == param1)
         {
            return;
         }
         this.§5v§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§ v§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§]>§;
            _loc4_ = _loc3_.§8!O§();
            _loc5_ = _loc3_.§>$§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§;!H§(_loc4_.§;!9§() || _loc5_.§;!9§());
            }
            _loc2_ = _loc2_.§=h§;
         }
      }
      
      public function §;!9§() : Boolean
      {
         return this.§5v§;
      }
      
      public function §-d§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§!!O§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§ v§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§]>§;
            _loc4_ = _loc3_.§8!O§();
            _loc5_ = _loc3_.§>$§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§6&§();
            }
            _loc2_ = _loc2_.§=h§;
         }
      }
      
      public function §[!h§() : b2FilterData
      {
         return this.§!!O§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §%!J§() : b2Fixture
      {
         return this.§[h§;
      }
      
      public function GetUserData() : *
      {
         return this.§0!R§;
      }
      
      public function §7K§(param1:*) : void
      {
         this.§0!R§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§=!>§.TestPoint(this.m_body.§+!g§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§=!>§.RayCast(param1,param2,this.m_body.§+!g§());
      }
      
      public function §9!L§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§=!>§.ComputeMass(param1,this.§5F§);
         return param1;
      }
      
      public function §4!"§(param1:Number) : void
      {
         this.§5F§ = param1;
      }
      
      public function §^!j§() : Number
      {
         return this.§5F§;
      }
      
      public function §^!V§() : Number
      {
         return this.§]!o§;
      }
      
      public function §`N§(param1:Number) : void
      {
         this.§]!o§ = param1;
      }
      
      public function §@A§() : Number
      {
         return this.§,!2§;
      }
      
      public function §'!L§(param1:Number) : void
      {
         this.§,!2§ = param1;
      }
      
      public function §'i§() : b2AABB
      {
         return this.§!g§;
      }
      
      b2internal function §[u§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§0!R§ = param3.§-&§;
         this.§]!o§ = param3.friction;
         this.§,!2§ = param3.restitution;
         this.m_body = param1;
         this.§[h§ = null;
         this.§!!O§ = param3.filter.Copy();
         this.§5v§ = param3.§!!Z§;
         this.§=!>§ = param3.shape.Copy();
         this.§5F§ = param3.density;
      }
      
      b2internal function §60§() : void
      {
         this.§=!>§ = null;
      }
      
      b2internal function §,!F§(param1:§"!>§, param2:b2Transform) : void
      {
         this.§=!>§.ComputeAABB(this.§!g§,param2);
         this.§46§ = param1.§,!F§(this.§!g§,this);
      }
      
      b2internal function §9!8§(param1:§"!>§) : void
      {
         if(this.§46§ == null)
         {
            return;
         }
         param1.§9!8§(this.§46§);
         this.§46§ = null;
      }
      
      b2internal function §12§(param1:§"!>§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§46§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§=!>§.ComputeAABB(_loc4_,param2);
         this.§=!>§.ComputeAABB(_loc5_,param3);
         this.§!g§.§>o§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§1!,§(param3.position,param2.position);
         param1.§^!3§(this.§46§,this.§!g§,_loc6_);
      }
   }
}
