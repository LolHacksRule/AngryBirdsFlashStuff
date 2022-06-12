package §&!M§
{
   import §,Y§.b2MassData;
   import §,Y§.b2Shape;
   import §3!t§.b2Math;
   import §3!t§.b2Transform;
   import §3!t§.b2Vec2;
   import §6!`§.b2internal;
   import §;"0§.§,;§;
   import §;"0§.b2AABB;
   import §;"0§.b2RayCastInput;
   import §;"0§.b2RayCastOutput;
   import §?!D§.b2Contact;
   import §?!D§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §,""§:b2MassData;
      
      b2internal var §[T§:b2AABB;
      
      b2internal var §=!5§:Number;
      
      b2internal var §'!@§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §%!2§:b2Shape;
      
      b2internal var §1!_§:Number;
      
      b2internal var § "<§:Number;
      
      b2internal var §+!V§;
      
      b2internal var §@a§:b2FilterData;
      
      b2internal var §&!B§:Boolean;
      
      b2internal var §4!e§;
      
      public function b2Fixture()
      {
         this.§@a§ = new b2FilterData();
         super();
         this.§[T§ = new b2AABB();
         this.§4!e§ = null;
         this.m_body = null;
         this.§'!@§ = null;
         this.§%!2§ = null;
         this.§=!5§ = 0;
         this.§1!_§ = 0;
         this.§ "<§ = 0;
      }
      
      public function §6!Q§() : int
      {
         return this.§%!2§.§6!Q§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§%!2§;
      }
      
      public function §]4§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§&!B§ == param1)
         {
            return;
         }
         this.§&!B§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§#E§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§?!S§;
            _loc4_ = _loc3_.§]§();
            _loc5_ = _loc3_.§@!^§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§]4§(_loc4_.§!",§() || _loc5_.§!",§());
            }
            _loc2_ = _loc2_.§^!Q§;
         }
      }
      
      public function §!",§() : Boolean
      {
         return this.§&!B§;
      }
      
      public function § !-§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§@a§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§#E§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§?!S§;
            _loc4_ = _loc3_.§]§();
            _loc5_ = _loc3_.§@!^§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§?">§();
            }
            _loc2_ = _loc2_.§^!Q§;
         }
      }
      
      public function §?[§() : b2FilterData
      {
         return this.§@a§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §`!u§() : b2Fixture
      {
         return this.§'!@§;
      }
      
      public function GetUserData() : *
      {
         return this.§4!e§;
      }
      
      public function §="-§(param1:*) : void
      {
         this.§4!e§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§%!2§.TestPoint(this.m_body.§=!y§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§%!2§.RayCast(param1,param2,this.m_body.§=!y§());
      }
      
      public function §+^§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§%!2§.ComputeMass(param1,this.§=!5§);
         return param1;
      }
      
      public function §2!'§(param1:Number) : void
      {
         this.§=!5§ = param1;
      }
      
      public function §%!N§() : Number
      {
         return this.§=!5§;
      }
      
      public function §'z§() : Number
      {
         return this.§1!_§;
      }
      
      public function §+"%§(param1:Number) : void
      {
         this.§1!_§ = param1;
      }
      
      public function §=!>§() : Number
      {
         return this.§ "<§;
      }
      
      public function §4!;§(param1:Number) : void
      {
         this.§ "<§ = param1;
      }
      
      public function §+!G§() : b2AABB
      {
         return this.§[T§;
      }
      
      b2internal function §[,§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§4!e§ = param3.§7!_§;
         this.§1!_§ = param3.friction;
         this.§ "<§ = param3.restitution;
         this.m_body = param1;
         this.§'!@§ = null;
         this.§@a§ = param3.filter.Copy();
         this.§&!B§ = param3.§6Z§;
         this.§%!2§ = param3.shape.Copy();
         this.§=!5§ = param3.density;
      }
      
      b2internal function §3"8§() : void
      {
         this.§%!2§ = null;
      }
      
      b2internal function §'K§(param1:§,;§, param2:b2Transform) : void
      {
         this.§%!2§.ComputeAABB(this.§[T§,param2);
         this.§+!V§ = param1.§'K§(this.§[T§,this);
      }
      
      b2internal function §1!`§(param1:§,;§) : void
      {
         if(this.§+!V§ == null)
         {
            return;
         }
         param1.§1!`§(this.§+!V§);
         this.§+!V§ = null;
      }
      
      b2internal function §&!f§(param1:§,;§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§+!V§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§%!2§.ComputeAABB(_loc4_,param2);
         this.§%!2§.ComputeAABB(_loc5_,param3);
         this.§[T§.§,!^§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§'T§(param3.position,param2.position);
         param1.§7C§(this.§+!V§,this.§[T§,_loc6_);
      }
   }
}
