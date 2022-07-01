package §;'§
{
   import § !%§.b2internal;
   import §+W§.b2Contact;
   import §+W§.b2ContactEdge;
   import §,!k§.b2Math;
   import §,!k§.b2Transform;
   import §,!k§.b2Vec2;
   import §6f§.§?"§;
   import §6f§.b2AABB;
   import §6f§.b2RayCastInput;
   import §6f§.b2RayCastOutput;
   import §?m§.b2MassData;
   import §?m§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §4Z§:b2MassData;
      
      b2internal var §-R§:b2AABB;
      
      b2internal var §#N§:Number;
      
      b2internal var §1F§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §in §:b2Shape;
      
      b2internal var §,!O§:Number;
      
      b2internal var §#l§:Number;
      
      b2internal var §4!B§;
      
      b2internal var §<-§:b2FilterData;
      
      b2internal var §!x§:Boolean;
      
      b2internal var §"!+§;
      
      public function b2Fixture()
      {
         this.§<-§ = new b2FilterData();
         super();
         this.§-R§ = new b2AABB();
         this.§"!+§ = null;
         this.m_body = null;
         this.§1F§ = null;
         this.§in § = null;
         this.§#N§ = 0;
         this.§,!O§ = 0;
         this.§#l§ = 0;
      }
      
      public function §]"$§() : int
      {
         return this.§in §.§]"$§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§in §;
      }
      
      public function §!!t§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§!x§ == param1)
         {
            return;
         }
         this.§!x§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§,!'§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§5T§;
            _loc4_ = _loc3_.§6_§();
            _loc5_ = _loc3_.§9!R§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§!!t§(_loc4_.§=!§() || _loc5_.§=!§());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §=!§() : Boolean
      {
         return this.§!x§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§<-§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§,!'§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§5T§;
            _loc4_ = _loc3_.§6_§();
            _loc5_ = _loc3_.§9!R§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§#!2§();
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §4A§() : b2FilterData
      {
         return this.§<-§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §6P§() : b2Fixture
      {
         return this.§1F§;
      }
      
      public function GetUserData() : *
      {
         return this.§"!+§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§"!+§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§in §.TestPoint(this.m_body.§6!>§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§in §.RayCast(param1,param2,this.m_body.§6!>§());
      }
      
      public function §<<§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§in §.ComputeMass(param1,this.§#N§);
         return param1;
      }
      
      public function §>!P§(param1:Number) : void
      {
         this.§#N§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§#N§;
      }
      
      public function §2!<§() : Number
      {
         return this.§,!O§;
      }
      
      public function § E§(param1:Number) : void
      {
         this.§,!O§ = param1;
      }
      
      public function § !W§() : Number
      {
         return this.§#l§;
      }
      
      public function §,S§(param1:Number) : void
      {
         this.§#l§ = param1;
      }
      
      public function §'K§() : b2AABB
      {
         return this.§-R§;
      }
      
      b2internal function §-",§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§"!+§ = param3.userData;
         this.§,!O§ = param3.friction;
         this.§#l§ = param3.restitution;
         this.m_body = param1;
         this.§1F§ = null;
         this.§<-§ = param3.filter.Copy();
         this.§!x§ = param3.§4!e§;
         this.§in § = param3.shape.Copy();
         this.§#N§ = param3.density;
      }
      
      b2internal function §'!h§() : void
      {
         this.§in § = null;
      }
      
      b2internal function §?!R§(param1:§?"§, param2:b2Transform) : void
      {
         this.§in §.ComputeAABB(this.§-R§,param2);
         this.§4!B§ = param1.§?!R§(this.§-R§,this);
      }
      
      b2internal function §;!b§(param1:§?"§) : void
      {
         if(this.§4!B§ == null)
         {
            return;
         }
         param1.§;!b§(this.§4!B§);
         this.§4!B§ = null;
      }
      
      b2internal function §#n§(param1:§?"§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§4!B§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§in §.ComputeAABB(_loc4_,param2);
         this.§in §.ComputeAABB(_loc5_,param3);
         this.§-R§.§<I§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§5!y§(param3.position,param2.position);
         param1.§7!§(this.§4!B§,this.§-R§,_loc6_);
      }
   }
}
