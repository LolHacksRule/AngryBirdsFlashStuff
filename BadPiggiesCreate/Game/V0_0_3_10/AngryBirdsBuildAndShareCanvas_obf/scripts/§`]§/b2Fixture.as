package §`]§
{
   import §!S§.b2internal;
   import §1!1§.§0!6§;
   import §1!1§.b2AABB;
   import §1!1§.b2RayCastInput;
   import §1!1§.b2RayCastOutput;
   import §2!+§.b2Contact;
   import §2!+§.b2ContactEdge;
   import §6U§.b2MassData;
   import §6U§.b2Shape;
   import §?!h§.b2Math;
   import §?!h§.b2Transform;
   import §?!h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §>!v§:b2MassData;
      
      b2internal var §,!%§:b2AABB;
      
      b2internal var §#y§:Number;
      
      b2internal var §7<§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §7i§:b2Shape;
      
      b2internal var §2!k§:Number;
      
      b2internal var § A§:Number;
      
      b2internal var §6!b§;
      
      b2internal var §]j§:b2FilterData;
      
      b2internal var §<M§:Boolean;
      
      b2internal var §]3§;
      
      public function b2Fixture()
      {
         this.§]j§ = new b2FilterData();
         super();
         this.§,!%§ = new b2AABB();
         this.§]3§ = null;
         this.m_body = null;
         this.§7<§ = null;
         this.§7i§ = null;
         this.§#y§ = 0;
         this.§2!k§ = 0;
         this.§ A§ = 0;
      }
      
      public function §8!d§() : int
      {
         return this.§7i§.§8!d§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§7i§;
      }
      
      public function §3! §(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§<M§ == param1)
         {
            return;
         }
         this.§<M§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§3!_§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§!B§;
            _loc4_ = _loc3_.§1'§();
            _loc5_ = _loc3_.§?"-§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§3! §(_loc4_.§#!m§() || _loc5_.§#!m§());
            }
            _loc2_ = _loc2_.§4!e§;
         }
      }
      
      public function §#!m§() : Boolean
      {
         return this.§<M§;
      }
      
      public function §&G§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§]j§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§3!_§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§!B§;
            _loc4_ = _loc3_.§1'§();
            _loc5_ = _loc3_.§?"-§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§%T§();
            }
            _loc2_ = _loc2_.§4!e§;
         }
      }
      
      public function §^!q§() : b2FilterData
      {
         return this.§]j§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §&!=§() : b2Fixture
      {
         return this.§7<§;
      }
      
      public function GetUserData() : *
      {
         return this.§]3§;
      }
      
      public function §'!d§(param1:*) : void
      {
         this.§]3§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§7i§.TestPoint(this.m_body.§!!f§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§7i§.RayCast(param1,param2,this.m_body.§!!f§());
      }
      
      public function §24§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§7i§.ComputeMass(param1,this.§#y§);
         return param1;
      }
      
      public function §!!t§(param1:Number) : void
      {
         this.§#y§ = param1;
      }
      
      public function §?!4§() : Number
      {
         return this.§#y§;
      }
      
      public function §@"#§() : Number
      {
         return this.§2!k§;
      }
      
      public function §!!=§(param1:Number) : void
      {
         this.§2!k§ = param1;
      }
      
      public function §8u§() : Number
      {
         return this.§ A§;
      }
      
      public function §'!N§(param1:Number) : void
      {
         this.§ A§ = param1;
      }
      
      public function §`"&§() : b2AABB
      {
         return this.§,!%§;
      }
      
      b2internal function §6t§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§]3§ = param3.§;O§;
         this.§2!k§ = param3.friction;
         this.§ A§ = param3.restitution;
         this.m_body = param1;
         this.§7<§ = null;
         this.§]j§ = param3.filter.Copy();
         this.§<M§ = param3.§&""§;
         this.§7i§ = param3.shape.Copy();
         this.§#y§ = param3.density;
      }
      
      b2internal function §=!!§() : void
      {
         this.§7i§ = null;
      }
      
      b2internal function §6!2§(param1:§0!6§, param2:b2Transform) : void
      {
         this.§7i§.ComputeAABB(this.§,!%§,param2);
         this.§6!b§ = param1.§6!2§(this.§,!%§,this);
      }
      
      b2internal function §"!T§(param1:§0!6§) : void
      {
         if(this.§6!b§ == null)
         {
            return;
         }
         param1.§"!T§(this.§6!b§);
         this.§6!b§ = null;
      }
      
      b2internal function §3!§(param1:§0!6§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§6!b§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§7i§.ComputeAABB(_loc4_,param2);
         this.§7i§.ComputeAABB(_loc5_,param3);
         this.§,!%§.§9!y§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§<l§(param3.position,param2.position);
         param1.§!1§(this.§6!b§,this.§,!%§,_loc6_);
      }
   }
}
