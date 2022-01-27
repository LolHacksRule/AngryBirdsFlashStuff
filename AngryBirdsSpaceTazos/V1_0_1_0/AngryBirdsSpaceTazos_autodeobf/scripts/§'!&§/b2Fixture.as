package §'!&§
{
   import §,Z§.b2MassData;
   import §,Z§.b2Shape;
   import §3c§.§>!e§;
   import §3c§.b2AABB;
   import §3c§.b2RayCastInput;
   import §3c§.b2RayCastOutput;
   import §9t§.b2Math;
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §=!n§.b2Contact;
   import §=!n§.b2ContactEdge;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §>n§:b2MassData;
      
      b2internal var §9G§:b2AABB;
      
      b2internal var §"S§:Number;
      
      b2internal var §+!o§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §#z§:b2Shape;
      
      b2internal var §7!q§:Number;
      
      b2internal var §1e§:Number;
      
      b2internal var §@L§;
      
      b2internal var §^h§:b2FilterData;
      
      b2internal var §="@§:Boolean;
      
      b2internal var §7R§;
      
      public function b2Fixture()
      {
         this.§^h§ = new b2FilterData();
         super();
         this.§9G§ = new b2AABB();
         this.§7R§ = null;
         this.m_body = null;
         this.§+!o§ = null;
         this.§#z§ = null;
         this.§"S§ = 0;
         this.§7!q§ = 0;
         this.§1e§ = 0;
      }
      
      public function §@!N§() : int
      {
         return this.§#z§.§@!N§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§#z§;
      }
      
      public function §2!Z§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§="@§ == param1)
         {
            return;
         }
         this.§="@§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§<!r§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§%!b§;
            _loc4_ = _loc3_.§'J§();
            _loc5_ = _loc3_.§#"%§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§2!Z§(_loc4_.§]w§() || _loc5_.§]w§());
            }
            _loc2_ = _loc2_.§ X§;
         }
      }
      
      public function §]w§() : Boolean
      {
         return this.§="@§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§^h§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§<!r§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§%!b§;
            _loc4_ = _loc3_.§'J§();
            _loc5_ = _loc3_.§#"%§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§0]§();
            }
            _loc2_ = _loc2_.§ X§;
         }
      }
      
      public function §>"5§() : b2FilterData
      {
         return this.§^h§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §`!y§() : b2Fixture
      {
         return this.§+!o§;
      }
      
      public function GetUserData() : *
      {
         return this.§7R§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§7R§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§#z§.TestPoint(this.m_body.§>u§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§#z§.RayCast(param1,param2,this.m_body.§>u§());
      }
      
      public function §7r§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§#z§.ComputeMass(param1,this.§"S§);
         return param1;
      }
      
      public function §4"=§(param1:Number) : void
      {
         this.§"S§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§"S§;
      }
      
      public function §!"4§() : Number
      {
         return this.§7!q§;
      }
      
      public function §&X§(param1:Number) : void
      {
         this.§7!q§ = param1;
      }
      
      public function §[![§() : Number
      {
         return this.§1e§;
      }
      
      public function §>W§(param1:Number) : void
      {
         this.§1e§ = param1;
      }
      
      public function §2!!§() : b2AABB
      {
         return this.§9G§;
      }
      
      b2internal function §]H§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§7R§ = param3.§!!%§;
         this.§7!q§ = param3.friction;
         this.§1e§ = param3.restitution;
         this.m_body = param1;
         this.§+!o§ = null;
         this.§^h§ = param3.filter.Copy();
         this.§="@§ = param3.§!!h§;
         this.§#z§ = param3.shape.Copy();
         this.§"S§ = param3.density;
      }
      
      b2internal function §^!a§() : void
      {
         this.§#z§ = null;
      }
      
      b2internal function §'!C§(param1:§>!e§, param2:b2Transform) : void
      {
         this.§#z§.ComputeAABB(this.§9G§,param2);
         this.§@L§ = param1.§'!C§(this.§9G§,this);
      }
      
      b2internal function §&1§(param1:§>!e§) : void
      {
         if(this.§@L§ == null)
         {
            return;
         }
         param1.§&1§(this.§@L§);
         this.§@L§ = null;
      }
      
      b2internal function §2$§(param1:§>!e§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§@L§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§#z§.ComputeAABB(_loc4_,param2);
         this.§#z§.ComputeAABB(_loc5_,param3);
         this.§9G§.§@B§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§,!`§(param3.position,param2.position);
         param1.§1i§(this.§@L§,this.§9G§,_loc6_);
      }
   }
}
