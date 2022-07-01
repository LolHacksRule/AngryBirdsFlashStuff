package §0!j§
{
   import §!!o§.§>"#§;
   import §!!o§.b2AABB;
   import §!!o§.b2RayCastInput;
   import §!!o§.b2RayCastOutput;
   import §!r§.b2internal;
   import §'!^§.b2Contact;
   import §'!^§.b2ContactEdge;
   import §-!2§.b2Math;
   import §-!2§.b2Transform;
   import §-!2§.b2Vec2;
   import §8!K§.b2MassData;
   import §8!K§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §2!e§:b2MassData;
      
      b2internal var §"!s§:b2AABB;
      
      b2internal var § !o§:Number;
      
      b2internal var §0!&§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §=z§:b2Shape;
      
      b2internal var §0!6§:Number;
      
      b2internal var §%8§:Number;
      
      b2internal var §"<§;
      
      b2internal var §@s§:b2FilterData;
      
      b2internal var §#;§:Boolean;
      
      b2internal var §2N§;
      
      public function b2Fixture()
      {
         this.§@s§ = new b2FilterData();
         super();
         this.§"!s§ = new b2AABB();
         this.§2N§ = null;
         this.m_body = null;
         this.§0!&§ = null;
         this.§=z§ = null;
         this.§ !o§ = 0;
         this.§0!6§ = 0;
         this.§%8§ = 0;
      }
      
      public function §6`§() : int
      {
         return this.§=z§.§6`§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§=z§;
      }
      
      public function §=C§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§#;§ == param1)
         {
            return;
         }
         this.§#;§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§9n§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§ ;§;
            _loc4_ = _loc3_.§01§();
            _loc5_ = _loc3_.§9!,§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§=C§(_loc4_.§6"0§() || _loc5_.§6"0§());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §6"0§() : Boolean
      {
         return this.§#;§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§@s§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§9n§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§ ;§;
            _loc4_ = _loc3_.§01§();
            _loc5_ = _loc3_.§9!,§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§7!I§();
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §"Y§() : b2FilterData
      {
         return this.§@s§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §+!E§() : b2Fixture
      {
         return this.§0!&§;
      }
      
      public function GetUserData() : *
      {
         return this.§2N§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§2N§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§=z§.TestPoint(this.m_body.§;b§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§=z§.RayCast(param1,param2,this.m_body.§;b§());
      }
      
      public function §!!?§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§=z§.ComputeMass(param1,this.§ !o§);
         return param1;
      }
      
      public function §?1§(param1:Number) : void
      {
         this.§ !o§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§ !o§;
      }
      
      public function §[![§() : Number
      {
         return this.§0!6§;
      }
      
      public function §1!J§(param1:Number) : void
      {
         this.§0!6§ = param1;
      }
      
      public function §?!-§() : Number
      {
         return this.§%8§;
      }
      
      public function §5P§(param1:Number) : void
      {
         this.§%8§ = param1;
      }
      
      public function §%!x§() : b2AABB
      {
         return this.§"!s§;
      }
      
      b2internal function §6!#§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§2N§ = param3.userData;
         this.§0!6§ = param3.friction;
         this.§%8§ = param3.restitution;
         this.m_body = param1;
         this.§0!&§ = null;
         this.§@s§ = param3.filter.Copy();
         this.§#;§ = param3.§'!F§;
         this.§=z§ = param3.shape.Copy();
         this.§ !o§ = param3.density;
      }
      
      b2internal function §,b§() : void
      {
         this.§=z§ = null;
      }
      
      b2internal function §,!G§(param1:§>"#§, param2:b2Transform) : void
      {
         this.§=z§.ComputeAABB(this.§"!s§,param2);
         this.§"<§ = param1.§,!G§(this.§"!s§,this);
      }
      
      b2internal function §4!i§(param1:§>"#§) : void
      {
         if(this.§"<§ == null)
         {
            return;
         }
         param1.§4!i§(this.§"<§);
         this.§"<§ = null;
      }
      
      b2internal function §5e§(param1:§>"#§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§"<§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§=z§.ComputeAABB(_loc4_,param2);
         this.§=z§.ComputeAABB(_loc5_,param3);
         this.§"!s§.§ ![§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§"H§(param3.position,param2.position);
         param1.§2!w§(this.§"<§,this.§"!s§,_loc6_);
      }
   }
}
