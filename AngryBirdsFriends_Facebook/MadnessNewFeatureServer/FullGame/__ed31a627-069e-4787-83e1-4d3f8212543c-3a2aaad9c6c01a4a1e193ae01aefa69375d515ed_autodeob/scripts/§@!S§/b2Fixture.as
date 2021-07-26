package §@!S§
{
   import §!H§.b2MassData;
   import §!H§.b2Shape;
   import §1#]§.b2Contact;
   import §1#]§.b2ContactEdge;
   import §4$E§.§2!I§;
   import §4$E§.b2AABB;
   import §4$E§.b2RayCastInput;
   import §4$E§.b2RayCastOutput;
   import §?!C§.b2Math;
   import §?!C§.b2Transform;
   import §?!C§.b2Vec2;
   import §?N§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §5"P§:b2MassData;
      
      b2internal var t1_aabb:b2AABB;
      
      b2internal var t2_aabb:b2AABB;
      
      b2internal var §^M§:b2AABB;
      
      b2internal var §5#u§:Number;
      
      b2internal var §@W§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §'"@§:b2Shape;
      
      b2internal var §>$1§:Number;
      
      b2internal var §9=§:Number;
      
      b2internal var §;_§;
      
      b2internal var §#!;§:b2FilterData;
      
      b2internal var §&#[§:Boolean;
      
      b2internal var §'n§;
      
      public function b2Fixture()
      {
         this.§#!;§ = new b2FilterData();
         super();
         this.§^M§ = new b2AABB();
         this.§'n§ = null;
         this.m_body = null;
         this.§@W§ = null;
         this.§'"@§ = null;
         this.§5#u§ = 0;
         this.§>$1§ = 0;
         this.§9=§ = 0;
      }
      
      public function §8!p§() : int
      {
         return this.§'"@§.§8!p§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§'"@§;
      }
      
      public function §2$7§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§&#[§ == param1)
         {
            return;
         }
         this.§&#[§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§5!A§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§4E§;
            _loc4_ = _loc3_.§9$ §();
            _loc5_ = _loc3_.§@!D§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§2$7§(_loc4_.§"!,§() || _loc5_.§"!,§());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §"!,§() : Boolean
      {
         return this.§&#[§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§#!;§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§5!A§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§4E§;
            _loc4_ = _loc3_.§9$ §();
            _loc5_ = _loc3_.§@!D§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§>$6§();
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function GetFilterData() : b2FilterData
      {
         return this.§#!;§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §%$>§() : b2Fixture
      {
         return this.§@W§;
      }
      
      public function GetUserData() : *
      {
         return this.§'n§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§'n§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§'"@§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§'"@§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function §;$'§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§'"@§.ComputeMass(param1,this.§5#u§);
         return param1;
      }
      
      public function SetDensity(param1:Number) : void
      {
         this.§5#u§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§5#u§;
      }
      
      public function GetFriction() : Number
      {
         return this.§>$1§;
      }
      
      public function SetFriction(param1:Number) : void
      {
         this.§>$1§ = param1;
      }
      
      public function GetRestitution() : Number
      {
         return this.§9=§;
      }
      
      public function SetRestitution(param1:Number) : void
      {
         this.§9=§ = param1;
      }
      
      public function §&#?§() : b2AABB
      {
         return this.§^M§;
      }
      
      b2internal function §,"h§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§'n§ = param3.§]",§;
         this.§>$1§ = param3.friction;
         this.§9=§ = param3.restitution;
         this.m_body = param1;
         this.§@W§ = null;
         this.§#!;§ = param3.filter.Copy();
         this.§&#[§ = param3.§!"f§;
         this.§'"@§ = param3.shape.Copy();
         this.§5#u§ = param3.density;
      }
      
      b2internal function §;"@§() : void
      {
         this.§'"@§ = null;
      }
      
      b2internal function §@7§(param1:§2!I§, param2:b2Transform) : void
      {
         this.§'"@§.ComputeAABB(this.§^M§,param2);
         this.§;_§ = param1.§@7§(this.§^M§,this);
      }
      
      b2internal function §=K§(param1:§2!I§) : void
      {
         if(this.§;_§ == null)
         {
            return;
         }
         param1.§=K§(this.§;_§);
         this.§;_§ = null;
      }
      
      b2internal function §0!<§(param1:§2!I§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§;_§)
         {
            return;
         }
         if(this.t1_aabb == null)
         {
            this.t1_aabb = new b2AABB();
         }
         else
         {
            this.t1_aabb.§@`§.x = 0;
            this.t1_aabb.§@`§.y = 0;
            this.t1_aabb.§=!F§.x = 0;
            this.t1_aabb.§=!F§.y = 0;
         }
         if(this.t2_aabb == null)
         {
            this.t2_aabb = new b2AABB();
         }
         else
         {
            this.t2_aabb.§@`§.x = 0;
            this.t2_aabb.§@`§.y = 0;
            this.t2_aabb.§=!F§.x = 0;
            this.t2_aabb.§=!F§.y = 0;
         }
         this.§'"@§.ComputeAABB(this.t1_aabb,param2);
         this.§'"@§.ComputeAABB(this.t2_aabb,param3);
         this.§^M§.§`"2§(this.t1_aabb,this.t2_aabb);
         var _loc4_:b2Vec2 = b2Math.§7!5§(param3.position,param2.position);
         param1.§-#+§(this.§;_§,this.§^M§,_loc4_);
      }
   }
}
