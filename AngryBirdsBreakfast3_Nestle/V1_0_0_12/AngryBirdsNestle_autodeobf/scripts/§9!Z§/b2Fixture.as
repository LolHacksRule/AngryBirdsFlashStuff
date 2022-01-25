package §9!Z§
{
   import §'I§.b2internal;
   import §7!&§.§;!p§;
   import §7!&§.b2AABB;
   import §7!&§.b2RayCastInput;
   import §7!&§.b2RayCastOutput;
   import §?"'§.b2Math;
   import §?"'§.b2Transform;
   import §?"'§.b2Vec2;
   import §[K§.b2Contact;
   import §[K§.b2ContactEdge;
   import §`!C§.b2MassData;
   import §`!C§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §1f§:b2MassData;
      
      b2internal var §4"3§:b2AABB;
      
      b2internal var §&!X§:Number;
      
      b2internal var §>7§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §@!2§:b2Shape;
      
      b2internal var §=M§:Number;
      
      b2internal var §?"6§:Number;
      
      b2internal var §#r§;
      
      b2internal var §1B§:b2FilterData;
      
      b2internal var §`g§:Boolean;
      
      b2internal var §?!W§;
      
      public function b2Fixture()
      {
         this.§1B§ = new b2FilterData();
         super();
         this.§4"3§ = new b2AABB();
         this.§?!W§ = null;
         this.m_body = null;
         this.§>7§ = null;
         this.§@!2§ = null;
         this.§&!X§ = 0;
         this.§=M§ = 0;
         this.§?"6§ = 0;
      }
      
      public function §&r§() : int
      {
         return this.§@!2§.§&r§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§@!2§;
      }
      
      public function §91§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§`g§ == param1)
         {
            return;
         }
         this.§`g§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§+@§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§1!z§;
            _loc4_ = _loc3_.§@"0§();
            _loc5_ = _loc3_.§!!Z§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§91§(_loc4_.§9!@§() || _loc5_.§9!@§());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §9!@§() : Boolean
      {
         return this.§`g§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§1B§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§+@§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§1!z§;
            _loc4_ = _loc3_.§@"0§();
            _loc5_ = _loc3_.§!!Z§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§->§();
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §'7§() : b2FilterData
      {
         return this.§1B§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §&!B§() : b2Fixture
      {
         return this.§>7§;
      }
      
      public function GetUserData() : *
      {
         return this.§?!W§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§?!W§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§@!2§.TestPoint(this.m_body.§0!z§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§@!2§.RayCast(param1,param2,this.m_body.§0!z§());
      }
      
      public function §'z§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§@!2§.ComputeMass(param1,this.§&!X§);
         return param1;
      }
      
      public function §2!z§(param1:Number) : void
      {
         this.§&!X§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§&!X§;
      }
      
      public function §^%§() : Number
      {
         return this.§=M§;
      }
      
      public function §-j§(param1:Number) : void
      {
         this.§=M§ = param1;
      }
      
      public function §0!5§() : Number
      {
         return this.§?"6§;
      }
      
      public function §?!Y§(param1:Number) : void
      {
         this.§?"6§ = param1;
      }
      
      public function §7!9§() : b2AABB
      {
         return this.§4"3§;
      }
      
      b2internal function §&y§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§?!W§ = param3.userData;
         this.§=M§ = param3.friction;
         this.§?"6§ = param3.restitution;
         this.m_body = param1;
         this.§>7§ = null;
         this.§1B§ = param3.filter.Copy();
         this.§`g§ = param3.§"!U§;
         this.§@!2§ = param3.shape.Copy();
         this.§&!X§ = param3.density;
      }
      
      b2internal function §"!,§() : void
      {
         this.§@!2§ = null;
      }
      
      b2internal function §-$§(param1:§;!p§, param2:b2Transform) : void
      {
         this.§@!2§.ComputeAABB(this.§4"3§,param2);
         this.§#r§ = param1.§-$§(this.§4"3§,this);
      }
      
      b2internal function §=§(param1:§;!p§) : void
      {
         if(this.§#r§ == null)
         {
            return;
         }
         param1.§=§(this.§#r§);
         this.§#r§ = null;
      }
      
      b2internal function §3C§(param1:§;!p§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§#r§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§@!2§.ComputeAABB(_loc4_,param2);
         this.§@!2§.ComputeAABB(_loc5_,param3);
         this.§4"3§.§8C§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§?7§(param3.position,param2.position);
         param1.§2v§(this.§#r§,this.§4"3§,_loc6_);
      }
   }
}
