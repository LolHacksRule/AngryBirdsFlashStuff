package §4"O§
{
   import § "%§.b2Math;
   import § "%§.b2Transform;
   import § "%§.b2Vec2;
   import §"#i§.b2MassData;
   import §"#i§.b2Shape;
   import §'"$§.§`$&§;
   import §'"$§.b2AABB;
   import §'"$§.b2RayCastInput;
   import §'"$§.b2RayCastOutput;
   import §,!s§.b2internal;
   import §`!k§.b2Contact;
   import §`!k§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §2P§:b2MassData;
      
      b2internal var t1_aabb:b2AABB;
      
      b2internal var t2_aabb:b2AABB;
      
      b2internal var §?"%§:b2AABB;
      
      b2internal var §,!l§:Number;
      
      b2internal var §-!l§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §`"I§:b2Shape;
      
      b2internal var §%#j§:Number;
      
      b2internal var §%">§:Number;
      
      b2internal var §@"w§;
      
      b2internal var §]a§:b2FilterData;
      
      b2internal var §""8§:Boolean;
      
      b2internal var §^!V§;
      
      public function b2Fixture()
      {
         this.§]a§ = new b2FilterData();
         super();
         this.§?"%§ = new b2AABB();
         this.§^!V§ = null;
         this.m_body = null;
         this.§-!l§ = null;
         this.§`"I§ = null;
         this.§,!l§ = 0;
         this.§%#j§ = 0;
         this.§%">§ = 0;
      }
      
      public function §+L§() : int
      {
         return this.§`"I§.§+L§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§`"I§;
      }
      
      public function §3$5§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§""8§ == param1)
         {
            return;
         }
         this.§""8§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§class§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§%#d§;
            _loc4_ = _loc3_.§60§();
            _loc5_ = _loc3_.§#"Y§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§3$5§(_loc4_.§8r§() || _loc5_.§8r§());
            }
            _loc2_ = _loc2_.§%I§;
         }
      }
      
      public function §8r§() : Boolean
      {
         return this.§""8§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§]a§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§class§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§%#d§;
            _loc4_ = _loc3_.§60§();
            _loc5_ = _loc3_.§#"Y§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§##Y§();
            }
            _loc2_ = _loc2_.§%I§;
         }
      }
      
      public function GetFilterData() : b2FilterData
      {
         return this.§]a§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §^"y§() : b2Fixture
      {
         return this.§-!l§;
      }
      
      public function GetUserData() : *
      {
         return this.§^!V§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§^!V§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§`"I§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§`"I§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function §&!I§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§`"I§.ComputeMass(param1,this.§,!l§);
         return param1;
      }
      
      public function SetDensity(param1:Number) : void
      {
         this.§,!l§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§,!l§;
      }
      
      public function GetFriction() : Number
      {
         return this.§%#j§;
      }
      
      public function SetFriction(param1:Number) : void
      {
         this.§%#j§ = param1;
      }
      
      public function GetRestitution() : Number
      {
         return this.§%">§;
      }
      
      public function SetRestitution(param1:Number) : void
      {
         this.§%">§ = param1;
      }
      
      public function §?$@§() : b2AABB
      {
         return this.§?"%§;
      }
      
      b2internal function §4"T§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§^!V§ = param3.§>J§;
         this.§%#j§ = param3.friction;
         this.§%">§ = param3.restitution;
         this.m_body = param1;
         this.§-!l§ = null;
         this.§]a§ = param3.filter.Copy();
         this.§""8§ = param3.§1^§;
         this.§`"I§ = param3.shape.Copy();
         this.§,!l§ = param3.density;
      }
      
      b2internal function §`"e§() : void
      {
         this.§`"I§ = null;
      }
      
      b2internal function §'"4§(param1:§`$&§, param2:b2Transform) : void
      {
         this.§`"I§.ComputeAABB(this.§?"%§,param2);
         this.§@"w§ = param1.§'"4§(this.§?"%§,this);
      }
      
      b2internal function §8e§(param1:§`$&§) : void
      {
         if(this.§@"w§ == null)
         {
            return;
         }
         param1.§8e§(this.§@"w§);
         this.§@"w§ = null;
      }
      
      b2internal function § #N§(param1:§`$&§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§@"w§)
         {
            return;
         }
         if(this.t1_aabb == null)
         {
            this.t1_aabb = new b2AABB();
         }
         else
         {
            this.t1_aabb.§]#b§.x = 0;
            this.t1_aabb.§]#b§.y = 0;
            this.t1_aabb.§!O§.x = 0;
            this.t1_aabb.§!O§.y = 0;
         }
         if(this.t2_aabb == null)
         {
            this.t2_aabb = new b2AABB();
         }
         else
         {
            this.t2_aabb.§]#b§.x = 0;
            this.t2_aabb.§]#b§.y = 0;
            this.t2_aabb.§!O§.x = 0;
            this.t2_aabb.§!O§.y = 0;
         }
         this.§`"I§.ComputeAABB(this.t1_aabb,param2);
         this.§`"I§.ComputeAABB(this.t2_aabb,param3);
         this.§?"%§.§6"#§(this.t1_aabb,this.t2_aabb);
         var _loc4_:b2Vec2 = b2Math.§ $$§(param3.position,param2.position);
         param1.§=$7§(this.§@"w§,this.§?"%§,_loc4_);
      }
   }
}
