package §?!F§
{
   import §%]§.§4!6§;
   import §%]§.b2AABB;
   import §%]§.b2RayCastInput;
   import §%]§.b2RayCastOutput;
   import §,!3§.b2Math;
   import §,!3§.b2Transform;
   import §,!3§.b2Vec2;
   import §3'§.b2internal;
   import §=u§.b2MassData;
   import §=u§.b2Shape;
   import §@^§.b2Contact;
   import §@^§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §%g§:b2MassData;
      
      b2internal var §2l§:b2AABB;
      
      b2internal var §^S§:Number;
      
      b2internal var §+[§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §<U§:b2Shape;
      
      b2internal var §!!`§:Number;
      
      b2internal var §7V§:Number;
      
      b2internal var §1Z§;
      
      b2internal var §1!I§:b2FilterData;
      
      b2internal var §?;§:Boolean;
      
      b2internal var §?!I§;
      
      public function b2Fixture()
      {
         this.§1!I§ = new b2FilterData();
         super();
         this.§2l§ = new b2AABB();
         this.§?!I§ = null;
         this.m_body = null;
         this.§+[§ = null;
         this.§<U§ = null;
         this.§^S§ = 0;
         this.§!!`§ = 0;
         this.§7V§ = 0;
      }
      
      public function §[!H§() : int
      {
         return this.§<U§.§[!H§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§<U§;
      }
      
      public function §<!P§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§?;§ == param1)
         {
            return;
         }
         this.§?;§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!q§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§;![§;
            _loc4_ = _loc3_.§@!$§();
            _loc5_ = _loc3_.§1!+§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§<!P§(_loc4_.§&!O§() || _loc5_.§&!O§());
            }
            _loc2_ = _loc2_.§"R§;
         }
      }
      
      public function §&!O§() : Boolean
      {
         return this.§?;§;
      }
      
      public function §get §(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§1!I§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!q§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§;![§;
            _loc4_ = _loc3_.§@!$§();
            _loc5_ = _loc3_.§1!+§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§,!'§();
            }
            _loc2_ = _loc2_.§"R§;
         }
      }
      
      public function §%B§() : b2FilterData
      {
         return this.§1!I§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §'Q§() : b2Fixture
      {
         return this.§+[§;
      }
      
      public function GetUserData() : *
      {
         return this.§?!I§;
      }
      
      public function §0%§(param1:*) : void
      {
         this.§?!I§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§<U§.TestPoint(this.m_body.§50§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§<U§.RayCast(param1,param2,this.m_body.§50§());
      }
      
      public function §0u§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§<U§.ComputeMass(param1,this.§^S§);
         return param1;
      }
      
      public function §%h§(param1:Number) : void
      {
         this.§^S§ = param1;
      }
      
      public function §5a§() : Number
      {
         return this.§^S§;
      }
      
      public function §=8§() : Number
      {
         return this.§!!`§;
      }
      
      public function §>!=§(param1:Number) : void
      {
         this.§!!`§ = param1;
      }
      
      public function §9!E§() : Number
      {
         return this.§7V§;
      }
      
      public function §6!A§(param1:Number) : void
      {
         this.§7V§ = param1;
      }
      
      public function §-]§() : b2AABB
      {
         return this.§2l§;
      }
      
      b2internal function §<!E§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§?!I§ = param3.§!Q§;
         this.§!!`§ = param3.friction;
         this.§7V§ = param3.restitution;
         this.m_body = param1;
         this.§+[§ = null;
         this.§1!I§ = param3.filter.Copy();
         this.§?;§ = param3.§1!&§;
         this.§<U§ = param3.shape.Copy();
         this.§^S§ = param3.density;
      }
      
      b2internal function §[!,§() : void
      {
         this.§<U§ = null;
      }
      
      b2internal function §]!G§(param1:§4!6§, param2:b2Transform) : void
      {
         this.§<U§.ComputeAABB(this.§2l§,param2);
         this.§1Z§ = param1.§]!G§(this.§2l§,this);
      }
      
      b2internal function §&=§(param1:§4!6§) : void
      {
         if(this.§1Z§ == null)
         {
            return;
         }
         param1.§&=§(this.§1Z§);
         this.§1Z§ = null;
      }
      
      b2internal function §4!V§(param1:§4!6§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§1Z§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§<U§.ComputeAABB(_loc4_,param2);
         this.§<U§.ComputeAABB(_loc5_,param3);
         this.§2l§.§3z§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§#!G§(param3.position,param2.position);
         param1.§6!&§(this.§1Z§,this.§2l§,_loc6_);
      }
   }
}
