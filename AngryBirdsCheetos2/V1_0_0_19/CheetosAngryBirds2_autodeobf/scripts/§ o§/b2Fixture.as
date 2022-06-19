package § o§
{
   import §"0§.b2internal;
   import §-r§.§@C§;
   import §-r§.b2AABB;
   import §-r§.b2RayCastInput;
   import §-r§.b2RayCastOutput;
   import §30§.b2Contact;
   import §30§.b2ContactEdge;
   import §6!H§.b2Math;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   import §]!S§.b2MassData;
   import §]!S§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §#!F§:b2MassData;
      
      b2internal var §<D§:b2AABB;
      
      b2internal var §!n§:Number;
      
      b2internal var §-![§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §^!+§:b2Shape;
      
      b2internal var §-U§:Number;
      
      b2internal var §=!h§:Number;
      
      b2internal var §4!W§;
      
      b2internal var §2]§:b2FilterData;
      
      b2internal var §"W§:Boolean;
      
      b2internal var §&!i§;
      
      public function b2Fixture()
      {
         this.§2]§ = new b2FilterData();
         super();
         this.§<D§ = new b2AABB();
         this.§&!i§ = null;
         this.m_body = null;
         this.§-![§ = null;
         this.§^!+§ = null;
         this.§!n§ = 0;
         this.§-U§ = 0;
         this.§=!h§ = 0;
      }
      
      public function §7!_§() : int
      {
         return this.§^!+§.§7!_§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§^!+§;
      }
      
      public function §,!W§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§"W§ == param1)
         {
            return;
         }
         this.§"W§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!!R§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§4§;
            _loc4_ = _loc3_.§`u§();
            _loc5_ = _loc3_.§7t§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§,!W§(_loc4_.§;>§() || _loc5_.§;>§());
            }
            _loc2_ = _loc2_.§23§;
         }
      }
      
      public function §;>§() : Boolean
      {
         return this.§"W§;
      }
      
      public function §=!K§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§2]§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!!R§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§4§;
            _loc4_ = _loc3_.§`u§();
            _loc5_ = _loc3_.§7t§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§[]§();
            }
            _loc2_ = _loc2_.§23§;
         }
      }
      
      public function §+R§() : b2FilterData
      {
         return this.§2]§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §;!B§() : b2Fixture
      {
         return this.§-![§;
      }
      
      public function GetUserData() : *
      {
         return this.§&!i§;
      }
      
      public function §-!8§(param1:*) : void
      {
         this.§&!i§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§^!+§.TestPoint(this.m_body.§2!i§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§^!+§.RayCast(param1,param2,this.m_body.§2!i§());
      }
      
      public function §6Y§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§^!+§.ComputeMass(param1,this.§!n§);
         return param1;
      }
      
      public function §?!8§(param1:Number) : void
      {
         this.§!n§ = param1;
      }
      
      public function § i§() : Number
      {
         return this.§!n§;
      }
      
      public function §<!7§() : Number
      {
         return this.§-U§;
      }
      
      public function §`!f§(param1:Number) : void
      {
         this.§-U§ = param1;
      }
      
      public function §'L§() : Number
      {
         return this.§=!h§;
      }
      
      public function §6K§(param1:Number) : void
      {
         this.§=!h§ = param1;
      }
      
      public function §[!@§() : b2AABB
      {
         return this.§<D§;
      }
      
      b2internal function §#!M§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§&!i§ = param3.§["§;
         this.§-U§ = param3.friction;
         this.§=!h§ = param3.restitution;
         this.m_body = param1;
         this.§-![§ = null;
         this.§2]§ = param3.filter.Copy();
         this.§"W§ = param3.§=&§;
         this.§^!+§ = param3.shape.Copy();
         this.§!n§ = param3.density;
      }
      
      b2internal function §[!$§() : void
      {
         this.§^!+§ = null;
      }
      
      b2internal function §1<§(param1:§@C§, param2:b2Transform) : void
      {
         this.§^!+§.ComputeAABB(this.§<D§,param2);
         this.§4!W§ = param1.§1<§(this.§<D§,this);
      }
      
      b2internal function §%!4§(param1:§@C§) : void
      {
         if(this.§4!W§ == null)
         {
            return;
         }
         param1.§%!4§(this.§4!W§);
         this.§4!W§ = null;
      }
      
      b2internal function §,N§(param1:§@C§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§4!W§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§^!+§.ComputeAABB(_loc4_,param2);
         this.§^!+§.ComputeAABB(_loc5_,param3);
         this.§<D§.§]y§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§=_§(param3.position,param2.position);
         param1.§-H§(this.§4!W§,this.§<D§,_loc6_);
      }
   }
}
