package §?!E§
{
   import §&!n§.§7W§;
   import §&!n§.b2AABB;
   import §&!n§.b2RayCastInput;
   import §&!n§.b2RayCastOutput;
   import §2!Q§.b2MassData;
   import §2!Q§.b2Shape;
   import §8,§.b2internal;
   import §9v§.b2Math;
   import §9v§.b2Transform;
   import §9v§.b2Vec2;
   import §`§.b2Contact;
   import §`§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §0C§:b2MassData;
      
      b2internal var §+R§:b2AABB;
      
      b2internal var §8"$§:Number;
      
      b2internal var §-!7§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §?"3§:b2Shape;
      
      b2internal var §#!c§:Number;
      
      b2internal var §0!x§:Number;
      
      b2internal var §%!I§;
      
      b2internal var §^X§:b2FilterData;
      
      b2internal var §6o§:Boolean;
      
      b2internal var §!!K§;
      
      public function b2Fixture()
      {
         this.§^X§ = new b2FilterData();
         super();
         this.§+R§ = new b2AABB();
         this.§!!K§ = null;
         this.m_body = null;
         this.§-!7§ = null;
         this.§?"3§ = null;
         this.§8"$§ = 0;
         this.§#!c§ = 0;
         this.§0!x§ = 0;
      }
      
      public function §7![§() : int
      {
         return this.§?"3§.§7![§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§?"3§;
      }
      
      public function § "6§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§6o§ == param1)
         {
            return;
         }
         this.§6o§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§>!I§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§^!;§;
            _loc4_ = _loc3_.§2&§();
            _loc5_ = _loc3_.§=!C§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§ "6§(_loc4_.§`!F§() || _loc5_.§`!F§());
            }
            _loc2_ = _loc2_.§9"#§;
         }
      }
      
      public function §`!F§() : Boolean
      {
         return this.§6o§;
      }
      
      public function §3H§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§^X§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§>!I§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§^!;§;
            _loc4_ = _loc3_.§2&§();
            _loc5_ = _loc3_.§=!C§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§^G§();
            }
            _loc2_ = _loc2_.§9"#§;
         }
      }
      
      public function §8!%§() : b2FilterData
      {
         return this.§^X§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §%T§() : b2Fixture
      {
         return this.§-!7§;
      }
      
      public function GetUserData() : *
      {
         return this.§!!K§;
      }
      
      public function §^x§(param1:*) : void
      {
         this.§!!K§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§?"3§.TestPoint(this.m_body.§@w§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§?"3§.RayCast(param1,param2,this.m_body.§@w§());
      }
      
      public function §#!@§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§?"3§.ComputeMass(param1,this.§8"$§);
         return param1;
      }
      
      public function §@"5§(param1:Number) : void
      {
         this.§8"$§ = param1;
      }
      
      public function §&!]§() : Number
      {
         return this.§8"$§;
      }
      
      public function §-!4§() : Number
      {
         return this.§#!c§;
      }
      
      public function §^!H§(param1:Number) : void
      {
         this.§#!c§ = param1;
      }
      
      public function §<K§() : Number
      {
         return this.§0!x§;
      }
      
      public function §6p§(param1:Number) : void
      {
         this.§0!x§ = param1;
      }
      
      public function §"!t§() : b2AABB
      {
         return this.§+R§;
      }
      
      b2internal function §-"$§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§!!K§ = param3.§-!j§;
         this.§#!c§ = param3.friction;
         this.§0!x§ = param3.restitution;
         this.m_body = param1;
         this.§-!7§ = null;
         this.§^X§ = param3.filter.Copy();
         this.§6o§ = param3.§7"#§;
         this.§?"3§ = param3.shape.Copy();
         this.§8"$§ = param3.density;
      }
      
      b2internal function §@!,§() : void
      {
         this.§?"3§ = null;
      }
      
      b2internal function §[2§(param1:§7W§, param2:b2Transform) : void
      {
         this.§?"3§.ComputeAABB(this.§+R§,param2);
         this.§%!I§ = param1.§[2§(this.§+R§,this);
      }
      
      b2internal function §+!<§(param1:§7W§) : void
      {
         if(this.§%!I§ == null)
         {
            return;
         }
         param1.§+!<§(this.§%!I§);
         this.§%!I§ = null;
      }
      
      b2internal function §^!q§(param1:§7W§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§%!I§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§?"3§.ComputeAABB(_loc4_,param2);
         this.§?"3§.ComputeAABB(_loc5_,param3);
         this.§+R§.§ !1§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§-=§(param3.position,param2.position);
         param1.§8;§(this.§%!I§,this.§+R§,_loc6_);
      }
   }
}
