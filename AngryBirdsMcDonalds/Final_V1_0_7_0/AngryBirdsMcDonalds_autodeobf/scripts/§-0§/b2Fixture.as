package §-0§
{
   import §&!P§.§<s§;
   import §&!P§.b2AABB;
   import §&!P§.b2RayCastInput;
   import §&!P§.b2RayCastOutput;
   import §+!o§.b2MassData;
   import §+!o§.b2Shape;
   import §4!4§.b2Contact;
   import §4!4§.b2ContactEdge;
   import §@g§.b2internal;
   import §^!%§.b2Math;
   import §^!%§.b2Transform;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §%!0§:b2MassData;
      
      b2internal var §0!+§:b2AABB;
      
      b2internal var §;!N§:Number;
      
      b2internal var §2G§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §6!Q§:b2Shape;
      
      b2internal var §9?§:Number;
      
      b2internal var §#=§:Number;
      
      b2internal var §'U§;
      
      b2internal var §@b§:b2FilterData;
      
      b2internal var §]%§:Boolean;
      
      b2internal var §6a§;
      
      public function b2Fixture()
      {
         this.§@b§ = new b2FilterData();
         super();
         this.§0!+§ = new b2AABB();
         this.§6a§ = null;
         this.m_body = null;
         this.§2G§ = null;
         this.§6!Q§ = null;
         this.§;!N§ = 0;
         this.§9?§ = 0;
         this.§#=§ = 0;
      }
      
      public function §use§() : int
      {
         return this.§6!Q§.§use§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§6!Q§;
      }
      
      public function §=N§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§]%§ == param1)
         {
            return;
         }
         this.§]%§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§+!?§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§@m§;
            _loc4_ = _loc3_.§<D§();
            _loc5_ = _loc3_.§5!?§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§=N§(_loc4_.§,c§() || _loc5_.§,c§());
            }
            _loc2_ = _loc2_.§@!A§;
         }
      }
      
      public function §,c§() : Boolean
      {
         return this.§]%§;
      }
      
      public function §%![§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§@b§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§+!?§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§@m§;
            _loc4_ = _loc3_.§<D§();
            _loc5_ = _loc3_.§5!?§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§>x§();
            }
            _loc2_ = _loc2_.§@!A§;
         }
      }
      
      public function §%!P§() : b2FilterData
      {
         return this.§@b§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §2z§() : b2Fixture
      {
         return this.§2G§;
      }
      
      public function GetUserData() : *
      {
         return this.§6a§;
      }
      
      public function §`!8§(param1:*) : void
      {
         this.§6a§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§6!Q§.TestPoint(this.m_body.§>!%§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§6!Q§.RayCast(param1,param2,this.m_body.§>!%§());
      }
      
      public function §0r§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§6!Q§.ComputeMass(param1,this.§;!N§);
         return param1;
      }
      
      public function § N§(param1:Number) : void
      {
         this.§;!N§ = param1;
      }
      
      public function §`!X§() : Number
      {
         return this.§;!N§;
      }
      
      public function final() : Number
      {
         return this.§9?§;
      }
      
      public function §^!7§(param1:Number) : void
      {
         this.§9?§ = param1;
      }
      
      public function §,A§() : Number
      {
         return this.§#=§;
      }
      
      public function §+[§(param1:Number) : void
      {
         this.§#=§ = param1;
      }
      
      public function §#x§() : b2AABB
      {
         return this.§0!+§;
      }
      
      b2internal function §6j§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§6a§ = param3.§6=§;
         this.§9?§ = param3.friction;
         this.§#=§ = param3.restitution;
         this.m_body = param1;
         this.§2G§ = null;
         this.§@b§ = param3.filter.Copy();
         this.§]%§ = param3.§4o§;
         this.§6!Q§ = param3.shape.Copy();
         this.§;!N§ = param3.density;
      }
      
      b2internal function § B§() : void
      {
         this.§6!Q§ = null;
      }
      
      b2internal function §%t§(param1:§<s§, param2:b2Transform) : void
      {
         this.§6!Q§.ComputeAABB(this.§0!+§,param2);
         this.§'U§ = param1.§%t§(this.§0!+§,this);
      }
      
      b2internal function §;!Q§(param1:§<s§) : void
      {
         if(this.§'U§ == null)
         {
            return;
         }
         param1.§;!Q§(this.§'U§);
         this.§'U§ = null;
      }
      
      b2internal function §7P§(param1:§<s§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§'U§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§6!Q§.ComputeAABB(_loc4_,param2);
         this.§6!Q§.ComputeAABB(_loc5_,param3);
         this.§0!+§.§2!3§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§6!a§(param3.position,param2.position);
         param1.§'!i§(this.§'U§,this.§0!+§,_loc6_);
      }
   }
}
