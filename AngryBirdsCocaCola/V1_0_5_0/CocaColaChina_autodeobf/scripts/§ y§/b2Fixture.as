package § y§
{
   import §!u§.§5c§;
   import §!u§.b2AABB;
   import §!u§.b2RayCastInput;
   import §!u§.b2RayCastOutput;
   import §0b§.b2Contact;
   import §0b§.b2ContactEdge;
   import §54§.b2internal;
   import §;h§.b2Math;
   import §;h§.b2Transform;
   import §;h§.b2Vec2;
   import §]!7§.b2MassData;
   import §]!7§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §%`§:b2MassData;
      
      b2internal var §^D§:b2AABB;
      
      b2internal var §77§:Number;
      
      b2internal var §&!+§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §[s§:b2Shape;
      
      b2internal var §>w§:Number;
      
      b2internal var §0O§:Number;
      
      b2internal var §>S§;
      
      b2internal var §&!_§:b2FilterData;
      
      b2internal var §0C§:Boolean;
      
      b2internal var §<8§;
      
      public function b2Fixture()
      {
         this.§&!_§ = new b2FilterData();
         super();
         this.§^D§ = new b2AABB();
         this.§<8§ = null;
         this.m_body = null;
         this.§&!+§ = null;
         this.§[s§ = null;
         this.§77§ = 0;
         this.§>w§ = 0;
         this.§0O§ = 0;
      }
      
      public function §`!Q§() : int
      {
         return this.§[s§.§`!Q§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§[s§;
      }
      
      public function §%!6§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§0C§ == param1)
         {
            return;
         }
         this.§0C§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§1!D§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§`!T§;
            _loc4_ = _loc3_.§^Z§();
            _loc5_ = _loc3_.§3<§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§%!6§(_loc4_.§6!Z§() || _loc5_.§6!Z§());
            }
            _loc2_ = _loc2_.§'_§;
         }
      }
      
      public function §6!Z§() : Boolean
      {
         return this.§0C§;
      }
      
      public function §;'§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§&!_§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§1!D§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§`!T§;
            _loc4_ = _loc3_.§^Z§();
            _loc5_ = _loc3_.§3<§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§7!^§();
            }
            _loc2_ = _loc2_.§'_§;
         }
      }
      
      public function §<!+§() : b2FilterData
      {
         return this.§&!_§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §3!I§() : b2Fixture
      {
         return this.§&!+§;
      }
      
      public function GetUserData() : *
      {
         return this.§<8§;
      }
      
      public function §'!W§(param1:*) : void
      {
         this.§<8§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§[s§.TestPoint(this.m_body.§0!S§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§[s§.RayCast(param1,param2,this.m_body.§0!S§());
      }
      
      public function §!!M§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§[s§.ComputeMass(param1,this.§77§);
         return param1;
      }
      
      public function §@!`§(param1:Number) : void
      {
         this.§77§ = param1;
      }
      
      public function §+!Q§() : Number
      {
         return this.§77§;
      }
      
      public function §`!J§() : Number
      {
         return this.§>w§;
      }
      
      public function §@9§(param1:Number) : void
      {
         this.§>w§ = param1;
      }
      
      public function §'M§() : Number
      {
         return this.§0O§;
      }
      
      public function §6D§(param1:Number) : void
      {
         this.§0O§ = param1;
      }
      
      public function §^0§() : b2AABB
      {
         return this.§^D§;
      }
      
      b2internal function §`Q§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§<8§ = param3.§^!V§;
         this.§>w§ = param3.friction;
         this.§0O§ = param3.restitution;
         this.m_body = param1;
         this.§&!+§ = null;
         this.§&!_§ = param3.filter.Copy();
         this.§0C§ = param3.§&R§;
         this.§[s§ = param3.shape.Copy();
         this.§77§ = param3.density;
      }
      
      b2internal function §5!,§() : void
      {
         this.§[s§ = null;
      }
      
      b2internal function §7!@§(param1:§5c§, param2:b2Transform) : void
      {
         this.§[s§.ComputeAABB(this.§^D§,param2);
         this.§>S§ = param1.§7!@§(this.§^D§,this);
      }
      
      b2internal function §@q§(param1:§5c§) : void
      {
         if(this.§>S§ == null)
         {
            return;
         }
         param1.§@q§(this.§>S§);
         this.§>S§ = null;
      }
      
      b2internal function §0!W§(param1:§5c§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§>S§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§[s§.ComputeAABB(_loc4_,param2);
         this.§[s§.ComputeAABB(_loc5_,param3);
         this.§^D§.§?!P§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§"!S§(param3.position,param2.position);
         param1.§9!c§(this.§>S§,this.§^D§,_loc6_);
      }
   }
}
