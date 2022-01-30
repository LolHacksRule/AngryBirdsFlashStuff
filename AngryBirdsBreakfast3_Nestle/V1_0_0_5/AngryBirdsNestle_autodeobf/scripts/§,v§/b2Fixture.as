package §,v§
{
   import §!;§.§;!`§;
   import §!;§.b2AABB;
   import §!;§.b2RayCastInput;
   import §!;§.b2RayCastOutput;
   import §-!A§.b2Math;
   import §-!A§.b2Transform;
   import §-!A§.b2Vec2;
   import §3!4§.b2MassData;
   import §3!4§.b2Shape;
   import §5t§.b2Contact;
   import §5t§.b2ContactEdge;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §-t§:b2MassData;
      
      b2internal var §@"!§:b2AABB;
      
      b2internal var §^N§:Number;
      
      b2internal var §7!+§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §`",§:b2Shape;
      
      b2internal var §4! §:Number;
      
      b2internal var §<!I§:Number;
      
      b2internal var §!!I§;
      
      b2internal var §<!1§:b2FilterData;
      
      b2internal var § !d§:Boolean;
      
      b2internal var §8X§;
      
      public function b2Fixture()
      {
         this.§<!1§ = new b2FilterData();
         super();
         this.§@"!§ = new b2AABB();
         this.§8X§ = null;
         this.m_body = null;
         this.§7!+§ = null;
         this.§`",§ = null;
         this.§^N§ = 0;
         this.§4! § = 0;
         this.§<!I§ = 0;
      }
      
      public function §@!D§() : int
      {
         return this.§`",§.§@!D§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§`",§;
      }
      
      public function §09§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§ !d§ == param1)
         {
            return;
         }
         this.§ !d§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§<]§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§@!"§;
            _loc4_ = _loc3_.§=q§();
            _loc5_ = _loc3_.§^!z§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§09§(_loc4_.§ &§() || _loc5_.§ &§());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function § &§() : Boolean
      {
         return this.§ !d§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§<!1§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§<]§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§@!"§;
            _loc4_ = _loc3_.§=q§();
            _loc5_ = _loc3_.§^!z§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§<d§();
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §4!<§() : b2FilterData
      {
         return this.§<!1§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §,h§() : b2Fixture
      {
         return this.§7!+§;
      }
      
      public function GetUserData() : *
      {
         return this.§8X§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§8X§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§`",§.TestPoint(this.m_body.§^!G§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§`",§.RayCast(param1,param2,this.m_body.§^!G§());
      }
      
      public function §;l§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§`",§.ComputeMass(param1,this.§^N§);
         return param1;
      }
      
      public function §+F§(param1:Number) : void
      {
         this.§^N§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§^N§;
      }
      
      public function §+9§() : Number
      {
         return this.§4! §;
      }
      
      public function §8!_§(param1:Number) : void
      {
         this.§4! § = param1;
      }
      
      public function §#;§() : Number
      {
         return this.§<!I§;
      }
      
      public function §#!X§(param1:Number) : void
      {
         this.§<!I§ = param1;
      }
      
      public function §?!u§() : b2AABB
      {
         return this.§@"!§;
      }
      
      b2internal function §@Q§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§8X§ = param3.userData;
         this.§4! § = param3.friction;
         this.§<!I§ = param3.restitution;
         this.m_body = param1;
         this.§7!+§ = null;
         this.§<!1§ = param3.filter.Copy();
         this.§ !d§ = param3.§4"+§;
         this.§`",§ = param3.shape.Copy();
         this.§^N§ = param3.density;
      }
      
      b2internal function §#!N§() : void
      {
         this.§`",§ = null;
      }
      
      b2internal function §'"!§(param1:§;!`§, param2:b2Transform) : void
      {
         this.§`",§.ComputeAABB(this.§@"!§,param2);
         this.§!!I§ = param1.§'"!§(this.§@"!§,this);
      }
      
      b2internal function §'",§(param1:§;!`§) : void
      {
         if(this.§!!I§ == null)
         {
            return;
         }
         param1.§'",§(this.§!!I§);
         this.§!!I§ = null;
      }
      
      b2internal function §-"§(param1:§;!`§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§!!I§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§`",§.ComputeAABB(_loc4_,param2);
         this.§`",§.ComputeAABB(_loc5_,param3);
         this.§@"!§.§-I§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§[I§(param3.position,param2.position);
         param1.§3!N§(this.§!!I§,this.§@"!§,_loc6_);
      }
   }
}
