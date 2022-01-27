package §1x§
{
   import §%!#§.§,"Q§;
   import §%!#§.b2AABB;
   import §%!#§.b2RayCastInput;
   import §%!#§.b2RayCastOutput;
   import §+!,§.b2Contact;
   import §+!,§.b2ContactEdge;
   import §9!s§.b2internal;
   import §[!L§.b2MassData;
   import §[!L§.b2Shape;
   import §^>§.b2Math;
   import §^>§.b2Transform;
   import §^>§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §;#-§:b2MassData;
      
      b2internal var §;I§:b2AABB;
      
      b2internal var §3"3§:Number;
      
      b2internal var § z§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §3"M§:b2Shape;
      
      b2internal var §#!2§:Number;
      
      b2internal var §="P§:Number;
      
      b2internal var §3"7§;
      
      b2internal var §6"w§:b2FilterData;
      
      b2internal var §7"G§:Boolean;
      
      b2internal var §<A§;
      
      public function b2Fixture()
      {
         this.§6"w§ = new b2FilterData();
         super();
         this.§;I§ = new b2AABB();
         this.§<A§ = null;
         this.m_body = null;
         this.§ z§ = null;
         this.§3"M§ = null;
         this.§3"3§ = 0;
         this.§#!2§ = 0;
         this.§="P§ = 0;
      }
      
      public function § "N§() : int
      {
         return this.§3"M§.§ "N§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§3"M§;
      }
      
      public function §>"X§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§7"G§ == param1)
         {
            return;
         }
         this.§7"G§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§3!D§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§&#%§;
            _loc4_ = _loc3_.§%$§();
            _loc5_ = _loc3_.§&#0§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§>"X§(_loc4_.§##-§() || _loc5_.§##-§());
            }
            _loc2_ = _loc2_.§#!0§;
         }
      }
      
      public function §##-§() : Boolean
      {
         return this.§7"G§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§6"w§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§3!D§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§&#%§;
            _loc4_ = _loc3_.§%$§();
            _loc5_ = _loc3_.§&#0§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§'#$§();
            }
            _loc2_ = _loc2_.§#!0§;
         }
      }
      
      public function §8"G§() : b2FilterData
      {
         return this.§6"w§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §=!&§() : b2Fixture
      {
         return this.§ z§;
      }
      
      public function GetUserData() : *
      {
         return this.§<A§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§<A§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§3"M§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§3"M§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function §#"K§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§3"M§.ComputeMass(param1,this.§3"3§);
         return param1;
      }
      
      public function SetDensity(param1:Number) : void
      {
         this.§3"3§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§3"3§;
      }
      
      public function §@!K§() : Number
      {
         return this.§#!2§;
      }
      
      public function §1!M§(param1:Number) : void
      {
         this.§#!2§ = param1;
      }
      
      public function §'!<§() : Number
      {
         return this.§="P§;
      }
      
      public function §!"W§(param1:Number) : void
      {
         this.§="P§ = param1;
      }
      
      public function §++§() : b2AABB
      {
         return this.§;I§;
      }
      
      b2internal function §0"]§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§<A§ = param3.§>g§;
         this.§#!2§ = param3.friction;
         this.§="P§ = param3.restitution;
         this.m_body = param1;
         this.§ z§ = null;
         this.§6"w§ = param3.filter.Copy();
         this.§7"G§ = param3.§]y§;
         this.§3"M§ = param3.shape.Copy();
         this.§3"3§ = param3.density;
      }
      
      b2internal function §%c§() : void
      {
         this.§3"M§ = null;
      }
      
      b2internal function §1"V§(param1:§,"Q§, param2:b2Transform) : void
      {
         this.§3"M§.ComputeAABB(this.§;I§,param2);
         this.§3"7§ = param1.§1"V§(this.§;I§,this);
      }
      
      b2internal function §,S§(param1:§,"Q§) : void
      {
         if(this.§3"7§ == null)
         {
            return;
         }
         param1.§,S§(this.§3"7§);
         this.§3"7§ = null;
      }
      
      b2internal function §8!W§(param1:§,"Q§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§3"7§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§3"M§.ComputeAABB(_loc4_,param2);
         this.§3"M§.ComputeAABB(_loc5_,param3);
         this.§;I§.§8#-§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§]Y§(param3.position,param2.position);
         param1.§>!N§(this.§3"7§,this.§;I§,_loc6_);
      }
   }
}
