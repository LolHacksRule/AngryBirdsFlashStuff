package §=#n§
{
   import §0H§.b2internal;
   import §0m§.b2Math;
   import §0m§.b2Transform;
   import §0m§.b2Vec2;
   import §3"q§.§2"E§;
   import §3"q§.b2AABB;
   import §3"q§.b2RayCastInput;
   import §3"q§.b2RayCastOutput;
   import §;"R§.b2Contact;
   import §;"R§.b2ContactEdge;
   import §?!c§.b2MassData;
   import §?!c§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §"#h§:b2MassData;
      
      b2internal var t1_aabb:b2AABB;
      
      b2internal var t2_aabb:b2AABB;
      
      b2internal var §>!k§:b2AABB;
      
      b2internal var §3"a§:Number;
      
      b2internal var §@##§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §`!d§:b2Shape;
      
      b2internal var §-#y§:Number;
      
      b2internal var §^!>§:Number;
      
      b2internal var §&!@§;
      
      b2internal var §#"c§:b2FilterData;
      
      b2internal var §8#>§:Boolean;
      
      b2internal var §^"]§;
      
      public function b2Fixture()
      {
         this.§#"c§ = new b2FilterData();
         super();
         this.§>!k§ = new b2AABB();
         this.§^"]§ = null;
         this.m_body = null;
         this.§@##§ = null;
         this.§`!d§ = null;
         this.§3"a§ = 0;
         this.§-#y§ = 0;
         this.§^!>§ = 0;
      }
      
      public function § "c§() : int
      {
         return this.§`!d§.§ "c§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§`!d§;
      }
      
      public function §2"@§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§8#>§ == param1)
         {
            return;
         }
         this.§8#>§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§;Y§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§<#L§;
            _loc4_ = _loc3_.§%$-§();
            _loc5_ = _loc3_.§true§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§2"@§(_loc4_.§@"G§() || _loc5_.§@"G§());
            }
            _loc2_ = _loc2_.§0$0§;
         }
      }
      
      public function §@"G§() : Boolean
      {
         return this.§8#>§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§#"c§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§;Y§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§<#L§;
            _loc4_ = _loc3_.§%$-§();
            _loc5_ = _loc3_.§true§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§!$,§();
            }
            _loc2_ = _loc2_.§0$0§;
         }
      }
      
      public function §->§() : b2FilterData
      {
         return this.§#"c§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function § !V§() : b2Fixture
      {
         return this.§@##§;
      }
      
      public function GetUserData() : *
      {
         return this.§^"]§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§^"]§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§`!d§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§`!d§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function § "v§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§`!d§.ComputeMass(param1,this.§3"a§);
         return param1;
      }
      
      public function SetDensity(param1:Number) : void
      {
         this.§3"a§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§3"a§;
      }
      
      public function GetFriction() : Number
      {
         return this.§-#y§;
      }
      
      public function SetFriction(param1:Number) : void
      {
         this.§-#y§ = param1;
      }
      
      public function GetRestitution() : Number
      {
         return this.§^!>§;
      }
      
      public function SetRestitution(param1:Number) : void
      {
         this.§^!>§ = param1;
      }
      
      public function §8">§() : b2AABB
      {
         return this.§>!k§;
      }
      
      b2internal function §'#h§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§^"]§ = param3.§>"<§;
         this.§-#y§ = param3.friction;
         this.§^!>§ = param3.restitution;
         this.m_body = param1;
         this.§@##§ = null;
         this.§#"c§ = param3.filter.Copy();
         this.§8#>§ = param3.§7n§;
         this.§`!d§ = param3.shape.Copy();
         this.§3"a§ = param3.density;
      }
      
      b2internal function §@!]§() : void
      {
         this.§`!d§ = null;
      }
      
      b2internal function §=&§(param1:§2"E§, param2:b2Transform) : void
      {
         this.§`!d§.ComputeAABB(this.§>!k§,param2);
         this.§&!@§ = param1.§=&§(this.§>!k§,this);
      }
      
      b2internal function §'!g§(param1:§2"E§) : void
      {
         if(this.§&!@§ == null)
         {
            return;
         }
         param1.§'!g§(this.§&!@§);
         this.§&!@§ = null;
      }
      
      b2internal function §##Q§(param1:§2"E§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§&!@§)
         {
            return;
         }
         if(this.t1_aabb == null)
         {
            this.t1_aabb = new b2AABB();
         }
         else
         {
            this.t1_aabb.§6G§.x = 0;
            this.t1_aabb.§6G§.y = 0;
            this.t1_aabb.§%G§.x = 0;
            this.t1_aabb.§%G§.y = 0;
         }
         if(this.t2_aabb == null)
         {
            this.t2_aabb = new b2AABB();
         }
         else
         {
            this.t2_aabb.§6G§.x = 0;
            this.t2_aabb.§6G§.y = 0;
            this.t2_aabb.§%G§.x = 0;
            this.t2_aabb.§%G§.y = 0;
         }
         this.§`!d§.ComputeAABB(this.t1_aabb,param2);
         this.§`!d§.ComputeAABB(this.t2_aabb,param3);
         this.§>!k§.§4x§(this.t1_aabb,this.t2_aabb);
         var _loc4_:b2Vec2 = b2Math.§>!6§(param3.position,param2.position);
         param1.§2$+§(this.§&!@§,this.§>!k§,_loc4_);
      }
   }
}
