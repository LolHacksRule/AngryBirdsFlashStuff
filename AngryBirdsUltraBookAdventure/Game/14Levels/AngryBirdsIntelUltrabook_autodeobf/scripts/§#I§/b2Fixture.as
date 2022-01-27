package §#I§
{
   import §&H§.b2Math;
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §3b§.b2MassData;
   import §3b§.b2Shape;
   import §4]§.b2Contact;
   import §4]§.b2ContactEdge;
   import §>!Z§.§<P§;
   import §>!Z§.b2AABB;
   import §>!Z§.b2RayCastInput;
   import §>!Z§.b2RayCastOutput;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §4`§:b2MassData;
      
      b2internal var §9v§:b2AABB;
      
      b2internal var §`!k§:Number;
      
      b2internal var §=!8§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §'!K§:b2Shape;
      
      b2internal var §9G§:Number;
      
      b2internal var §=!F§:Number;
      
      b2internal var §8""§;
      
      b2internal var §,!E§:b2FilterData;
      
      b2internal var §"!L§:Boolean;
      
      b2internal var §>g§;
      
      public function b2Fixture()
      {
         this.§,!E§ = new b2FilterData();
         super();
         this.§9v§ = new b2AABB();
         this.§>g§ = null;
         this.m_body = null;
         this.§=!8§ = null;
         this.§'!K§ = null;
         this.§`!k§ = 0;
         this.§9G§ = 0;
         this.§=!F§ = 0;
      }
      
      public function § 5§() : int
      {
         return this.§'!K§.§ 5§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§'!K§;
      }
      
      public function §,!d§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§"!L§ == param1)
         {
            return;
         }
         this.§"!L§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§>!3§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§8!m§;
            _loc4_ = _loc3_.§`!a§();
            _loc5_ = _loc3_.§2!s§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§,!d§(_loc4_.§%u§() || _loc5_.§%u§());
            }
            _loc2_ = _loc2_.§`!w§;
         }
      }
      
      public function §%u§() : Boolean
      {
         return this.§"!L§;
      }
      
      public function §?!o§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§,!E§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§>!3§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§8!m§;
            _loc4_ = _loc3_.§`!a§();
            _loc5_ = _loc3_.§2!s§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§+q§();
            }
            _loc2_ = _loc2_.§`!w§;
         }
      }
      
      public function §4!Z§() : b2FilterData
      {
         return this.§,!E§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §?!^§() : b2Fixture
      {
         return this.§=!8§;
      }
      
      public function GetUserData() : *
      {
         return this.§>g§;
      }
      
      public function §%V§(param1:*) : void
      {
         this.§>g§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§'!K§.TestPoint(this.m_body.§%J§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§'!K§.RayCast(param1,param2,this.m_body.§%J§());
      }
      
      public function §&K§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§'!K§.ComputeMass(param1,this.§`!k§);
         return param1;
      }
      
      public function §!!F§(param1:Number) : void
      {
         this.§`!k§ = param1;
      }
      
      public function §1!v§() : Number
      {
         return this.§`!k§;
      }
      
      public function §,!B§() : Number
      {
         return this.§9G§;
      }
      
      public function §+k§(param1:Number) : void
      {
         this.§9G§ = param1;
      }
      
      public function §^_§() : Number
      {
         return this.§=!F§;
      }
      
      public function §5!,§(param1:Number) : void
      {
         this.§=!F§ = param1;
      }
      
      public function §<!-§() : b2AABB
      {
         return this.§9v§;
      }
      
      b2internal function §1!Y§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§>g§ = param3.§]!=§;
         this.§9G§ = param3.friction;
         this.§=!F§ = param3.restitution;
         this.m_body = param1;
         this.§=!8§ = null;
         this.§,!E§ = param3.filter.Copy();
         this.§"!L§ = param3.§^$§;
         this.§'!K§ = param3.shape.Copy();
         this.§`!k§ = param3.density;
      }
      
      b2internal function §=_§() : void
      {
         this.§'!K§ = null;
      }
      
      b2internal function §[E§(param1:§<P§, param2:b2Transform) : void
      {
         this.§'!K§.ComputeAABB(this.§9v§,param2);
         this.§8""§ = param1.§[E§(this.§9v§,this);
      }
      
      b2internal function §#i§(param1:§<P§) : void
      {
         if(this.§8""§ == null)
         {
            return;
         }
         param1.§#i§(this.§8""§);
         this.§8""§ = null;
      }
      
      b2internal function §0!H§(param1:§<P§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§8""§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§'!K§.ComputeAABB(_loc4_,param2);
         this.§'!K§.ComputeAABB(_loc5_,param3);
         this.§9v§.§5"$§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§%M§(param3.position,param2.position);
         param1.§"d§(this.§8""§,this.§9v§,_loc6_);
      }
   }
}
