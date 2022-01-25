package §3f§
{
   import §&!L§.b2Math;
   import §&!L§.b2Transform;
   import §&!L§.b2Vec2;
   import §-!<§.b2MassData;
   import §-!<§.b2Shape;
   import §7!C§.b2internal;
   import §<l§.b2Contact;
   import §<l§.b2ContactEdge;
   import §=!!§.§?!S§;
   import §=!!§.b2AABB;
   import §=!!§.b2RayCastInput;
   import §=!!§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §^!?§:b2MassData;
      
      b2internal var §=!R§:b2AABB;
      
      b2internal var §?6§:Number;
      
      b2internal var §',§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §3>§:b2Shape;
      
      b2internal var §==§:Number;
      
      b2internal var §]![§:Number;
      
      b2internal var §>j§;
      
      b2internal var §=E§:b2FilterData;
      
      b2internal var §<e§:Boolean;
      
      b2internal var §]%§;
      
      public function b2Fixture()
      {
         this.§=E§ = new b2FilterData();
         super();
         this.§=!R§ = new b2AABB();
         this.§]%§ = null;
         this.m_body = null;
         this.§',§ = null;
         this.§3>§ = null;
         this.§?6§ = 0;
         this.§==§ = 0;
         this.§]![§ = 0;
      }
      
      public function §6`§() : int
      {
         return this.§3>§.§6`§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§3>§;
      }
      
      public function §8!'§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§<e§ == param1)
         {
            return;
         }
         this.§<e§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!u§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§+!Q§;
            _loc4_ = _loc3_.§'+§();
            _loc5_ = _loc3_.§&4§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§8!'§(_loc4_.§=!S§() || _loc5_.§=!S§());
            }
            _loc2_ = _loc2_.§`2§;
         }
      }
      
      public function §=!S§() : Boolean
      {
         return this.§<e§;
      }
      
      public function §<N§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§=E§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!u§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§+!Q§;
            _loc4_ = _loc3_.§'+§();
            _loc5_ = _loc3_.§&4§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§7!=§();
            }
            _loc2_ = _loc2_.§`2§;
         }
      }
      
      public function §?!L§() : b2FilterData
      {
         return this.§=E§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function § O§() : b2Fixture
      {
         return this.§',§;
      }
      
      public function GetUserData() : *
      {
         return this.§]%§;
      }
      
      public function §3!Z§(param1:*) : void
      {
         this.§]%§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§3>§.TestPoint(this.m_body.§ g§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§3>§.RayCast(param1,param2,this.m_body.§ g§());
      }
      
      public function §;!8§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§3>§.ComputeMass(param1,this.§?6§);
         return param1;
      }
      
      public function §0^§(param1:Number) : void
      {
         this.§?6§ = param1;
      }
      
      public function §7N§() : Number
      {
         return this.§?6§;
      }
      
      public function §9!"§() : Number
      {
         return this.§==§;
      }
      
      public function §'?§(param1:Number) : void
      {
         this.§==§ = param1;
      }
      
      public function §9k§() : Number
      {
         return this.§]![§;
      }
      
      public function §<!Y§(param1:Number) : void
      {
         this.§]![§ = param1;
      }
      
      public function §-!G§() : b2AABB
      {
         return this.§=!R§;
      }
      
      b2internal function §?T§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§]%§ = param3.§6!6§;
         this.§==§ = param3.friction;
         this.§]![§ = param3.restitution;
         this.m_body = param1;
         this.§',§ = null;
         this.§=E§ = param3.filter.Copy();
         this.§<e§ = param3.§-!8§;
         this.§3>§ = param3.shape.Copy();
         this.§?6§ = param3.density;
      }
      
      b2internal function §>h§() : void
      {
         this.§3>§ = null;
      }
      
      b2internal function §0L§(param1:§?!S§, param2:b2Transform) : void
      {
         this.§3>§.ComputeAABB(this.§=!R§,param2);
         this.§>j§ = param1.§0L§(this.§=!R§,this);
      }
      
      b2internal function §2s§(param1:§?!S§) : void
      {
         if(this.§>j§ == null)
         {
            return;
         }
         param1.§2s§(this.§>j§);
         this.§>j§ = null;
      }
      
      b2internal function §7-§(param1:§?!S§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§>j§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§3>§.ComputeAABB(_loc4_,param2);
         this.§3>§.ComputeAABB(_loc5_,param3);
         this.§=!R§.§'!K§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§ <§(param3.position,param2.position);
         param1.§#!$§(this.§>j§,this.§=!R§,_loc6_);
      }
   }
}
