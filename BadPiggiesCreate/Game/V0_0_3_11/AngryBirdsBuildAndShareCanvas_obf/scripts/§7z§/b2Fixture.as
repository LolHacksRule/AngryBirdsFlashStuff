package §7z§
{
   import § 6§.§7!&§;
   import § 6§.b2AABB;
   import § 6§.b2RayCastInput;
   import § 6§.b2RayCastOutput;
   import §+L§.b2Math;
   import §+L§.b2Transform;
   import §+L§.b2Vec2;
   import §1!3§.b2MassData;
   import §1!3§.b2Shape;
   import §9![§.b2Contact;
   import §9![§.b2ContactEdge;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §<V§:b2MassData;
      
      b2internal var §3o§:b2AABB;
      
      b2internal var §%"9§:Number;
      
      b2internal var §7t§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §3!H§:b2Shape;
      
      b2internal var §continue§:Number;
      
      b2internal var §]!f§:Number;
      
      b2internal var §8!W§;
      
      b2internal var §@o§:b2FilterData;
      
      b2internal var §2!^§:Boolean;
      
      b2internal var §&M§;
      
      public function b2Fixture()
      {
         this.§@o§ = new b2FilterData();
         super();
         this.§3o§ = new b2AABB();
         this.§&M§ = null;
         this.m_body = null;
         this.§7t§ = null;
         this.§3!H§ = null;
         this.§%"9§ = 0;
         this.§continue§ = 0;
         this.§]!f§ = 0;
      }
      
      public function §,!B§() : int
      {
         return this.§3!H§.§,!B§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§3!H§;
      }
      
      public function §!!'§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§2!^§ == param1)
         {
            return;
         }
         this.§2!^§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§+!S§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§["9§;
            _loc4_ = _loc3_.§^!U§();
            _loc5_ = _loc3_.§`[§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§!!'§(_loc4_.§0!!§() || _loc5_.§0!!§());
            }
            _loc2_ = _loc2_.§1C§;
         }
      }
      
      public function §0!!§() : Boolean
      {
         return this.§2!^§;
      }
      
      public function §77§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§@o§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§+!S§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§["9§;
            _loc4_ = _loc3_.§^!U§();
            _loc5_ = _loc3_.§`[§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§4n§();
            }
            _loc2_ = _loc2_.§1C§;
         }
      }
      
      public function § !D§() : b2FilterData
      {
         return this.§@o§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §9!P§() : b2Fixture
      {
         return this.§7t§;
      }
      
      public function GetUserData() : *
      {
         return this.§&M§;
      }
      
      public function §3T§(param1:*) : void
      {
         this.§&M§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§3!H§.TestPoint(this.m_body.§7V§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§3!H§.RayCast(param1,param2,this.m_body.§7V§());
      }
      
      public function §3K§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§3!H§.ComputeMass(param1,this.§%"9§);
         return param1;
      }
      
      public function §@!Z§(param1:Number) : void
      {
         this.§%"9§ = param1;
      }
      
      public function §?v§() : Number
      {
         return this.§%"9§;
      }
      
      public function §1!4§() : Number
      {
         return this.§continue§;
      }
      
      public function §#!d§(param1:Number) : void
      {
         this.§continue§ = param1;
      }
      
      public function §<!2§() : Number
      {
         return this.§]!f§;
      }
      
      public function §0§(param1:Number) : void
      {
         this.§]!f§ = param1;
      }
      
      public function §3!g§() : b2AABB
      {
         return this.§3o§;
      }
      
      b2internal function §7T§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§&M§ = param3.§'!3§;
         this.§continue§ = param3.friction;
         this.§]!f§ = param3.restitution;
         this.m_body = param1;
         this.§7t§ = null;
         this.§@o§ = param3.filter.Copy();
         this.§2!^§ = param3.§!!t§;
         this.§3!H§ = param3.shape.Copy();
         this.§%"9§ = param3.density;
      }
      
      b2internal function §#"&§() : void
      {
         this.§3!H§ = null;
      }
      
      b2internal function §8!9§(param1:§7!&§, param2:b2Transform) : void
      {
         this.§3!H§.ComputeAABB(this.§3o§,param2);
         this.§8!W§ = param1.§8!9§(this.§3o§,this);
      }
      
      b2internal function §#!]§(param1:§7!&§) : void
      {
         if(this.§8!W§ == null)
         {
            return;
         }
         param1.§#!]§(this.§8!W§);
         this.§8!W§ = null;
      }
      
      b2internal function §="&§(param1:§7!&§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§8!W§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§3!H§.ComputeAABB(_loc4_,param2);
         this.§3!H§.ComputeAABB(_loc5_,param3);
         this.§3o§.§'!v§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§8"!§(param3.position,param2.position);
         param1.§%"7§(this.§8!W§,this.§3o§,_loc6_);
      }
   }
}
