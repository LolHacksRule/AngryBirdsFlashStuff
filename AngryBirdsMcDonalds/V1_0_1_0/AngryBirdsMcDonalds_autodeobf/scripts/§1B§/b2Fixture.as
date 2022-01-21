package §1B§
{
   import §!R§.b2Math;
   import §!R§.b2Transform;
   import §!R§.b2Vec2;
   import §9i§.b2internal;
   import §>!'§.b2Contact;
   import §>!'§.b2ContactEdge;
   import §]7§.§#!0§;
   import §]7§.b2AABB;
   import §]7§.b2RayCastInput;
   import §]7§.b2RayCastOutput;
   import §]q§.b2MassData;
   import §]q§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §",§:b2MassData;
      
      b2internal var §6!h§:b2AABB;
      
      b2internal var §"!-§:Number;
      
      b2internal var §>y§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §'i§:b2Shape;
      
      b2internal var §;!a§:Number;
      
      b2internal var §6!+§:Number;
      
      b2internal var §[x§;
      
      b2internal var §8q§:b2FilterData;
      
      b2internal var §=!>§:Boolean;
      
      b2internal var §89§;
      
      public function b2Fixture()
      {
         this.§8q§ = new b2FilterData();
         super();
         this.§6!h§ = new b2AABB();
         this.§89§ = null;
         this.m_body = null;
         this.§>y§ = null;
         this.§'i§ = null;
         this.§"!-§ = 0;
         this.§;!a§ = 0;
         this.§6!+§ = 0;
      }
      
      public function §#+§() : int
      {
         return this.§'i§.§#+§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§'i§;
      }
      
      public function §^@§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§=!>§ == param1)
         {
            return;
         }
         this.§=!>§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§`K§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§"!3§;
            _loc4_ = _loc3_.§>C§();
            _loc5_ = _loc3_.§3y§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§^@§(_loc4_.§%a§() || _loc5_.§%a§());
            }
            _loc2_ = _loc2_.§6W§;
         }
      }
      
      public function §%a§() : Boolean
      {
         return this.§=!>§;
      }
      
      public function §]!R§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§8q§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§`K§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§"!3§;
            _loc4_ = _loc3_.§>C§();
            _loc5_ = _loc3_.§3y§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§each §();
            }
            _loc2_ = _loc2_.§6W§;
         }
      }
      
      public function §2!U§() : b2FilterData
      {
         return this.§8q§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §-7§() : b2Fixture
      {
         return this.§>y§;
      }
      
      public function GetUserData() : *
      {
         return this.§89§;
      }
      
      public function § !@§(param1:*) : void
      {
         this.§89§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§'i§.TestPoint(this.m_body.§&0§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§'i§.RayCast(param1,param2,this.m_body.§&0§());
      }
      
      public function §2I§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§'i§.ComputeMass(param1,this.§"!-§);
         return param1;
      }
      
      public function §=!,§(param1:Number) : void
      {
         this.§"!-§ = param1;
      }
      
      public function §^z§() : Number
      {
         return this.§"!-§;
      }
      
      public function §'!I§() : Number
      {
         return this.§;!a§;
      }
      
      public function §@!$§(param1:Number) : void
      {
         this.§;!a§ = param1;
      }
      
      public function §?J§() : Number
      {
         return this.§6!+§;
      }
      
      public function §+v§(param1:Number) : void
      {
         this.§6!+§ = param1;
      }
      
      public function §?!c§() : b2AABB
      {
         return this.§6!h§;
      }
      
      b2internal function § %§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§89§ = param3.§0I§;
         this.§;!a§ = param3.friction;
         this.§6!+§ = param3.restitution;
         this.m_body = param1;
         this.§>y§ = null;
         this.§8q§ = param3.filter.Copy();
         this.§=!>§ = param3.§2n§;
         this.§'i§ = param3.shape.Copy();
         this.§"!-§ = param3.density;
      }
      
      b2internal function §%_§() : void
      {
         this.§'i§ = null;
      }
      
      b2internal function §9u§(param1:§#!0§, param2:b2Transform) : void
      {
         this.§'i§.ComputeAABB(this.§6!h§,param2);
         this.§[x§ = param1.§9u§(this.§6!h§,this);
      }
      
      b2internal function §"!"§(param1:§#!0§) : void
      {
         if(this.§[x§ == null)
         {
            return;
         }
         param1.§"!"§(this.§[x§);
         this.§[x§ = null;
      }
      
      b2internal function §+r§(param1:§#!0§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§[x§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§'i§.ComputeAABB(_loc4_,param2);
         this.§'i§.ComputeAABB(_loc5_,param3);
         this.§6!h§.§@#§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§>+§(param3.position,param2.position);
         param1.§7!>§(this.§[x§,this.§6!h§,_loc6_);
      }
   }
}
