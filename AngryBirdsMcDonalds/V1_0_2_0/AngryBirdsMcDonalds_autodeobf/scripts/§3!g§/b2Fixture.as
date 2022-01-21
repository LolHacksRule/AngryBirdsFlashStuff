package §3!g§
{
   import §"U§.b2Math;
   import §"U§.b2Transform;
   import §"U§.b2Vec2;
   import §'!9§.b2Contact;
   import §'!9§.b2ContactEdge;
   import §,7§.b2MassData;
   import §,7§.b2Shape;
   import §<!!§.§]!H§;
   import §<!!§.b2AABB;
   import §<!!§.b2RayCastInput;
   import §<!!§.b2RayCastOutput;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §;!$§:b2MassData;
      
      b2internal var § !K§:b2AABB;
      
      b2internal var §&!;§:Number;
      
      b2internal var § set§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §+!Z§:b2Shape;
      
      b2internal var §5!_§:Number;
      
      b2internal var §]^§:Number;
      
      b2internal var §3r§;
      
      b2internal var §@1§:b2FilterData;
      
      b2internal var §+7§:Boolean;
      
      b2internal var §;!O§;
      
      public function b2Fixture()
      {
         this.§@1§ = new b2FilterData();
         super();
         this.§ !K§ = new b2AABB();
         this.§;!O§ = null;
         this.m_body = null;
         this.§ set§ = null;
         this.§+!Z§ = null;
         this.§&!;§ = 0;
         this.§5!_§ = 0;
         this.§]^§ = 0;
      }
      
      public function §^!A§() : int
      {
         return this.§+!Z§.§^!A§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§+!Z§;
      }
      
      public function §;R§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§+7§ == param1)
         {
            return;
         }
         this.§+7§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§]!@§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§!R§;
            _loc4_ = _loc3_.§'C§();
            _loc5_ = _loc3_.§<!n§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§;R§(_loc4_.§&?§() || _loc5_.§&?§());
            }
            _loc2_ = _loc2_.§[8§;
         }
      }
      
      public function §&?§() : Boolean
      {
         return this.§+7§;
      }
      
      public function §1!V§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§@1§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§]!@§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§!R§;
            _loc4_ = _loc3_.§'C§();
            _loc5_ = _loc3_.§<!n§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§2s§();
            }
            _loc2_ = _loc2_.§[8§;
         }
      }
      
      public function §3E§() : b2FilterData
      {
         return this.§@1§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §%H§() : b2Fixture
      {
         return this.§ set§;
      }
      
      public function GetUserData() : *
      {
         return this.§;!O§;
      }
      
      public function §-1§(param1:*) : void
      {
         this.§;!O§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§+!Z§.TestPoint(this.m_body.§=q§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§+!Z§.RayCast(param1,param2,this.m_body.§=q§());
      }
      
      public function §5G§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§+!Z§.ComputeMass(param1,this.§&!;§);
         return param1;
      }
      
      public function §1!@§(param1:Number) : void
      {
         this.§&!;§ = param1;
      }
      
      public function §"!&§() : Number
      {
         return this.§&!;§;
      }
      
      public function §<s§() : Number
      {
         return this.§5!_§;
      }
      
      public function §8-§(param1:Number) : void
      {
         this.§5!_§ = param1;
      }
      
      public function §%w§() : Number
      {
         return this.§]^§;
      }
      
      public function §6w§(param1:Number) : void
      {
         this.§]^§ = param1;
      }
      
      public function §;"§() : b2AABB
      {
         return this.§ !K§;
      }
      
      b2internal function § 9§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§;!O§ = param3.§,3§;
         this.§5!_§ = param3.friction;
         this.§]^§ = param3.restitution;
         this.m_body = param1;
         this.§ set§ = null;
         this.§@1§ = param3.filter.Copy();
         this.§+7§ = param3.§,]§;
         this.§+!Z§ = param3.shape.Copy();
         this.§&!;§ = param3.density;
      }
      
      b2internal function §+$§() : void
      {
         this.§+!Z§ = null;
      }
      
      b2internal function §4f§(param1:§]!H§, param2:b2Transform) : void
      {
         this.§+!Z§.ComputeAABB(this.§ !K§,param2);
         this.§3r§ = param1.§4f§(this.§ !K§,this);
      }
      
      b2internal function §+!g§(param1:§]!H§) : void
      {
         if(this.§3r§ == null)
         {
            return;
         }
         param1.§+!g§(this.§3r§);
         this.§3r§ = null;
      }
      
      b2internal function §8!§(param1:§]!H§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§3r§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§+!Z§.ComputeAABB(_loc4_,param2);
         this.§+!Z§.ComputeAABB(_loc5_,param3);
         this.§ !K§.§4!l§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§^!Y§(param3.position,param2.position);
         param1.§72§(this.§3r§,this.§ !K§,_loc6_);
      }
   }
}
