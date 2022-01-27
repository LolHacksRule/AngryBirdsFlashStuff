package §^!Z§
{
   import § !_§.b2Math;
   import § !_§.b2Transform;
   import § !_§.b2Vec2;
   import §+&§.b2internal;
   import §-!!§.b2MassData;
   import §-!!§.b2Shape;
   import §=_§.b2Contact;
   import §=_§.b2ContactEdge;
   import §^t§.§8]§;
   import §^t§.b2AABB;
   import §^t§.b2RayCastInput;
   import §^t§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §!n§:b2MassData;
      
      b2internal var §,!D§:b2AABB;
      
      b2internal var §+!2§:Number;
      
      b2internal var §]!8§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §[!-§:b2Shape;
      
      b2internal var §@!,§:Number;
      
      b2internal var §%g§:Number;
      
      b2internal var §77§;
      
      b2internal var §6#§:b2FilterData;
      
      b2internal var §"N§:Boolean;
      
      b2internal var §=E§;
      
      public function b2Fixture()
      {
         this.§6#§ = new b2FilterData();
         super();
         this.§,!D§ = new b2AABB();
         this.§=E§ = null;
         this.m_body = null;
         this.§]!8§ = null;
         this.§[!-§ = null;
         this.§+!2§ = 0;
         this.§@!,§ = 0;
         this.§%g§ = 0;
      }
      
      public function §6+§() : int
      {
         return this.§[!-§.§6+§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§[!-§;
      }
      
      public function §+!Q§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§"N§ == param1)
         {
            return;
         }
         this.§"N§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§>v§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§6!e§;
            _loc4_ = _loc3_.§]!4§();
            _loc5_ = _loc3_.§5#§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§+!Q§(_loc4_.§1!4§() || _loc5_.§1!4§());
            }
            _loc2_ = _loc2_.§9e§;
         }
      }
      
      public function §1!4§() : Boolean
      {
         return this.§"N§;
      }
      
      public function §5!P§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§6#§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§>v§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§6!e§;
            _loc4_ = _loc3_.§]!4§();
            _loc5_ = _loc3_.§5#§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§#!N§();
            }
            _loc2_ = _loc2_.§9e§;
         }
      }
      
      public function §5W§() : b2FilterData
      {
         return this.§6#§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §1![§() : b2Fixture
      {
         return this.§]!8§;
      }
      
      public function GetUserData() : *
      {
         return this.§=E§;
      }
      
      public function §0!@§(param1:*) : void
      {
         this.§=E§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§[!-§.TestPoint(this.m_body.§<!2§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§[!-§.RayCast(param1,param2,this.m_body.§<!2§());
      }
      
      public function §+!F§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§[!-§.ComputeMass(param1,this.§+!2§);
         return param1;
      }
      
      public function §=!8§(param1:Number) : void
      {
         this.§+!2§ = param1;
      }
      
      public function §5`§() : Number
      {
         return this.§+!2§;
      }
      
      public function §`!B§() : Number
      {
         return this.§@!,§;
      }
      
      public function §,!'§(param1:Number) : void
      {
         this.§@!,§ = param1;
      }
      
      public function §]=§() : Number
      {
         return this.§%g§;
      }
      
      public function §4!4§(param1:Number) : void
      {
         this.§%g§ = param1;
      }
      
      public function §0$§() : b2AABB
      {
         return this.§,!D§;
      }
      
      b2internal function §8b§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§=E§ = param3.§<!=§;
         this.§@!,§ = param3.friction;
         this.§%g§ = param3.restitution;
         this.m_body = param1;
         this.§]!8§ = null;
         this.§6#§ = param3.filter.Copy();
         this.§"N§ = param3.§7!S§;
         this.§[!-§ = param3.shape.Copy();
         this.§+!2§ = param3.density;
      }
      
      b2internal function §<a§() : void
      {
         this.§[!-§ = null;
      }
      
      b2internal function §'W§(param1:§8]§, param2:b2Transform) : void
      {
         this.§[!-§.ComputeAABB(this.§,!D§,param2);
         this.§77§ = param1.§'W§(this.§,!D§,this);
      }
      
      b2internal function §+!%§(param1:§8]§) : void
      {
         if(this.§77§ == null)
         {
            return;
         }
         param1.§+!%§(this.§77§);
         this.§77§ = null;
      }
      
      b2internal function §=0§(param1:§8]§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§77§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§[!-§.ComputeAABB(_loc4_,param2);
         this.§[!-§.ComputeAABB(_loc5_,param3);
         this.§,!D§.§^b§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§=`§(param3.position,param2.position);
         param1.§%E§(this.§77§,this.§,!D§,_loc6_);
      }
   }
}
