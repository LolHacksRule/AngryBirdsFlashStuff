package §<!L§
{
   import § Y§.b2MassData;
   import § Y§.b2Shape;
   import §1z§.b2Contact;
   import §1z§.b2ContactEdge;
   import §6V§.b2Math;
   import §6V§.b2Transform;
   import §6V§.b2Vec2;
   import §?F§.§"l§;
   import §?F§.b2AABB;
   import §?F§.b2RayCastInput;
   import §?F§.b2RayCastOutput;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §8c§:b2MassData;
      
      b2internal var §&!-§:b2AABB;
      
      b2internal var §&-§:Number;
      
      b2internal var §!!U§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §7!J§:b2Shape;
      
      b2internal var §4O§:Number;
      
      b2internal var § J§:Number;
      
      b2internal var §'3§;
      
      b2internal var §;I§:b2FilterData;
      
      b2internal var §^1§:Boolean;
      
      b2internal var §8d§;
      
      public function b2Fixture()
      {
         this.§;I§ = new b2FilterData();
         super();
         this.§&!-§ = new b2AABB();
         this.§8d§ = null;
         this.m_body = null;
         this.§!!U§ = null;
         this.§7!J§ = null;
         this.§&-§ = 0;
         this.§4O§ = 0;
         this.§ J§ = 0;
      }
      
      public function §1k§() : int
      {
         return this.§7!J§.§1k§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§7!J§;
      }
      
      public function §=%§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§^1§ == param1)
         {
            return;
         }
         this.§^1§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§2e§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§'4§;
            _loc4_ = _loc3_.§&+§();
            _loc5_ = _loc3_.§0!!§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§=%§(_loc4_.§2J§() || _loc5_.§2J§());
            }
            _loc2_ = _loc2_.§+!P§;
         }
      }
      
      public function §2J§() : Boolean
      {
         return this.§^1§;
      }
      
      public function §7y§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§;I§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§2e§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§'4§;
            _loc4_ = _loc3_.§&+§();
            _loc5_ = _loc3_.§0!!§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§2H§();
            }
            _loc2_ = _loc2_.§+!P§;
         }
      }
      
      public function §[2§() : b2FilterData
      {
         return this.§;I§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §4"§() : b2Fixture
      {
         return this.§!!U§;
      }
      
      public function GetUserData() : *
      {
         return this.§8d§;
      }
      
      public function §9$§(param1:*) : void
      {
         this.§8d§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§7!J§.TestPoint(this.m_body.§`!E§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§7!J§.RayCast(param1,param2,this.m_body.§`!E§());
      }
      
      public function §7u§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§7!J§.ComputeMass(param1,this.§&-§);
         return param1;
      }
      
      public function §"!T§(param1:Number) : void
      {
         this.§&-§ = param1;
      }
      
      public function §]!`§() : Number
      {
         return this.§&-§;
      }
      
      public function §!!?§() : Number
      {
         return this.§4O§;
      }
      
      public function §6!%§(param1:Number) : void
      {
         this.§4O§ = param1;
      }
      
      public function §5!2§() : Number
      {
         return this.§ J§;
      }
      
      public function §-]§(param1:Number) : void
      {
         this.§ J§ = param1;
      }
      
      public function §^'§() : b2AABB
      {
         return this.§&!-§;
      }
      
      b2internal function §8y§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§8d§ = param3.§`P§;
         this.§4O§ = param3.friction;
         this.§ J§ = param3.restitution;
         this.m_body = param1;
         this.§!!U§ = null;
         this.§;I§ = param3.filter.Copy();
         this.§^1§ = param3.§<!M§;
         this.§7!J§ = param3.shape.Copy();
         this.§&-§ = param3.density;
      }
      
      b2internal function §#2§() : void
      {
         this.§7!J§ = null;
      }
      
      b2internal function §0A§(param1:§"l§, param2:b2Transform) : void
      {
         this.§7!J§.ComputeAABB(this.§&!-§,param2);
         this.§'3§ = param1.§0A§(this.§&!-§,this);
      }
      
      b2internal function §7T§(param1:§"l§) : void
      {
         if(this.§'3§ == null)
         {
            return;
         }
         param1.§7T§(this.§'3§);
         this.§'3§ = null;
      }
      
      b2internal function §8!5§(param1:§"l§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§'3§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§7!J§.ComputeAABB(_loc4_,param2);
         this.§7!J§.ComputeAABB(_loc5_,param3);
         this.§&!-§.§2a§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§`"§(param3.position,param2.position);
         param1.§=g§(this.§'3§,this.§&!-§,_loc6_);
      }
   }
}
