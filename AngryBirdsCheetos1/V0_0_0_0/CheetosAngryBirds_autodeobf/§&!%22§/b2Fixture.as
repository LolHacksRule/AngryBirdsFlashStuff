package §&!"§
{
   import § G§.§3!>§;
   import § G§.b2AABB;
   import § G§.b2RayCastInput;
   import § G§.b2RayCastOutput;
   import §-!C§.b2MassData;
   import §-!C§.b2Shape;
   import §69§.b2Contact;
   import §69§.b2ContactEdge;
   import §9"§.b2Math;
   import §9"§.b2Transform;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §]P§:b2MassData;
      
      b2internal var §-!B§:b2AABB;
      
      b2internal var §]V§:Number;
      
      b2internal var §0]§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §<!W§:b2Shape;
      
      b2internal var §!!F§:Number;
      
      b2internal var §#2§:Number;
      
      b2internal var §]j§;
      
      b2internal var §!5§:b2FilterData;
      
      b2internal var §=!Q§:Boolean;
      
      b2internal var § !O§;
      
      public function b2Fixture()
      {
         this.§!5§ = new b2FilterData();
         super();
         this.§-!B§ = new b2AABB();
         this.§ !O§ = null;
         this.m_body = null;
         this.§0]§ = null;
         this.§<!W§ = null;
         this.§]V§ = 0;
         this.§!!F§ = 0;
         this.§#2§ = 0;
      }
      
      public function §0!$§() : int
      {
         return this.§<!W§.§0!$§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§<!W§;
      }
      
      public function §4!N§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§=!Q§ == param1)
         {
            return;
         }
         this.§=!Q§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!-§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§^<§;
            _loc4_ = _loc3_.§"&§();
            _loc5_ = _loc3_.§7!Z§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§4!N§(_loc4_.§2'§() || _loc5_.§2'§());
            }
            _loc2_ = _loc2_.§8L§;
         }
      }
      
      public function §2'§() : Boolean
      {
         return this.§=!Q§;
      }
      
      public function §'!+§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§!5§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!-§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§^<§;
            _loc4_ = _loc3_.§"&§();
            _loc5_ = _loc3_.§7!Z§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§>!A§();
            }
            _loc2_ = _loc2_.§8L§;
         }
      }
      
      public function §<!O§() : b2FilterData
      {
         return this.§!5§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §`!R§() : b2Fixture
      {
         return this.§0]§;
      }
      
      public function GetUserData() : *
      {
         return this.§ !O§;
      }
      
      public function §,!P§(param1:*) : void
      {
         this.§ !O§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§<!W§.TestPoint(this.m_body.§>B§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§<!W§.RayCast(param1,param2,this.m_body.§>B§());
      }
      
      public function §-g§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§<!W§.ComputeMass(param1,this.§]V§);
         return param1;
      }
      
      public function §&o§(param1:Number) : void
      {
         this.§]V§ = param1;
      }
      
      public function §4! §() : Number
      {
         return this.§]V§;
      }
      
      public function §0!=§() : Number
      {
         return this.§!!F§;
      }
      
      public function §"!<§(param1:Number) : void
      {
         this.§!!F§ = param1;
      }
      
      public function §9+§() : Number
      {
         return this.§#2§;
      }
      
      public function §3-§(param1:Number) : void
      {
         this.§#2§ = param1;
      }
      
      public function §+P§() : b2AABB
      {
         return this.§-!B§;
      }
      
      b2internal function §?!@§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§ !O§ = param3.§7! §;
         this.§!!F§ = param3.friction;
         this.§#2§ = param3.restitution;
         this.m_body = param1;
         this.§0]§ = null;
         this.§!5§ = param3.filter.Copy();
         this.§=!Q§ = param3.§&4§;
         this.§<!W§ = param3.shape.Copy();
         this.§]V§ = param3.density;
      }
      
      b2internal function §4!L§() : void
      {
         this.§<!W§ = null;
      }
      
      b2internal function §7=§(param1:§3!>§, param2:b2Transform) : void
      {
         this.§<!W§.ComputeAABB(this.§-!B§,param2);
         this.§]j§ = param1.§7=§(this.§-!B§,this);
      }
      
      b2internal function §'!F§(param1:§3!>§) : void
      {
         if(this.§]j§ == null)
         {
            return;
         }
         param1.§'!F§(this.§]j§);
         this.§]j§ = null;
      }
      
      b2internal function §<i§(param1:§3!>§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§]j§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§<!W§.ComputeAABB(_loc4_,param2);
         this.§<!W§.ComputeAABB(_loc5_,param3);
         this.§-!B§.§]!6§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§?d§(param3.position,param2.position);
         param1.§]!T§(this.§]j§,this.§-!B§,_loc6_);
      }
   }
}
