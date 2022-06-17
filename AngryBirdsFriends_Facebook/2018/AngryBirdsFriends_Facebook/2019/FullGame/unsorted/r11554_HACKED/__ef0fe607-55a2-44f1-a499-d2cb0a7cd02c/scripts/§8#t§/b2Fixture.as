package §8#t§
{
   import §0# §.b2Contact;
   import §0# §.b2ContactEdge;
   import §0J§.§"#O§;
   import §0J§.b2AABB;
   import §0J§.b2RayCastInput;
   import §0J§.b2RayCastOutput;
   import §[!3§.b2internal;
   import §]!o§.b2MassData;
   import §]!o§.b2Shape;
   import §`# §.b2Math;
   import §`# §.b2Transform;
   import §`# §.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §?"3§:b2MassData;
      
      b2internal var t1_aabb:b2AABB;
      
      b2internal var t2_aabb:b2AABB;
      
      b2internal var §2$1§:b2AABB;
      
      b2internal var §@#w§:Number;
      
      b2internal var §0$9§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §7"!§:b2Shape;
      
      b2internal var §8"z§:Number;
      
      b2internal var §1!L§:Number;
      
      b2internal var §>#+§;
      
      b2internal var §1#`§:b2FilterData;
      
      b2internal var §`#V§:Boolean;
      
      b2internal var §0#B§;
      
      public function b2Fixture()
      {
         this.§1#`§ = new b2FilterData();
         super();
         this.§2$1§ = new b2AABB();
         this.§0#B§ = null;
         this.m_body = null;
         this.§0$9§ = null;
         this.§7"!§ = null;
         this.§@#w§ = 0;
         this.§8"z§ = 0;
         this.§1!L§ = 0;
      }
      
      public function §52§() : int
      {
         return this.§7"!§.§52§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§7"!§;
      }
      
      public function §'" §(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§`#V§ == param1)
         {
            return;
         }
         this.§`#V§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§+$$§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§?"B§;
            _loc4_ = _loc3_.§7"-§();
            _loc5_ = _loc3_.§5"7§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§'" §(_loc4_.§?"]§() || _loc5_.§?"]§());
            }
            _loc2_ = _loc2_.§0!>§;
         }
      }
      
      public function §?"]§() : Boolean
      {
         return this.§`#V§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§1#`§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§+$$§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§?"B§;
            _loc4_ = _loc3_.§7"-§();
            _loc5_ = _loc3_.§5"7§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§?"8§();
            }
            _loc2_ = _loc2_.§0!>§;
         }
      }
      
      public function GetFilterData() : b2FilterData
      {
         return this.§1#`§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §+c§() : b2Fixture
      {
         return this.§0$9§;
      }
      
      public function GetUserData() : *
      {
         return this.§0#B§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§0#B§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§7"!§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§7"!§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function §%$?§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§7"!§.ComputeMass(param1,this.§@#w§);
         return param1;
      }
      
      public function SetDensity(param1:Number) : void
      {
         this.§@#w§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§@#w§;
      }
      
      public function GetFriction() : Number
      {
         return this.§8"z§;
      }
      
      public function SetFriction(param1:Number) : void
      {
         this.§8"z§ = param1;
      }
      
      public function GetRestitution() : Number
      {
         return this.§1!L§;
      }
      
      public function SetRestitution(param1:Number) : void
      {
         this.§1!L§ = param1;
      }
      
      public function §<4§() : b2AABB
      {
         return this.§2$1§;
      }
      
      b2internal function §9b§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§0#B§ = param3.§@"Z§;
         this.§8"z§ = param3.friction;
         this.§1!L§ = param3.restitution;
         this.m_body = param1;
         this.§0$9§ = null;
         this.§1#`§ = param3.filter.Copy();
         this.§`#V§ = param3.§ !8§;
         this.§7"!§ = param3.shape.Copy();
         this.§@#w§ = param3.density;
      }
      
      b2internal function §-!2§() : void
      {
         this.§7"!§ = null;
      }
      
      b2internal function §-"g§(param1:§"#O§, param2:b2Transform) : void
      {
         this.§7"!§.ComputeAABB(this.§2$1§,param2);
         this.§>#+§ = param1.§-"g§(this.§2$1§,this);
      }
      
      b2internal function §<v§(param1:§"#O§) : void
      {
         if(this.§>#+§ == null)
         {
            return;
         }
         param1.§<v§(this.§>#+§);
         this.§>#+§ = null;
      }
      
      b2internal function §5$D§(param1:§"#O§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§>#+§)
         {
            return;
         }
         if(this.t1_aabb == null)
         {
            this.t1_aabb = new b2AABB();
         }
         else
         {
            this.t1_aabb.§3"]§.x = 0;
            this.t1_aabb.§3"]§.y = 0;
            this.t1_aabb.§='§.x = 0;
            this.t1_aabb.§='§.y = 0;
         }
         if(this.t2_aabb == null)
         {
            this.t2_aabb = new b2AABB();
         }
         else
         {
            this.t2_aabb.§3"]§.x = 0;
            this.t2_aabb.§3"]§.y = 0;
            this.t2_aabb.§='§.x = 0;
            this.t2_aabb.§='§.y = 0;
         }
         this.§7"!§.ComputeAABB(this.t1_aabb,param2);
         this.§7"!§.ComputeAABB(this.t2_aabb,param3);
         this.§2$1§.§,"Z§(this.t1_aabb,this.t2_aabb);
         var _loc4_:b2Vec2 = b2Math.§?"S§(param3.position,param2.position);
         param1.§5!0§(this.§>#+§,this.§2$1§,_loc4_);
      }
   }
}
