package §1%§
{
   import §,X§.b2MassData;
   import §,X§.b2Shape;
   import §8!H§.b2internal;
   import §>s§.b2Contact;
   import §>s§.b2ContactEdge;
   import §?!&§.b2Math;
   import §?!&§.b2Transform;
   import §?!&§.b2Vec2;
   import §`!H§.§>u§;
   import §`!H§.b2AABB;
   import §`!H§.b2RayCastInput;
   import §`!H§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §?!1§:b2MassData;
      
      b2internal var §,L§:b2AABB;
      
      b2internal var §9Y§:Number;
      
      b2internal var §!J§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §;!j§:b2Shape;
      
      b2internal var §,!i§:Number;
      
      b2internal var §"4§:Number;
      
      b2internal var §#F§;
      
      b2internal var §]9§:b2FilterData;
      
      b2internal var §?e§:Boolean;
      
      b2internal var §#!I§;
      
      public function b2Fixture()
      {
         this.§]9§ = new b2FilterData();
         super();
         this.§,L§ = new b2AABB();
         this.§#!I§ = null;
         this.m_body = null;
         this.§!J§ = null;
         this.§;!j§ = null;
         this.§9Y§ = 0;
         this.§,!i§ = 0;
         this.§"4§ = 0;
      }
      
      public function §3r§() : int
      {
         return this.§;!j§.§3r§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§;!j§;
      }
      
      public function §1[§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§?e§ == param1)
         {
            return;
         }
         this.§?e§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§"!c§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§#!#§;
            _loc4_ = _loc3_.§%! §();
            _loc5_ = _loc3_.§4#§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§1[§(_loc4_.§@!L§() || _loc5_.§@!L§());
            }
            _loc2_ = _loc2_.§86§;
         }
      }
      
      public function §@!L§() : Boolean
      {
         return this.§?e§;
      }
      
      public function §,!5§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§]9§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§"!c§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§#!#§;
            _loc4_ = _loc3_.§%! §();
            _loc5_ = _loc3_.§4#§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§+! §();
            }
            _loc2_ = _loc2_.§86§;
         }
      }
      
      public function §3y§() : b2FilterData
      {
         return this.§]9§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §5<§() : b2Fixture
      {
         return this.§!J§;
      }
      
      public function GetUserData() : *
      {
         return this.§#!I§;
      }
      
      public function §^!T§(param1:*) : void
      {
         this.§#!I§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§;!j§.TestPoint(this.m_body.§?Q§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§;!j§.RayCast(param1,param2,this.m_body.§?Q§());
      }
      
      public function §+T§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§;!j§.ComputeMass(param1,this.§9Y§);
         return param1;
      }
      
      public function §`!9§(param1:Number) : void
      {
         this.§9Y§ = param1;
      }
      
      public function §97§() : Number
      {
         return this.§9Y§;
      }
      
      public function §]!G§() : Number
      {
         return this.§,!i§;
      }
      
      public function §"X§(param1:Number) : void
      {
         this.§,!i§ = param1;
      }
      
      public function §#!N§() : Number
      {
         return this.§"4§;
      }
      
      public function §%!H§(param1:Number) : void
      {
         this.§"4§ = param1;
      }
      
      public function §6k§() : b2AABB
      {
         return this.§,L§;
      }
      
      b2internal function §;!]§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§#!I§ = param3.§#!`§;
         this.§,!i§ = param3.friction;
         this.§"4§ = param3.restitution;
         this.m_body = param1;
         this.§!J§ = null;
         this.§]9§ = param3.filter.Copy();
         this.§?e§ = param3.§3!&§;
         this.§;!j§ = param3.shape.Copy();
         this.§9Y§ = param3.density;
      }
      
      b2internal function §"!Q§() : void
      {
         this.§;!j§ = null;
      }
      
      b2internal function §'R§(param1:§>u§, param2:b2Transform) : void
      {
         this.§;!j§.ComputeAABB(this.§,L§,param2);
         this.§#F§ = param1.§'R§(this.§,L§,this);
      }
      
      b2internal function §^!B§(param1:§>u§) : void
      {
         if(this.§#F§ == null)
         {
            return;
         }
         param1.§^!B§(this.§#F§);
         this.§#F§ = null;
      }
      
      b2internal function §6L§(param1:§>u§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§#F§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§;!j§.ComputeAABB(_loc4_,param2);
         this.§;!j§.ComputeAABB(_loc5_,param3);
         this.§,L§.§[u§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§0l§(param3.position,param2.position);
         param1.§5N§(this.§#F§,this.§,L§,_loc6_);
      }
   }
}
