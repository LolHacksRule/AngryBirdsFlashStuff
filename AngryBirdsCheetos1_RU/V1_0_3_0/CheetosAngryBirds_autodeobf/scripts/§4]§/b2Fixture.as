package §4]§
{
   import §"x§.b2MassData;
   import §"x§.b2Shape;
   import §#,§.b2internal;
   import §&U§.b2Contact;
   import §&U§.b2ContactEdge;
   import §7$§.§%!"§;
   import §7$§.b2AABB;
   import §7$§.b2RayCastInput;
   import §7$§.b2RayCastOutput;
   import §[R§.b2Math;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §1!W§:b2MassData;
      
      b2internal var §,!R§:b2AABB;
      
      b2internal var §8%§:Number;
      
      b2internal var § !P§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §%9§:b2Shape;
      
      b2internal var §'!E§:Number;
      
      b2internal var §#2§:Number;
      
      b2internal var §+P§;
      
      b2internal var §2f§:b2FilterData;
      
      b2internal var §[!A§:Boolean;
      
      b2internal var §,7§;
      
      public function b2Fixture()
      {
         this.§2f§ = new b2FilterData();
         super();
         this.§,!R§ = new b2AABB();
         this.§,7§ = null;
         this.m_body = null;
         this.§ !P§ = null;
         this.§%9§ = null;
         this.§8%§ = 0;
         this.§'!E§ = 0;
         this.§#2§ = 0;
      }
      
      public function §,!W§() : int
      {
         return this.§%9§.§,!W§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§%9§;
      }
      
      public function §@!=§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§[!A§ == param1)
         {
            return;
         }
         this.§[!A§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§2!I§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§#!b§;
            _loc4_ = _loc3_.§?O§();
            _loc5_ = _loc3_.§-K§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§@!=§(_loc4_.§=Y§() || _loc5_.§=Y§());
            }
            _loc2_ = _loc2_.§5E§;
         }
      }
      
      public function §=Y§() : Boolean
      {
         return this.§[!A§;
      }
      
      public function §"!C§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§2f§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§2!I§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§#!b§;
            _loc4_ = _loc3_.§?O§();
            _loc5_ = _loc3_.§-K§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§4w§();
            }
            _loc2_ = _loc2_.§5E§;
         }
      }
      
      public function §@7§() : b2FilterData
      {
         return this.§2f§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §&6§() : b2Fixture
      {
         return this.§ !P§;
      }
      
      public function GetUserData() : *
      {
         return this.§,7§;
      }
      
      public function §?l§(param1:*) : void
      {
         this.§,7§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§%9§.TestPoint(this.m_body.§5[§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§%9§.RayCast(param1,param2,this.m_body.§5[§());
      }
      
      public function §[@§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§%9§.ComputeMass(param1,this.§8%§);
         return param1;
      }
      
      public function §=`§(param1:Number) : void
      {
         this.§8%§ = param1;
      }
      
      public function §!O§() : Number
      {
         return this.§8%§;
      }
      
      public function §>j§() : Number
      {
         return this.§'!E§;
      }
      
      public function §"7§(param1:Number) : void
      {
         this.§'!E§ = param1;
      }
      
      public function §,H§() : Number
      {
         return this.§#2§;
      }
      
      public function §1S§(param1:Number) : void
      {
         this.§#2§ = param1;
      }
      
      public function §#@§() : b2AABB
      {
         return this.§,!R§;
      }
      
      b2internal function §[?§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§,7§ = param3.§5!_§;
         this.§'!E§ = param3.friction;
         this.§#2§ = param3.restitution;
         this.m_body = param1;
         this.§ !P§ = null;
         this.§2f§ = param3.filter.Copy();
         this.§[!A§ = param3.§`s§;
         this.§%9§ = param3.shape.Copy();
         this.§8%§ = param3.density;
      }
      
      b2internal function §^!K§() : void
      {
         this.§%9§ = null;
      }
      
      b2internal function §>!&§(param1:§%!"§, param2:b2Transform) : void
      {
         this.§%9§.ComputeAABB(this.§,!R§,param2);
         this.§+P§ = param1.§>!&§(this.§,!R§,this);
      }
      
      b2internal function §>;§(param1:§%!"§) : void
      {
         if(this.§+P§ == null)
         {
            return;
         }
         param1.§>;§(this.§+P§);
         this.§+P§ = null;
      }
      
      b2internal function §5S§(param1:§%!"§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§+P§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§%9§.ComputeAABB(_loc4_,param2);
         this.§%9§.ComputeAABB(_loc5_,param3);
         this.§,!R§.§^!H§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§9!A§(param3.position,param2.position);
         param1.§<>§(this.§+P§,this.§,!R§,_loc6_);
      }
   }
}
