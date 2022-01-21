package §7!5§
{
   import §%!h§.b2MassData;
   import §%!h§.b2Shape;
   import §7!Y§.b2internal;
   import §8!n§.§>=§;
   import §8!n§.b2AABB;
   import §8!n§.b2RayCastInput;
   import §8!n§.b2RayCastOutput;
   import §;W§.b2Contact;
   import §;W§.b2ContactEdge;
   import §@![§.b2Math;
   import §@![§.b2Transform;
   import §@![§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §]!l§:b2MassData;
      
      b2internal var §!1§:b2AABB;
      
      b2internal var §&+§:Number;
      
      b2internal var §%&§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §2!7§:b2Shape;
      
      b2internal var §+!i§:Number;
      
      b2internal var §6!3§:Number;
      
      b2internal var §4!!§;
      
      b2internal var §@u§:b2FilterData;
      
      b2internal var §'!#§:Boolean;
      
      b2internal var §0!m§;
      
      public function b2Fixture()
      {
         this.§@u§ = new b2FilterData();
         super();
         this.§!1§ = new b2AABB();
         this.§0!m§ = null;
         this.m_body = null;
         this.§%&§ = null;
         this.§2!7§ = null;
         this.§&+§ = 0;
         this.§+!i§ = 0;
         this.§6!3§ = 0;
      }
      
      public function §&!B§() : int
      {
         return this.§2!7§.§&!B§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§2!7§;
      }
      
      public function §9C§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§'!#§ == param1)
         {
            return;
         }
         this.§'!#§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§54§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§+!Y§;
            _loc4_ = _loc3_.§"![§();
            _loc5_ = _loc3_.§5,§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§9C§(_loc4_.§1d§() || _loc5_.§1d§());
            }
            _loc2_ = _loc2_.§"!=§;
         }
      }
      
      public function §1d§() : Boolean
      {
         return this.§'!#§;
      }
      
      public function §5M§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§@u§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§54§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§+!Y§;
            _loc4_ = _loc3_.§"![§();
            _loc5_ = _loc3_.§5,§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§9q§();
            }
            _loc2_ = _loc2_.§"!=§;
         }
      }
      
      public function §8!X§() : b2FilterData
      {
         return this.§@u§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §5w§() : b2Fixture
      {
         return this.§%&§;
      }
      
      public function GetUserData() : *
      {
         return this.§0!m§;
      }
      
      public function §6]§(param1:*) : void
      {
         this.§0!m§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§2!7§.TestPoint(this.m_body.§@!;§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§2!7§.RayCast(param1,param2,this.m_body.§@!;§());
      }
      
      public function §8#§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§2!7§.ComputeMass(param1,this.§&+§);
         return param1;
      }
      
      public function §1!I§(param1:Number) : void
      {
         this.§&+§ = param1;
      }
      
      public function §<!&§() : Number
      {
         return this.§&+§;
      }
      
      public function §;!f§() : Number
      {
         return this.§+!i§;
      }
      
      public function §6!6§(param1:Number) : void
      {
         this.§+!i§ = param1;
      }
      
      public function §%!+§() : Number
      {
         return this.§6!3§;
      }
      
      public function §'!g§(param1:Number) : void
      {
         this.§6!3§ = param1;
      }
      
      public function §'H§() : b2AABB
      {
         return this.§!1§;
      }
      
      b2internal function §class§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§0!m§ = param3.§7M§;
         this.§+!i§ = param3.friction;
         this.§6!3§ = param3.restitution;
         this.m_body = param1;
         this.§%&§ = null;
         this.§@u§ = param3.filter.Copy();
         this.§'!#§ = param3.§@7§;
         this.§2!7§ = param3.shape.Copy();
         this.§&+§ = param3.density;
      }
      
      b2internal function §5^§() : void
      {
         this.§2!7§ = null;
      }
      
      b2internal function § set§(param1:§>=§, param2:b2Transform) : void
      {
         this.§2!7§.ComputeAABB(this.§!1§,param2);
         this.§4!!§ = param1.§ set§(this.§!1§,this);
      }
      
      b2internal function §#j§(param1:§>=§) : void
      {
         if(this.§4!!§ == null)
         {
            return;
         }
         param1.§#j§(this.§4!!§);
         this.§4!!§ = null;
      }
      
      b2internal function §>V§(param1:§>=§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§4!!§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§2!7§.ComputeAABB(_loc4_,param2);
         this.§2!7§.ComputeAABB(_loc5_,param3);
         this.§!1§.§#g§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§'u§(param3.position,param2.position);
         param1.§+!L§(this.§4!!§,this.§!1§,_loc6_);
      }
   }
}
