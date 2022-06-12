package §=9§
{
   import §-!G§.b2Math;
   import §-!G§.b2Transform;
   import §-!G§.b2Vec2;
   import §7"'§.b2internal;
   import §8!D§.b2Contact;
   import §8!D§.b2ContactEdge;
   import §<!j§.b2MassData;
   import §<!j§.b2Shape;
   import §[!Z§.§8!1§;
   import §[!Z§.b2AABB;
   import §[!Z§.b2RayCastInput;
   import §[!Z§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §8!p§:b2MassData;
      
      b2internal var §import§:b2AABB;
      
      b2internal var §3!6§:Number;
      
      b2internal var §1""§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §&!N§:b2Shape;
      
      b2internal var §?3§:Number;
      
      b2internal var §&"!§:Number;
      
      b2internal var §7]§;
      
      b2internal var §8i§:b2FilterData;
      
      b2internal var §#!o§:Boolean;
      
      b2internal var §"!l§;
      
      public function b2Fixture()
      {
         this.§8i§ = new b2FilterData();
         super();
         this.§import§ = new b2AABB();
         this.§"!l§ = null;
         this.m_body = null;
         this.§1""§ = null;
         this.§&!N§ = null;
         this.§3!6§ = 0;
         this.§?3§ = 0;
         this.§&"!§ = 0;
      }
      
      public function get() : int
      {
         return this.§&!N§.get();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§&!N§;
      }
      
      public function §1"4§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§#!o§ == param1)
         {
            return;
         }
         this.§#!o§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§<!Y§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§@K§;
            _loc4_ = _loc3_.§1!j§();
            _loc5_ = _loc3_.§!!'§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§1"4§(_loc4_.§?x§() || _loc5_.§?x§());
            }
            _loc2_ = _loc2_.§ J§;
         }
      }
      
      public function §?x§() : Boolean
      {
         return this.§#!o§;
      }
      
      public function §#Y§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§8i§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§<!Y§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§@K§;
            _loc4_ = _loc3_.§1!j§();
            _loc5_ = _loc3_.§!!'§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§[!,§();
            }
            _loc2_ = _loc2_.§ J§;
         }
      }
      
      public function §%$§() : b2FilterData
      {
         return this.§8i§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §9!]§() : b2Fixture
      {
         return this.§1""§;
      }
      
      public function GetUserData() : *
      {
         return this.§"!l§;
      }
      
      public function §3l§(param1:*) : void
      {
         this.§"!l§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§&!N§.TestPoint(this.m_body.§5G§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§&!N§.RayCast(param1,param2,this.m_body.§5G§());
      }
      
      public function §9!=§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§&!N§.ComputeMass(param1,this.§3!6§);
         return param1;
      }
      
      public function §6!P§(param1:Number) : void
      {
         this.§3!6§ = param1;
      }
      
      public function §@-§() : Number
      {
         return this.§3!6§;
      }
      
      public function §@L§() : Number
      {
         return this.§?3§;
      }
      
      public function §1!'§(param1:Number) : void
      {
         this.§?3§ = param1;
      }
      
      public function §1!F§() : Number
      {
         return this.§&"!§;
      }
      
      public function §=!+§(param1:Number) : void
      {
         this.§&"!§ = param1;
      }
      
      public function §]"7§() : b2AABB
      {
         return this.§import§;
      }
      
      b2internal function §83§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§"!l§ = param3.§2"$§;
         this.§?3§ = param3.friction;
         this.§&"!§ = param3.restitution;
         this.m_body = param1;
         this.§1""§ = null;
         this.§8i§ = param3.filter.Copy();
         this.§#!o§ = param3.§"a§;
         this.§&!N§ = param3.shape.Copy();
         this.§3!6§ = param3.density;
      }
      
      b2internal function §&!`§() : void
      {
         this.§&!N§ = null;
      }
      
      b2internal function § !#§(param1:§8!1§, param2:b2Transform) : void
      {
         this.§&!N§.ComputeAABB(this.§import§,param2);
         this.§7]§ = param1.§ !#§(this.§import§,this);
      }
      
      b2internal function §7y§(param1:§8!1§) : void
      {
         if(this.§7]§ == null)
         {
            return;
         }
         param1.§7y§(this.§7]§);
         this.§7]§ = null;
      }
      
      b2internal function §,o§(param1:§8!1§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§7]§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§&!N§.ComputeAABB(_loc4_,param2);
         this.§&!N§.ComputeAABB(_loc5_,param3);
         this.§import§.§'!P§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§?[§(param3.position,param2.position);
         param1.§;!e§(this.§7]§,this.§import§,_loc6_);
      }
   }
}
