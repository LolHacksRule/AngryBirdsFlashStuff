package §?!0§
{
   import §0!2§.§ G§;
   import §0!2§.b2AABB;
   import §0!2§.b2RayCastInput;
   import §0!2§.b2RayCastOutput;
   import §1!H§.b2MassData;
   import §1!H§.b2Shape;
   import §69§.b2Contact;
   import §69§.b2ContactEdge;
   import §;]§.b2internal;
   import §=E§.b2Math;
   import §=E§.b2Transform;
   import §=E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §<i§:b2MassData;
      
      b2internal var §]P§:b2AABB;
      
      b2internal var §-!B§:Number;
      
      b2internal var §0]§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §]V§:b2Shape;
      
      b2internal var §<!W§:Number;
      
      b2internal var §!!F§:Number;
      
      b2internal var §#2§;
      
      b2internal var §]j§:b2FilterData;
      
      b2internal var §!5§:Boolean;
      
      b2internal var § !O§;
      
      public function b2Fixture()
      {
         this.§]j§ = new b2FilterData();
         super();
         this.§]P§ = new b2AABB();
         this.§ !O§ = null;
         this.m_body = null;
         this.§0]§ = null;
         this.§]V§ = null;
         this.§-!B§ = 0;
         this.§<!W§ = 0;
         this.§!!F§ = 0;
      }
      
      public function §0!$§() : int
      {
         return this.§]V§.§0!$§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§]V§;
      }
      
      public function §4!N§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§!5§ == param1)
         {
            return;
         }
         this.§!5§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§^V§();
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
         return this.§!5§;
      }
      
      public function §&!"§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§]j§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§^V§();
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
      
      public function §'!+§() : b2FilterData
      {
         return this.§]j§.Copy();
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
         return this.§]V§.TestPoint(this.m_body.§ T§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§]V§.RayCast(param1,param2,this.m_body.§ T§());
      }
      
      public function §<!O§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§]V§.ComputeMass(param1,this.§-!B§);
         return param1;
      }
      
      public function §-g§(param1:Number) : void
      {
         this.§-!B§ = param1;
      }
      
      public function §&o§() : Number
      {
         return this.§-!B§;
      }
      
      public function §4! §() : Number
      {
         return this.§<!W§;
      }
      
      public function §0!=§(param1:Number) : void
      {
         this.§<!W§ = param1;
      }
      
      public function §"!<§() : Number
      {
         return this.§!!F§;
      }
      
      public function §9+§(param1:Number) : void
      {
         this.§!!F§ = param1;
      }
      
      public function §3-§() : b2AABB
      {
         return this.§]P§;
      }
      
      b2internal function §?!@§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§ !O§ = param3.§7! §;
         this.§<!W§ = param3.friction;
         this.§!!F§ = param3.restitution;
         this.m_body = param1;
         this.§0]§ = null;
         this.§]j§ = param3.filter.Copy();
         this.§!5§ = param3.§!%§;
         this.§]V§ = param3.shape.Copy();
         this.§-!B§ = param3.density;
      }
      
      b2internal function §4!L§() : void
      {
         this.§]V§ = null;
      }
      
      b2internal function §+P§(param1:§ G§, param2:b2Transform) : void
      {
         this.§]V§.ComputeAABB(this.§]P§,param2);
         this.§#2§ = param1.§+P§(this.§]P§,this);
      }
      
      b2internal function §7=§(param1:§ G§) : void
      {
         if(this.§#2§ == null)
         {
            return;
         }
         param1.§7=§(this.§#2§);
         this.§#2§ = null;
      }
      
      b2internal function §'!F§(param1:§ G§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§#2§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§]V§.ComputeAABB(_loc4_,param2);
         this.§]V§.ComputeAABB(_loc5_,param3);
         this.§]P§.§2!A§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§`#§(param3.position,param2.position);
         param1.§3!>§(this.§#2§,this.§]P§,_loc6_);
      }
   }
}
