package §&!Y§
{
   import § !0§.§[!8§;
   import § !0§.b2AABB;
   import § !0§.b2RayCastInput;
   import § !0§.b2RayCastOutput;
   import §+!d§.b2MassData;
   import §+!d§.b2Shape;
   import §4!2§.b2Contact;
   import §4!2§.b2ContactEdge;
   import §7F§.b2Math;
   import §7F§.b2Transform;
   import §7F§.b2Vec2;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §1O§:b2MassData;
      
      b2internal var §0!u§:b2AABB;
      
      b2internal var §#1§:Number;
      
      b2internal var §&!n§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §"x§:b2Shape;
      
      b2internal var §?_§:Number;
      
      b2internal var §^!!§:Number;
      
      b2internal var §1!p§;
      
      b2internal var §^"?§:b2FilterData;
      
      b2internal var §3F§:Boolean;
      
      b2internal var §>!G§;
      
      public function b2Fixture()
      {
         this.§^"?§ = new b2FilterData();
         super();
         this.§0!u§ = new b2AABB();
         this.§>!G§ = null;
         this.m_body = null;
         this.§&!n§ = null;
         this.§"x§ = null;
         this.§#1§ = 0;
         this.§?_§ = 0;
         this.§^!!§ = 0;
      }
      
      public function §;!w§() : int
      {
         return this.§"x§.§;!w§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§"x§;
      }
      
      public function §?!t§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§3F§ == param1)
         {
            return;
         }
         this.§3F§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!!?§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§7!K§;
            _loc4_ = _loc3_.§-!x§();
            _loc5_ = _loc3_.§6$§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§?!t§(_loc4_.§'"E§() || _loc5_.§'"E§());
            }
            _loc2_ = _loc2_.§<B§;
         }
      }
      
      public function §'"E§() : Boolean
      {
         return this.§3F§;
      }
      
      public function §9!b§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§^"?§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!!?§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§7!K§;
            _loc4_ = _loc3_.§-!x§();
            _loc5_ = _loc3_.§6$§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§-g§();
            }
            _loc2_ = _loc2_.§<B§;
         }
      }
      
      public function §4"$§() : b2FilterData
      {
         return this.§^"?§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §+U§() : b2Fixture
      {
         return this.§&!n§;
      }
      
      public function GetUserData() : *
      {
         return this.§>!G§;
      }
      
      public function §#^§(param1:*) : void
      {
         this.§>!G§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§"x§.TestPoint(this.m_body.§5j§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§"x§.RayCast(param1,param2,this.m_body.§5j§());
      }
      
      public function §>!>§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§"x§.ComputeMass(param1,this.§#1§);
         return param1;
      }
      
      public function §0"9§(param1:Number) : void
      {
         this.§#1§ = param1;
      }
      
      public function §]!C§() : Number
      {
         return this.§#1§;
      }
      
      public function §[0§() : Number
      {
         return this.§?_§;
      }
      
      public function §"R§(param1:Number) : void
      {
         this.§?_§ = param1;
      }
      
      public function §^>§() : Number
      {
         return this.§^!!§;
      }
      
      public function §"!t§(param1:Number) : void
      {
         this.§^!!§ = param1;
      }
      
      public function §!!l§() : b2AABB
      {
         return this.§0!u§;
      }
      
      b2internal function §]!e§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§>!G§ = param3.§5!R§;
         this.§?_§ = param3.friction;
         this.§^!!§ = param3.restitution;
         this.m_body = param1;
         this.§&!n§ = null;
         this.§^"?§ = param3.filter.Copy();
         this.§3F§ = param3.§@!P§;
         this.§"x§ = param3.shape.Copy();
         this.§#1§ = param3.density;
      }
      
      b2internal function §]!f§() : void
      {
         this.§"x§ = null;
      }
      
      b2internal function §"!f§(param1:§[!8§, param2:b2Transform) : void
      {
         this.§"x§.ComputeAABB(this.§0!u§,param2);
         this.§1!p§ = param1.§"!f§(this.§0!u§,this);
      }
      
      b2internal function §="G§(param1:§[!8§) : void
      {
         if(this.§1!p§ == null)
         {
            return;
         }
         param1.§="G§(this.§1!p§);
         this.§1!p§ = null;
      }
      
      b2internal function §2S§(param1:§[!8§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§1!p§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§"x§.ComputeAABB(_loc4_,param2);
         this.§"x§.ComputeAABB(_loc5_,param3);
         this.§0!u§.§`"2§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§5x§(param3.position,param2.position);
         param1.§7%§(this.§1!p§,this.§0!u§,_loc6_);
      }
   }
}
