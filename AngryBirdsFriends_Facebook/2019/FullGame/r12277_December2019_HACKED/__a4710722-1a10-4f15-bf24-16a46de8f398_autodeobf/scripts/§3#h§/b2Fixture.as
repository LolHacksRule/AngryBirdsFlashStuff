package §3#h§
{
   import §,!T§.b2MassData;
   import §,!T§.b2Shape;
   import §1#F§.b2internal;
   import §6!R§.b2Math;
   import §6!R§.b2Transform;
   import §6!R§.b2Vec2;
   import §6"0§.b2Contact;
   import §6"0§.b2ContactEdge;
   import §9$A§.§]"-§;
   import §9$A§.b2AABB;
   import §9$A§.b2RayCastInput;
   import §9$A§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §2#7§:b2MassData;
      
      b2internal var t1_aabb:b2AABB;
      
      b2internal var t2_aabb:b2AABB;
      
      b2internal var §;?§:b2AABB;
      
      b2internal var §+"§:Number;
      
      b2internal var §7<§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §<"1§:b2Shape;
      
      b2internal var §=#a§:Number;
      
      b2internal var §""#§:Number;
      
      b2internal var §@#s§;
      
      b2internal var §+H§:b2FilterData;
      
      b2internal var §3"p§:Boolean;
      
      b2internal var §%!Z§;
      
      public function b2Fixture()
      {
         this.§+H§ = new b2FilterData();
         super();
         this.§;?§ = new b2AABB();
         this.§%!Z§ = null;
         this.m_body = null;
         this.§7<§ = null;
         this.§<"1§ = null;
         this.§+"§ = 0;
         this.§=#a§ = 0;
         this.§""#§ = 0;
      }
      
      public function §!"k§() : int
      {
         return this.§<"1§.§!"k§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§<"1§;
      }
      
      public function §3# §(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§3"p§ == param1)
         {
            return;
         }
         this.§3"p§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§`!V§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§&$-§;
            _loc4_ = _loc3_.§#"^§();
            _loc5_ = _loc3_.§4$E§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§3# §(_loc4_.§9D§() || _loc5_.§9D§());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §9D§() : Boolean
      {
         return this.§3"p§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§+H§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§`!V§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§&$-§;
            _loc4_ = _loc3_.§#"^§();
            _loc5_ = _loc3_.§4$E§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§4"[§();
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function GetFilterData() : b2FilterData
      {
         return this.§+H§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §6"t§() : b2Fixture
      {
         return this.§7<§;
      }
      
      public function GetUserData() : *
      {
         return this.§%!Z§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§%!Z§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§<"1§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§<"1§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function §,H§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§<"1§.ComputeMass(param1,this.§+"§);
         return param1;
      }
      
      public function SetDensity(param1:Number) : void
      {
         this.§+"§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§+"§;
      }
      
      public function GetFriction() : Number
      {
         return this.§=#a§;
      }
      
      public function SetFriction(param1:Number) : void
      {
         this.§=#a§ = param1;
      }
      
      public function GetRestitution() : Number
      {
         return this.§""#§;
      }
      
      public function SetRestitution(param1:Number) : void
      {
         this.§""#§ = param1;
      }
      
      public function §4!E§() : b2AABB
      {
         return this.§;?§;
      }
      
      b2internal function §'#q§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§%!Z§ = param3.§9!g§;
         this.§=#a§ = param3.friction;
         this.§""#§ = param3.restitution;
         this.m_body = param1;
         this.§7<§ = null;
         this.§+H§ = param3.filter.Copy();
         this.§3"p§ = param3.§-!c§;
         this.§<"1§ = param3.shape.Copy();
         this.§+"§ = param3.density;
      }
      
      b2internal function §0"y§() : void
      {
         this.§<"1§ = null;
      }
      
      b2internal function §^$7§(param1:§]"-§, param2:b2Transform) : void
      {
         this.§<"1§.ComputeAABB(this.§;?§,param2);
         this.§@#s§ = param1.§^$7§(this.§;?§,this);
      }
      
      b2internal function §@!v§(param1:§]"-§) : void
      {
         if(this.§@#s§ == null)
         {
            return;
         }
         param1.§@!v§(this.§@#s§);
         this.§@#s§ = null;
      }
      
      b2internal function §7#h§(param1:§]"-§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§@#s§)
         {
            return;
         }
         if(this.t1_aabb == null)
         {
            this.t1_aabb = new b2AABB();
         }
         else
         {
            this.t1_aabb.§4#1§.x = 0;
            this.t1_aabb.§4#1§.y = 0;
            this.t1_aabb.§,!W§.x = 0;
            this.t1_aabb.§,!W§.y = 0;
         }
         if(this.t2_aabb == null)
         {
            this.t2_aabb = new b2AABB();
         }
         else
         {
            this.t2_aabb.§4#1§.x = 0;
            this.t2_aabb.§4#1§.y = 0;
            this.t2_aabb.§,!W§.x = 0;
            this.t2_aabb.§,!W§.y = 0;
         }
         this.§<"1§.ComputeAABB(this.t1_aabb,param2);
         this.§<"1§.ComputeAABB(this.t2_aabb,param3);
         this.§;?§.§[v§(this.t1_aabb,this.t2_aabb);
         var _loc4_:b2Vec2 = b2Math.§5#w§(param3.position,param2.position);
         param1.§>!U§(this.§@#s§,this.§;?§,_loc4_);
      }
   }
}
