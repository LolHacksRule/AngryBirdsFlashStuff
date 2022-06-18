package §9t§
{
   import §!!#§.§4!b§;
   import §!!#§.b2AABB;
   import §!!#§.b2RayCastInput;
   import §!!#§.b2RayCastOutput;
   import §4! §.b2internal;
   import §[!E§.b2MassData;
   import §[!E§.b2Shape;
   import §[-§.b2Contact;
   import §[-§.b2ContactEdge;
   import §^q§.b2Math;
   import §^q§.b2Transform;
   import §^q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §3!U§:b2MassData;
      
      b2internal var §5w§:b2AABB;
      
      b2internal var §>!2§:Number;
      
      b2internal var §%m§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §[c§:b2Shape;
      
      b2internal var §7!M§:Number;
      
      b2internal var §%+§:Number;
      
      b2internal var §!!]§;
      
      b2internal var §@n§:b2FilterData;
      
      b2internal var §@f§:Boolean;
      
      b2internal var §,2§;
      
      public function b2Fixture()
      {
         this.§@n§ = new b2FilterData();
         super();
         this.§5w§ = new b2AABB();
         this.§,2§ = null;
         this.m_body = null;
         this.§%m§ = null;
         this.§[c§ = null;
         this.§>!2§ = 0;
         this.§7!M§ = 0;
         this.§%+§ = 0;
      }
      
      public function §9P§() : int
      {
         return this.§[c§.§9P§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§[c§;
      }
      
      public function §,g§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§@f§ == param1)
         {
            return;
         }
         this.§@f§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!u§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§2L§;
            _loc4_ = _loc3_.§>!b§();
            _loc5_ = _loc3_.§1t§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§,g§(_loc4_.§@M§() || _loc5_.§@M§());
            }
            _loc2_ = _loc2_.§1!V§;
         }
      }
      
      public function §@M§() : Boolean
      {
         return this.§@f§;
      }
      
      public function §6m§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§@n§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!u§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§2L§;
            _loc4_ = _loc3_.§>!b§();
            _loc5_ = _loc3_.§1t§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§0!3§();
            }
            _loc2_ = _loc2_.§1!V§;
         }
      }
      
      public function §6!_§() : b2FilterData
      {
         return this.§@n§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §&!V§() : b2Fixture
      {
         return this.§%m§;
      }
      
      public function GetUserData() : *
      {
         return this.§,2§;
      }
      
      public function §]4§(param1:*) : void
      {
         this.§,2§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§[c§.TestPoint(this.m_body.§%!c§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§[c§.RayCast(param1,param2,this.m_body.§%!c§());
      }
      
      public function §1=§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§[c§.ComputeMass(param1,this.§>!2§);
         return param1;
      }
      
      public function §1`§(param1:Number) : void
      {
         this.§>!2§ = param1;
      }
      
      public function §"![§() : Number
      {
         return this.§>!2§;
      }
      
      public function §[#§() : Number
      {
         return this.§7!M§;
      }
      
      public function §-7§(param1:Number) : void
      {
         this.§7!M§ = param1;
      }
      
      public function §6e§() : Number
      {
         return this.§%+§;
      }
      
      public function §5!"§(param1:Number) : void
      {
         this.§%+§ = param1;
      }
      
      public function §8V§() : b2AABB
      {
         return this.§5w§;
      }
      
      b2internal function §1P§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§,2§ = param3.§]h§;
         this.§7!M§ = param3.friction;
         this.§%+§ = param3.restitution;
         this.m_body = param1;
         this.§%m§ = null;
         this.§@n§ = param3.filter.Copy();
         this.§@f§ = param3.§ !Q§;
         this.§[c§ = param3.shape.Copy();
         this.§>!2§ = param3.density;
      }
      
      b2internal function §88§() : void
      {
         this.§[c§ = null;
      }
      
      b2internal function §+2§(param1:§4!b§, param2:b2Transform) : void
      {
         this.§[c§.ComputeAABB(this.§5w§,param2);
         this.§!!]§ = param1.§+2§(this.§5w§,this);
      }
      
      b2internal function §52§(param1:§4!b§) : void
      {
         if(this.§!!]§ == null)
         {
            return;
         }
         param1.§52§(this.§!!]§);
         this.§!!]§ = null;
      }
      
      b2internal function §]'§(param1:§4!b§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§!!]§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§[c§.ComputeAABB(_loc4_,param2);
         this.§[c§.ComputeAABB(_loc5_,param3);
         this.§5w§.§>!6§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§#!F§(param3.position,param2.position);
         param1.§<!+§(this.§!!]§,this.§5w§,_loc6_);
      }
   }
}
