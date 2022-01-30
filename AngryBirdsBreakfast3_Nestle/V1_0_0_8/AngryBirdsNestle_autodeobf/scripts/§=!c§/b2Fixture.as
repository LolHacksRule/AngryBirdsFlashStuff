package §=!c§
{
   import §-j§.§3!6§;
   import §-j§.b2AABB;
   import §-j§.b2RayCastInput;
   import §-j§.b2RayCastOutput;
   import §2"%§.b2Contact;
   import §2"%§.b2ContactEdge;
   import §7!F§.b2internal;
   import §[K§.b2Math;
   import §[K§.b2Transform;
   import §[K§.b2Vec2;
   import §[e§.b2MassData;
   import §[e§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §,'§:b2MassData;
      
      b2internal var §@j§:b2AABB;
      
      b2internal var §!!W§:Number;
      
      b2internal var §4!c§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §;!Z§:b2Shape;
      
      b2internal var §"!n§:Number;
      
      b2internal var §3!`§:Number;
      
      b2internal var §]!L§;
      
      b2internal var §,k§:b2FilterData;
      
      b2internal var §';§:Boolean;
      
      b2internal var §<!§;
      
      public function b2Fixture()
      {
         this.§,k§ = new b2FilterData();
         super();
         this.§@j§ = new b2AABB();
         this.§<!§ = null;
         this.m_body = null;
         this.§4!c§ = null;
         this.§;!Z§ = null;
         this.§!!W§ = 0;
         this.§"!n§ = 0;
         this.§3!`§ = 0;
      }
      
      public function §&!u§() : int
      {
         return this.§;!Z§.§&!u§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§;!Z§;
      }
      
      public function §#H§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§';§ == param1)
         {
            return;
         }
         this.§';§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§^!8§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§`Z§;
            _loc4_ = _loc3_.§^h§();
            _loc5_ = _loc3_.§9!v§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§#H§(_loc4_.§+!E§() || _loc5_.§+!E§());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §+!E§() : Boolean
      {
         return this.§';§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§,k§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§^!8§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§`Z§;
            _loc4_ = _loc3_.§^h§();
            _loc5_ = _loc3_.§9!v§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§!!i§();
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §]"4§() : b2FilterData
      {
         return this.§,k§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §<b§() : b2Fixture
      {
         return this.§4!c§;
      }
      
      public function GetUserData() : *
      {
         return this.§<!§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§<!§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§;!Z§.TestPoint(this.m_body.§0!_§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§;!Z§.RayCast(param1,param2,this.m_body.§0!_§());
      }
      
      public function §4!%§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§;!Z§.ComputeMass(param1,this.§!!W§);
         return param1;
      }
      
      public function §#Y§(param1:Number) : void
      {
         this.§!!W§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§!!W§;
      }
      
      public function §2[§() : Number
      {
         return this.§"!n§;
      }
      
      public function §,!v§(param1:Number) : void
      {
         this.§"!n§ = param1;
      }
      
      public function §9!a§() : Number
      {
         return this.§3!`§;
      }
      
      public function §'!`§(param1:Number) : void
      {
         this.§3!`§ = param1;
      }
      
      public function §6"6§() : b2AABB
      {
         return this.§@j§;
      }
      
      b2internal function §<!n§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§<!§ = param3.userData;
         this.§"!n§ = param3.friction;
         this.§3!`§ = param3.restitution;
         this.m_body = param1;
         this.§4!c§ = null;
         this.§,k§ = param3.filter.Copy();
         this.§';§ = param3.§,"%§;
         this.§;!Z§ = param3.shape.Copy();
         this.§!!W§ = param3.density;
      }
      
      b2internal function §6!j§() : void
      {
         this.§;!Z§ = null;
      }
      
      b2internal function §3!?§(param1:§3!6§, param2:b2Transform) : void
      {
         this.§;!Z§.ComputeAABB(this.§@j§,param2);
         this.§]!L§ = param1.§3!?§(this.§@j§,this);
      }
      
      b2internal function §<9§(param1:§3!6§) : void
      {
         if(this.§]!L§ == null)
         {
            return;
         }
         param1.§<9§(this.§]!L§);
         this.§]!L§ = null;
      }
      
      b2internal function §1q§(param1:§3!6§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§]!L§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§;!Z§.ComputeAABB(_loc4_,param2);
         this.§;!Z§.ComputeAABB(_loc5_,param3);
         this.§@j§.§8"7§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§,@§(param3.position,param2.position);
         param1.§?8§(this.§]!L§,this.§@j§,_loc6_);
      }
   }
}
