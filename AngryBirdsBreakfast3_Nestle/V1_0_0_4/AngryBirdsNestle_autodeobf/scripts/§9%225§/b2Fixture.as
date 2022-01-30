package §9"5§
{
   import §!!o§.b2Contact;
   import §!!o§.b2ContactEdge;
   import §,P§.§7!G§;
   import §,P§.b2AABB;
   import §,P§.b2RayCastInput;
   import §,P§.b2RayCastOutput;
   import §-%§.b2Math;
   import §-%§.b2Transform;
   import §-%§.b2Vec2;
   import §>!R§.b2internal;
   import §>"&§.b2MassData;
   import §>"&§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §6!t§:b2MassData;
      
      b2internal var §<!7§:b2AABB;
      
      b2internal var §4O§:Number;
      
      b2internal var §]4§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §!N§:b2Shape;
      
      b2internal var §1!8§:Number;
      
      b2internal var §&"+§:Number;
      
      b2internal var §7L§;
      
      b2internal var §>v§:b2FilterData;
      
      b2internal var §6!-§:Boolean;
      
      b2internal var §44§;
      
      public function b2Fixture()
      {
         this.§>v§ = new b2FilterData();
         super();
         this.§<!7§ = new b2AABB();
         this.§44§ = null;
         this.m_body = null;
         this.§]4§ = null;
         this.§!N§ = null;
         this.§4O§ = 0;
         this.§1!8§ = 0;
         this.§&"+§ = 0;
      }
      
      public function §4!C§() : int
      {
         return this.§!N§.§4!C§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§!N§;
      }
      
      public function §>'§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§6!-§ == param1)
         {
            return;
         }
         this.§6!-§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§%!"§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§4%§;
            _loc4_ = _loc3_.§?s§();
            _loc5_ = _loc3_.§^!q§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§>'§(_loc4_.§0!;§() || _loc5_.§0!;§());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §0!;§() : Boolean
      {
         return this.§6!-§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§>v§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§%!"§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§4%§;
            _loc4_ = _loc3_.§?s§();
            _loc5_ = _loc3_.§^!q§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§?%§();
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §<m§() : b2FilterData
      {
         return this.§>v§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §+"3§() : b2Fixture
      {
         return this.§]4§;
      }
      
      public function GetUserData() : *
      {
         return this.§44§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§44§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§!N§.TestPoint(this.m_body.§,!h§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§!N§.RayCast(param1,param2,this.m_body.§,!h§());
      }
      
      public function §-"0§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§!N§.ComputeMass(param1,this.§4O§);
         return param1;
      }
      
      public function §+J§(param1:Number) : void
      {
         this.§4O§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§4O§;
      }
      
      public function §3"0§() : Number
      {
         return this.§1!8§;
      }
      
      public function §+!Q§(param1:Number) : void
      {
         this.§1!8§ = param1;
      }
      
      public function §2!`§() : Number
      {
         return this.§&"+§;
      }
      
      public function §%C§(param1:Number) : void
      {
         this.§&"+§ = param1;
      }
      
      public function §4!y§() : b2AABB
      {
         return this.§<!7§;
      }
      
      b2internal function §0!8§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§44§ = param3.userData;
         this.§1!8§ = param3.friction;
         this.§&"+§ = param3.restitution;
         this.m_body = param1;
         this.§]4§ = null;
         this.§>v§ = param3.filter.Copy();
         this.§6!-§ = param3.§,x§;
         this.§!N§ = param3.shape.Copy();
         this.§4O§ = param3.density;
      }
      
      b2internal function §&`§() : void
      {
         this.§!N§ = null;
      }
      
      b2internal function §[!o§(param1:§7!G§, param2:b2Transform) : void
      {
         this.§!N§.ComputeAABB(this.§<!7§,param2);
         this.§7L§ = param1.§[!o§(this.§<!7§,this);
      }
      
      b2internal function §<h§(param1:§7!G§) : void
      {
         if(this.§7L§ == null)
         {
            return;
         }
         param1.§<h§(this.§7L§);
         this.§7L§ = null;
      }
      
      b2internal function §%!f§(param1:§7!G§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§7L§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§!N§.ComputeAABB(_loc4_,param2);
         this.§!N§.ComputeAABB(_loc5_,param3);
         this.§<!7§.§,!c§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§'c§(param3.position,param2.position);
         param1.§%!X§(this.§7L§,this.§<!7§,_loc6_);
      }
   }
}
