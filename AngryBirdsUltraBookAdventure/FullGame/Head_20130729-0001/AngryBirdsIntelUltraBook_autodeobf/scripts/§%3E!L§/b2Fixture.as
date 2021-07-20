package §>!L§
{
   import §!m§.§"%§;
   import §!m§.b2AABB;
   import §!m§.b2RayCastInput;
   import §!m§.b2RayCastOutput;
   import §#!0§.b2Contact;
   import §#!0§.b2ContactEdge;
   import §+!g§.b2internal;
   import §0!3§.b2MassData;
   import §0!3§.b2Shape;
   import §>!8§.b2Math;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §]T§:b2MassData;
      
      b2internal var §'!Y§:b2AABB;
      
      b2internal var §0A§:Number;
      
      b2internal var §,!Z§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §2!K§:b2Shape;
      
      b2internal var §!G§:Number;
      
      b2internal var §-%§:Number;
      
      b2internal var §;1§;
      
      b2internal var § !C§:b2FilterData;
      
      b2internal var §4!R§:Boolean;
      
      b2internal var §=f§;
      
      public function b2Fixture()
      {
         this.§ !C§ = new b2FilterData();
         super();
         this.§'!Y§ = new b2AABB();
         this.§=f§ = null;
         this.m_body = null;
         this.§,!Z§ = null;
         this.§2!K§ = null;
         this.§0A§ = 0;
         this.§!G§ = 0;
         this.§-%§ = 0;
      }
      
      public function §6!-§() : int
      {
         return this.§2!K§.§6!-§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§2!K§;
      }
      
      public function §,!!§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§4!R§ == param1)
         {
            return;
         }
         this.§4!R§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§2!c§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§7![§;
            _loc4_ = _loc3_.§'$§();
            _loc5_ = _loc3_.§<!2§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§,!!§(_loc4_.§[j§() || _loc5_.§[j§());
            }
            _loc2_ = _loc2_.§<!D§;
         }
      }
      
      public function §[j§() : Boolean
      {
         return this.§4!R§;
      }
      
      public function §^B§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§ !C§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§2!c§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§7![§;
            _loc4_ = _loc3_.§'$§();
            _loc5_ = _loc3_.§<!2§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§"T§();
            }
            _loc2_ = _loc2_.§<!D§;
         }
      }
      
      public function §@N§() : b2FilterData
      {
         return this.§ !C§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §'!;§() : b2Fixture
      {
         return this.§,!Z§;
      }
      
      public function GetUserData() : *
      {
         return this.§=f§;
      }
      
      public function §9`§(param1:*) : void
      {
         this.§=f§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§2!K§.TestPoint(this.m_body.§1?§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§2!K§.RayCast(param1,param2,this.m_body.§1?§());
      }
      
      public function §=Q§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§2!K§.ComputeMass(param1,this.§0A§);
         return param1;
      }
      
      public function §1=§(param1:Number) : void
      {
         this.§0A§ = param1;
      }
      
      public function §4@§() : Number
      {
         return this.§0A§;
      }
      
      public function §[!N§() : Number
      {
         return this.§!G§;
      }
      
      public function §!!<§(param1:Number) : void
      {
         this.§!G§ = param1;
      }
      
      public function §0w§() : Number
      {
         return this.§-%§;
      }
      
      public function §5V§(param1:Number) : void
      {
         this.§-%§ = param1;
      }
      
      public function §#Y§() : b2AABB
      {
         return this.§'!Y§;
      }
      
      b2internal function §@!L§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§=f§ = param3.§+!f§;
         this.§!G§ = param3.friction;
         this.§-%§ = param3.restitution;
         this.m_body = param1;
         this.§,!Z§ = null;
         this.§ !C§ = param3.filter.Copy();
         this.§4!R§ = param3.§[!i§;
         this.§2!K§ = param3.shape.Copy();
         this.§0A§ = param3.density;
      }
      
      b2internal function §"G§() : void
      {
         this.§2!K§ = null;
      }
      
      b2internal function §>!I§(param1:§"%§, param2:b2Transform) : void
      {
         this.§2!K§.ComputeAABB(this.§'!Y§,param2);
         this.§;1§ = param1.§>!I§(this.§'!Y§,this);
      }
      
      b2internal function §,!c§(param1:§"%§) : void
      {
         if(this.§;1§ == null)
         {
            return;
         }
         param1.§,!c§(this.§;1§);
         this.§;1§ = null;
      }
      
      b2internal function §1!f§(param1:§"%§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§;1§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§2!K§.ComputeAABB(_loc4_,param2);
         this.§2!K§.ComputeAABB(_loc5_,param3);
         this.§'!Y§.§[!g§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§2!C§(param3.position,param2.position);
         param1.§]Z§(this.§;1§,this.§'!Y§,_loc6_);
      }
   }
}
