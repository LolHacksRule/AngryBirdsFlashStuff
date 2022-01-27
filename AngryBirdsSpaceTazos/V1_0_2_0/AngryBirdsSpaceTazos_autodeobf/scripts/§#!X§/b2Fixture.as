package §#!X§
{
   import §&!S§.b2Math;
   import §&!S§.b2Transform;
   import §&!S§.b2Vec2;
   import §3!1§.b2Contact;
   import §3!1§.b2ContactEdge;
   import §3m§.§+!q§;
   import §3m§.b2AABB;
   import §3m§.b2RayCastInput;
   import §3m§.b2RayCastOutput;
   import §?f§.b2MassData;
   import §?f§.b2Shape;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §=M§:b2MassData;
      
      b2internal var §3$§:b2AABB;
      
      b2internal var §"5§:Number;
      
      b2internal var §`!s§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §else§:b2Shape;
      
      b2internal var §7W§:Number;
      
      b2internal var §#b§:Number;
      
      b2internal var §[f§;
      
      b2internal var §?!%§:b2FilterData;
      
      b2internal var §=!g§:Boolean;
      
      b2internal var §#@§;
      
      public function b2Fixture()
      {
         this.§?!%§ = new b2FilterData();
         super();
         this.§3$§ = new b2AABB();
         this.§#@§ = null;
         this.m_body = null;
         this.§`!s§ = null;
         this.§else§ = null;
         this.§"5§ = 0;
         this.§7W§ = 0;
         this.§#b§ = 0;
      }
      
      public function §,!k§() : int
      {
         return this.§else§.§,!k§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§else§;
      }
      
      public function §1!_§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§=!g§ == param1)
         {
            return;
         }
         this.§=!g§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!I§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§9p§;
            _loc4_ = _loc3_.§4!`§();
            _loc5_ = _loc3_.§?!y§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§1!_§(_loc4_.§<H§() || _loc5_.§<H§());
            }
            _loc2_ = _loc2_.§+!R§;
         }
      }
      
      public function §<H§() : Boolean
      {
         return this.§=!g§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§?!%§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!I§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§9p§;
            _loc4_ = _loc3_.§4!`§();
            _loc5_ = _loc3_.§?!y§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§0&§();
            }
            _loc2_ = _loc2_.§+!R§;
         }
      }
      
      public function §@"4§() : b2FilterData
      {
         return this.§?!%§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §6!4§() : b2Fixture
      {
         return this.§`!s§;
      }
      
      public function GetUserData() : *
      {
         return this.§#@§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§#@§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§else§.TestPoint(this.m_body.§+!T§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§else§.RayCast(param1,param2,this.m_body.§+!T§());
      }
      
      public function §['§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§else§.ComputeMass(param1,this.§"5§);
         return param1;
      }
      
      public function §-!U§(param1:Number) : void
      {
         this.§"5§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§"5§;
      }
      
      public function §93§() : Number
      {
         return this.§7W§;
      }
      
      public function §4"F§(param1:Number) : void
      {
         this.§7W§ = param1;
      }
      
      public function §5!e§() : Number
      {
         return this.§#b§;
      }
      
      public function §%!C§(param1:Number) : void
      {
         this.§#b§ = param1;
      }
      
      public function §!""§() : b2AABB
      {
         return this.§3$§;
      }
      
      b2internal function §;8§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§#@§ = param3.§]"6§;
         this.§7W§ = param3.friction;
         this.§#b§ = param3.restitution;
         this.m_body = param1;
         this.§`!s§ = null;
         this.§?!%§ = param3.filter.Copy();
         this.§=!g§ = param3.§3"H§;
         this.§else§ = param3.shape.Copy();
         this.§"5§ = param3.density;
      }
      
      b2internal function §5[§() : void
      {
         this.§else§ = null;
      }
      
      b2internal function §`!D§(param1:§+!q§, param2:b2Transform) : void
      {
         this.§else§.ComputeAABB(this.§3$§,param2);
         this.§[f§ = param1.§`!D§(this.§3$§,this);
      }
      
      b2internal function §'!d§(param1:§+!q§) : void
      {
         if(this.§[f§ == null)
         {
            return;
         }
         param1.§'!d§(this.§[f§);
         this.§[f§ = null;
      }
      
      b2internal function §!f§(param1:§+!q§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§[f§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§else§.ComputeAABB(_loc4_,param2);
         this.§else§.ComputeAABB(_loc5_,param3);
         this.§3$§.§<",§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§2"=§(param3.position,param2.position);
         param1.§`">§(this.§[f§,this.§3$§,_loc6_);
      }
   }
}
