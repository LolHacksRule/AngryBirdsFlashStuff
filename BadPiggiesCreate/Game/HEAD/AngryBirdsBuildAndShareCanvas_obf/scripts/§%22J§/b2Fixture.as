package §"J§
{
   import §%4§.§0w§;
   import §%4§.b2AABB;
   import §%4§.b2RayCastInput;
   import §%4§.b2RayCastOutput;
   import §2k§.b2MassData;
   import §2k§.b2Shape;
   import §;!e§.b2Contact;
   import §;!e§.b2ContactEdge;
   import §<!a§.b2Math;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §<!N§:b2MassData;
      
      b2internal var §%C§:b2AABB;
      
      b2internal var §-k§:Number;
      
      b2internal var §7!'§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §#o§:b2Shape;
      
      b2internal var §+E§:Number;
      
      b2internal var §%9§:Number;
      
      b2internal var §<"3§;
      
      b2internal var §3!8§:b2FilterData;
      
      b2internal var §"s§:Boolean;
      
      b2internal var §5![§;
      
      public function b2Fixture()
      {
         this.§3!8§ = new b2FilterData();
         super();
         this.§%C§ = new b2AABB();
         this.§5![§ = null;
         this.m_body = null;
         this.§7!'§ = null;
         this.§#o§ = null;
         this.§-k§ = 0;
         this.§+E§ = 0;
         this.§%9§ = 0;
      }
      
      public function §;!F§() : int
      {
         return this.§#o§.§;!F§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§#o§;
      }
      
      public function §#p§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§"s§ == param1)
         {
            return;
         }
         this.§"s§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§3!$§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§6M§;
            _loc4_ = _loc3_.§&!K§();
            _loc5_ = _loc3_.§ 1§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§#p§(_loc4_.§;!g§() || _loc5_.§;!g§());
            }
            _loc2_ = _loc2_.§>"2§;
         }
      }
      
      public function §;!g§() : Boolean
      {
         return this.§"s§;
      }
      
      public function §#!v§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§3!8§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§3!$§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§6M§;
            _loc4_ = _loc3_.§&!K§();
            _loc5_ = _loc3_.§ 1§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§"N§();
            }
            _loc2_ = _loc2_.§>"2§;
         }
      }
      
      public function §9"1§() : b2FilterData
      {
         return this.§3!8§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §7"3§() : b2Fixture
      {
         return this.§7!'§;
      }
      
      public function GetUserData() : *
      {
         return this.§5![§;
      }
      
      public function §"%§(param1:*) : void
      {
         this.§5![§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§#o§.TestPoint(this.m_body.§60§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§#o§.RayCast(param1,param2,this.m_body.§60§());
      }
      
      public function §!!o§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§#o§.ComputeMass(param1,this.§-k§);
         return param1;
      }
      
      public function §5`§(param1:Number) : void
      {
         this.§-k§ = param1;
      }
      
      public function §^3§() : Number
      {
         return this.§-k§;
      }
      
      public function §4y§() : Number
      {
         return this.§+E§;
      }
      
      public function §!!#§(param1:Number) : void
      {
         this.§+E§ = param1;
      }
      
      public function §#!_§() : Number
      {
         return this.§%9§;
      }
      
      public function §1!2§(param1:Number) : void
      {
         this.§%9§ = param1;
      }
      
      public function §1!x§() : b2AABB
      {
         return this.§%C§;
      }
      
      b2internal function §`!P§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§5![§ = param3.§ S§;
         this.§+E§ = param3.friction;
         this.§%9§ = param3.restitution;
         this.m_body = param1;
         this.§7!'§ = null;
         this.§3!8§ = param3.filter.Copy();
         this.§"s§ = param3.§]K§;
         this.§#o§ = param3.shape.Copy();
         this.§-k§ = param3.density;
      }
      
      b2internal function §3!0§() : void
      {
         this.§#o§ = null;
      }
      
      b2internal function §1S§(param1:§0w§, param2:b2Transform) : void
      {
         this.§#o§.ComputeAABB(this.§%C§,param2);
         this.§<"3§ = param1.§1S§(this.§%C§,this);
      }
      
      b2internal function §`q§(param1:§0w§) : void
      {
         if(this.§<"3§ == null)
         {
            return;
         }
         param1.§`q§(this.§<"3§);
         this.§<"3§ = null;
      }
      
      b2internal function §0Z§(param1:§0w§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§<"3§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§#o§.ComputeAABB(_loc4_,param2);
         this.§#o§.ComputeAABB(_loc5_,param3);
         this.§%C§.§^!%§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§ !r§(param3.position,param2.position);
         param1.§4#§(this.§<"3§,this.§%C§,_loc6_);
      }
   }
}
