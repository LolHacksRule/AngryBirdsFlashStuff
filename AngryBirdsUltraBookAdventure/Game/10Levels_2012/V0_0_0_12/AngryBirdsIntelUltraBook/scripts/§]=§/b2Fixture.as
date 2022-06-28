package §]=§
{
   import §#!"§.b2MassData;
   import §#!"§.b2Shape;
   import §&L§.b2Math;
   import §&L§.b2Transform;
   import §&L§.b2Vec2;
   import §'s§.§8!b§;
   import §'s§.b2AABB;
   import §'s§.b2RayCastInput;
   import §'s§.b2RayCastOutput;
   import §+!,§.b2internal;
   import §6!9§.b2Contact;
   import §6!9§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §7!g§:b2MassData;
      
      b2internal var §!!7§:b2AABB;
      
      b2internal var §5!2§:Number;
      
      b2internal var §,1§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §2!d§:b2Shape;
      
      b2internal var §`!T§:Number;
      
      b2internal var §7!a§:Number;
      
      b2internal var §<V§;
      
      b2internal var §&!j§:b2FilterData;
      
      b2internal var §%R§:Boolean;
      
      b2internal var §8!B§;
      
      public function b2Fixture()
      {
         this.§&!j§ = new b2FilterData();
         super();
         this.§!!7§ = new b2AABB();
         this.§8!B§ = null;
         this.m_body = null;
         this.§,1§ = null;
         this.§2!d§ = null;
         this.§5!2§ = 0;
         this.§`!T§ = 0;
         this.§7!a§ = 0;
      }
      
      public function §-V§() : int
      {
         return this.§2!d§.§-V§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§2!d§;
      }
      
      public function §`7§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§%R§ == param1)
         {
            return;
         }
         this.§%R§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§[7§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§4! §;
            _loc4_ = _loc3_.§2!N§();
            _loc5_ = _loc3_.§`!Q§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§`7§(_loc4_.§?!V§() || _loc5_.§?!V§());
            }
            _loc2_ = _loc2_.§2B§;
         }
      }
      
      public function §?!V§() : Boolean
      {
         return this.§%R§;
      }
      
      public function §7!]§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§&!j§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§[7§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§4! §;
            _loc4_ = _loc3_.§2!N§();
            _loc5_ = _loc3_.§`!Q§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§>0§();
            }
            _loc2_ = _loc2_.§2B§;
         }
      }
      
      public function §^!M§() : b2FilterData
      {
         return this.§&!j§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §70§() : b2Fixture
      {
         return this.§,1§;
      }
      
      public function GetUserData() : *
      {
         return this.§8!B§;
      }
      
      public function §-!M§(param1:*) : void
      {
         this.§8!B§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§2!d§.TestPoint(this.m_body.§%!B§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§2!d§.RayCast(param1,param2,this.m_body.§%!B§());
      }
      
      public function §2!6§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§2!d§.ComputeMass(param1,this.§5!2§);
         return param1;
      }
      
      public function §#!D§(param1:Number) : void
      {
         this.§5!2§ = param1;
      }
      
      public function §]!&§() : Number
      {
         return this.§5!2§;
      }
      
      public function §6p§() : Number
      {
         return this.§`!T§;
      }
      
      public function §9!$§(param1:Number) : void
      {
         this.§`!T§ = param1;
      }
      
      public function §@x§() : Number
      {
         return this.§7!a§;
      }
      
      public function §9!_§(param1:Number) : void
      {
         this.§7!a§ = param1;
      }
      
      public function §=!;§() : b2AABB
      {
         return this.§!!7§;
      }
      
      b2internal function §]!U§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§8!B§ = param3.§?!X§;
         this.§`!T§ = param3.friction;
         this.§7!a§ = param3.restitution;
         this.m_body = param1;
         this.§,1§ = null;
         this.§&!j§ = param3.filter.Copy();
         this.§%R§ = param3.§ !4§;
         this.§2!d§ = param3.shape.Copy();
         this.§5!2§ = param3.density;
      }
      
      b2internal function §"P§() : void
      {
         this.§2!d§ = null;
      }
      
      b2internal function §6K§(param1:§8!b§, param2:b2Transform) : void
      {
         this.§2!d§.ComputeAABB(this.§!!7§,param2);
         this.§<V§ = param1.§6K§(this.§!!7§,this);
      }
      
      b2internal function §[!3§(param1:§8!b§) : void
      {
         if(this.§<V§ == null)
         {
            return;
         }
         param1.§[!3§(this.§<V§);
         this.§<V§ = null;
      }
      
      b2internal function §5X§(param1:§8!b§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§<V§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§2!d§.ComputeAABB(_loc4_,param2);
         this.§2!d§.ComputeAABB(_loc5_,param3);
         this.§!!7§.§1b§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§;v§(param3.position,param2.position);
         param1.§]O§(this.§<V§,this.§!!7§,_loc6_);
      }
   }
}
