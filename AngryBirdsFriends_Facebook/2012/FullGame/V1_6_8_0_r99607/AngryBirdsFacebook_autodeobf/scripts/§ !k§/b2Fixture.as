package § !k§
{
   import §!"8§.b2Math;
   import §!"8§.b2Transform;
   import §!"8§.b2Vec2;
   import §&I§.b2MassData;
   import §&I§.b2Shape;
   import §6!d§.§`O§;
   import §6!d§.b2AABB;
   import §6!d§.b2RayCastInput;
   import §6!d§.b2RayCastOutput;
   import §]!l§.b2Contact;
   import §]!l§.b2ContactEdge;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §>,§:b2MassData;
      
      b2internal var §[g§:b2AABB;
      
      b2internal var §4!Z§:Number;
      
      b2internal var §7"@§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §>Y§:b2Shape;
      
      b2internal var §?!4§:Number;
      
      b2internal var §5"A§:Number;
      
      b2internal var §@!f§;
      
      b2internal var §6!!§:b2FilterData;
      
      b2internal var §4_§:Boolean;
      
      b2internal var §[?§;
      
      public function b2Fixture()
      {
         this.§6!!§ = new b2FilterData();
         super();
         this.§[g§ = new b2AABB();
         this.§[?§ = null;
         this.m_body = null;
         this.§7"@§ = null;
         this.§>Y§ = null;
         this.§4!Z§ = 0;
         this.§?!4§ = 0;
         this.§5"A§ = 0;
      }
      
      public function §9!j§() : int
      {
         return this.§>Y§.§9!j§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§>Y§;
      }
      
      public function §?O§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§4_§ == param1)
         {
            return;
         }
         this.§4_§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!""§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§4!M§;
            _loc4_ = _loc3_.§9!&§();
            _loc5_ = _loc3_.§2%§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§?O§(_loc4_.§8E§() || _loc5_.§8E§());
            }
            _loc2_ = _loc2_.§%!8§;
         }
      }
      
      public function §8E§() : Boolean
      {
         return this.§4_§;
      }
      
      public function § !e§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§6!!§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§!""§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§4!M§;
            _loc4_ = _loc3_.§9!&§();
            _loc5_ = _loc3_.§2%§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§9_§();
            }
            _loc2_ = _loc2_.§%!8§;
         }
      }
      
      public function §#!>§() : b2FilterData
      {
         return this.§6!!§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §&A§() : b2Fixture
      {
         return this.§7"@§;
      }
      
      public function GetUserData() : *
      {
         return this.§[?§;
      }
      
      public function §'A§(param1:*) : void
      {
         this.§[?§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§>Y§.TestPoint(this.m_body.§[H§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§>Y§.RayCast(param1,param2,this.m_body.§[H§());
      }
      
      public function §5!1§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§>Y§.ComputeMass(param1,this.§4!Z§);
         return param1;
      }
      
      public function §`!D§(param1:Number) : void
      {
         this.§4!Z§ = param1;
      }
      
      public function §#9§() : Number
      {
         return this.§4!Z§;
      }
      
      public function §`"!§() : Number
      {
         return this.§?!4§;
      }
      
      public function §@" §(param1:Number) : void
      {
         this.§?!4§ = param1;
      }
      
      public function §%r§() : Number
      {
         return this.§5"A§;
      }
      
      public function §6i§(param1:Number) : void
      {
         this.§5"A§ = param1;
      }
      
      public function §!X§() : b2AABB
      {
         return this.§[g§;
      }
      
      b2internal function §#!b§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§[?§ = param3.§#"@§;
         this.§?!4§ = param3.friction;
         this.§5"A§ = param3.restitution;
         this.m_body = param1;
         this.§7"@§ = null;
         this.§6!!§ = param3.filter.Copy();
         this.§4_§ = param3.§%!w§;
         this.§>Y§ = param3.shape.Copy();
         this.§4!Z§ = param3.density;
      }
      
      b2internal function §1?§() : void
      {
         this.§>Y§ = null;
      }
      
      b2internal function §`!;§(param1:§`O§, param2:b2Transform) : void
      {
         this.§>Y§.ComputeAABB(this.§[g§,param2);
         this.§@!f§ = param1.§`!;§(this.§[g§,this);
      }
      
      b2internal function §]o§(param1:§`O§) : void
      {
         if(this.§@!f§ == null)
         {
            return;
         }
         param1.§]o§(this.§@!f§);
         this.§@!f§ = null;
      }
      
      b2internal function §#!F§(param1:§`O§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§@!f§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§>Y§.ComputeAABB(_loc4_,param2);
         this.§>Y§.ComputeAABB(_loc5_,param3);
         this.§[g§.§6e§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§@!W§(param3.position,param2.position);
         param1.§""$§(this.§@!f§,this.§[g§,_loc6_);
      }
   }
}
