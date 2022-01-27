package §8!I§
{
   import §+!b§.b2MassData;
   import §+!b§.b2Shape;
   import §4x§.b2internal;
   import §<"§.§+!5§;
   import §<"§.b2AABB;
   import §<"§.b2RayCastInput;
   import §<"§.b2RayCastOutput;
   import §=i§.b2Math;
   import §=i§.b2Transform;
   import §=i§.b2Vec2;
   import §@!a§.b2Contact;
   import §@!a§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §;e§:b2MassData;
      
      b2internal var §96§:b2AABB;
      
      b2internal var §?!<§:Number;
      
      b2internal var §,C§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §3!Z§:b2Shape;
      
      b2internal var §`!Z§:Number;
      
      b2internal var §@u§:Number;
      
      b2internal var §8!^§;
      
      b2internal var §+>§:b2FilterData;
      
      b2internal var §&=§:Boolean;
      
      b2internal var §4!3§;
      
      public function b2Fixture()
      {
         this.§+>§ = new b2FilterData();
         super();
         this.§96§ = new b2AABB();
         this.§4!3§ = null;
         this.m_body = null;
         this.§,C§ = null;
         this.§3!Z§ = null;
         this.§?!<§ = 0;
         this.§`!Z§ = 0;
         this.§@u§ = 0;
      }
      
      public function §<!M§() : int
      {
         return this.§3!Z§.§<!M§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§3!Z§;
      }
      
      public function §99§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§&=§ == param1)
         {
            return;
         }
         this.§&=§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§,;§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§ M§;
            _loc4_ = _loc3_.§#!Z§();
            _loc5_ = _loc3_.§5A§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§99§(_loc4_.§^&§() || _loc5_.§^&§());
            }
            _loc2_ = _loc2_.§>;§;
         }
      }
      
      public function §^&§() : Boolean
      {
         return this.§&=§;
      }
      
      public function §`2§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§+>§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§,;§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§ M§;
            _loc4_ = _loc3_.§#!Z§();
            _loc5_ = _loc3_.§5A§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§%&§();
            }
            _loc2_ = _loc2_.§>;§;
         }
      }
      
      public function §#s§() : b2FilterData
      {
         return this.§+>§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §]S§() : b2Fixture
      {
         return this.§,C§;
      }
      
      public function GetUserData() : *
      {
         return this.§4!3§;
      }
      
      public function §!X§(param1:*) : void
      {
         this.§4!3§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§3!Z§.TestPoint(this.m_body.§0c§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§3!Z§.RayCast(param1,param2,this.m_body.§0c§());
      }
      
      public function §9A§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§3!Z§.ComputeMass(param1,this.§?!<§);
         return param1;
      }
      
      public function §&N§(param1:Number) : void
      {
         this.§?!<§ = param1;
      }
      
      public function §>!E§() : Number
      {
         return this.§?!<§;
      }
      
      public function §2!,§() : Number
      {
         return this.§`!Z§;
      }
      
      public function §]! §(param1:Number) : void
      {
         this.§`!Z§ = param1;
      }
      
      public function §'T§() : Number
      {
         return this.§@u§;
      }
      
      public function §>!D§(param1:Number) : void
      {
         this.§@u§ = param1;
      }
      
      public function §"p§() : b2AABB
      {
         return this.§96§;
      }
      
      b2internal function § `§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§4!3§ = param3.§3q§;
         this.§`!Z§ = param3.friction;
         this.§@u§ = param3.restitution;
         this.m_body = param1;
         this.§,C§ = null;
         this.§+>§ = param3.filter.Copy();
         this.§&=§ = param3.§-!-§;
         this.§3!Z§ = param3.shape.Copy();
         this.§?!<§ = param3.density;
      }
      
      b2internal function §%!`§() : void
      {
         this.§3!Z§ = null;
      }
      
      b2internal function §"^§(param1:§+!5§, param2:b2Transform) : void
      {
         this.§3!Z§.ComputeAABB(this.§96§,param2);
         this.§8!^§ = param1.§"^§(this.§96§,this);
      }
      
      b2internal function §-0§(param1:§+!5§) : void
      {
         if(this.§8!^§ == null)
         {
            return;
         }
         param1.§-0§(this.§8!^§);
         this.§8!^§ = null;
      }
      
      b2internal function §>z§(param1:§+!5§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§8!^§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§3!Z§.ComputeAABB(_loc4_,param2);
         this.§3!Z§.ComputeAABB(_loc5_,param3);
         this.§96§.§ true§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§]G§(param3.position,param2.position);
         param1.§ f§(this.§8!^§,this.§96§,_loc6_);
      }
   }
}
