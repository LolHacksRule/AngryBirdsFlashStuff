package § D§
{
   import §&!-§.§>D§;
   import §&!-§.b2AABB;
   import §&!-§.b2RayCastInput;
   import §&!-§.b2RayCastOutput;
   import §0!'§.b2MassData;
   import §0!'§.b2Shape;
   import §7a§.b2Contact;
   import §7a§.b2ContactEdge;
   import §8>§.b2Math;
   import §8>§.b2Transform;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §3o§:b2MassData;
      
      b2internal var §@!$§:b2AABB;
      
      b2internal var §&-§:Number;
      
      b2internal var §7n§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §>!C§:b2Shape;
      
      b2internal var §^M§:Number;
      
      b2internal var §!!+§:Number;
      
      b2internal var §"!X§;
      
      b2internal var §!!4§:b2FilterData;
      
      b2internal var §]f§:Boolean;
      
      b2internal var §>a§;
      
      public function b2Fixture()
      {
         this.§!!4§ = new b2FilterData();
         super();
         this.§@!$§ = new b2AABB();
         this.§>a§ = null;
         this.m_body = null;
         this.§7n§ = null;
         this.§>!C§ = null;
         this.§&-§ = 0;
         this.§^M§ = 0;
         this.§!!+§ = 0;
      }
      
      public function §0!@§() : int
      {
         return this.§>!C§.§0!@§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§>!C§;
      }
      
      public function §#!<§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§]f§ == param1)
         {
            return;
         }
         this.§]f§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§=!-§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§58§;
            _loc4_ = _loc3_.§5J§();
            _loc5_ = _loc3_.§@!X§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§#!<§(_loc4_.§0?§() || _loc5_.§0?§());
            }
            _loc2_ = _loc2_.§0e§;
         }
      }
      
      public function §0?§() : Boolean
      {
         return this.§]f§;
      }
      
      public function §]_§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§!!4§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§=!-§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§58§;
            _loc4_ = _loc3_.§5J§();
            _loc5_ = _loc3_.§@!X§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§?d§();
            }
            _loc2_ = _loc2_.§0e§;
         }
      }
      
      public function §[J§() : b2FilterData
      {
         return this.§!!4§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §2!g§() : b2Fixture
      {
         return this.§7n§;
      }
      
      public function GetUserData() : *
      {
         return this.§>a§;
      }
      
      public function § A§(param1:*) : void
      {
         this.§>a§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§>!C§.TestPoint(this.m_body.§+!C§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§>!C§.RayCast(param1,param2,this.m_body.§+!C§());
      }
      
      public function § !^§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§>!C§.ComputeMass(param1,this.§&-§);
         return param1;
      }
      
      public function §%!d§(param1:Number) : void
      {
         this.§&-§ = param1;
      }
      
      public function §"P§() : Number
      {
         return this.§&-§;
      }
      
      public function §&w§() : Number
      {
         return this.§^M§;
      }
      
      public function §>!^§(param1:Number) : void
      {
         this.§^M§ = param1;
      }
      
      public function §,O§() : Number
      {
         return this.§!!+§;
      }
      
      public function §9D§(param1:Number) : void
      {
         this.§!!+§ = param1;
      }
      
      public function §!A§() : b2AABB
      {
         return this.§@!$§;
      }
      
      b2internal function §5=§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§>a§ = param3.§1o§;
         this.§^M§ = param3.friction;
         this.§!!+§ = param3.restitution;
         this.m_body = param1;
         this.§7n§ = null;
         this.§!!4§ = param3.filter.Copy();
         this.§]f§ = param3.each;
         this.§>!C§ = param3.shape.Copy();
         this.§&-§ = param3.density;
      }
      
      b2internal function §"L§() : void
      {
         this.§>!C§ = null;
      }
      
      b2internal function §2!9§(param1:§>D§, param2:b2Transform) : void
      {
         this.§>!C§.ComputeAABB(this.§@!$§,param2);
         this.§"!X§ = param1.§2!9§(this.§@!$§,this);
      }
      
      b2internal function §"!=§(param1:§>D§) : void
      {
         if(this.§"!X§ == null)
         {
            return;
         }
         param1.§"!=§(this.§"!X§);
         this.§"!X§ = null;
      }
      
      b2internal function §^o§(param1:§>D§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§"!X§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§>!C§.ComputeAABB(_loc4_,param2);
         this.§>!C§.ComputeAABB(_loc5_,param3);
         this.§@!$§.§"!#§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§>G§(param3.position,param2.position);
         param1.§5!O§(this.§"!X§,this.§@!$§,_loc6_);
      }
   }
}
