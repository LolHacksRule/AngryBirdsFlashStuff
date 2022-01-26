package §&i§
{
   import §"v§.b2internal;
   import §'z§.b2Contact;
   import §'z§.b2ContactEdge;
   import §5!K§.b2Math;
   import §5!K§.b2Transform;
   import §5!K§.b2Vec2;
   import §]M§.§?!&§;
   import §]M§.b2AABB;
   import §]M§.b2RayCastInput;
   import §]M§.b2RayCastOutput;
   import §each §.b2MassData;
   import §each §.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §!P§:b2MassData;
      
      b2internal var §%"§:b2AABB;
      
      b2internal var §%+§:Number;
      
      b2internal var §`!T§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §[q§:b2Shape;
      
      b2internal var §0<§:Number;
      
      b2internal var §+!7§:Number;
      
      b2internal var §2!F§;
      
      b2internal var §52§:b2FilterData;
      
      b2internal var §5!'§:Boolean;
      
      b2internal var §`G§;
      
      public function b2Fixture()
      {
         this.§52§ = new b2FilterData();
         super();
         this.§%"§ = new b2AABB();
         this.§`G§ = null;
         this.m_body = null;
         this.§`!T§ = null;
         this.§[q§ = null;
         this.§%+§ = 0;
         this.§0<§ = 0;
         this.§+!7§ = 0;
      }
      
      public function §"5§() : int
      {
         return this.§[q§.§"5§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§[q§;
      }
      
      public function §`c§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§5!'§ == param1)
         {
            return;
         }
         this.§5!'§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§0H§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§^@§;
            _loc4_ = _loc3_.§"q§();
            _loc5_ = _loc3_.§^x§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§`c§(_loc4_.§5P§() || _loc5_.§5P§());
            }
            _loc2_ = _loc2_.§`!V§;
         }
      }
      
      public function §5P§() : Boolean
      {
         return this.§5!'§;
      }
      
      public function §<o§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§52§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§0H§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§^@§;
            _loc4_ = _loc3_.§"q§();
            _loc5_ = _loc3_.§^x§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§8!S§();
            }
            _loc2_ = _loc2_.§`!V§;
         }
      }
      
      public function §@!>§() : b2FilterData
      {
         return this.§52§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §%!<§() : b2Fixture
      {
         return this.§`!T§;
      }
      
      public function GetUserData() : *
      {
         return this.§`G§;
      }
      
      public function §3!!§(param1:*) : void
      {
         this.§`G§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§[q§.TestPoint(this.m_body.§5!C§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§[q§.RayCast(param1,param2,this.m_body.§5!C§());
      }
      
      public function §-!!§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§[q§.ComputeMass(param1,this.§%+§);
         return param1;
      }
      
      public function §?T§(param1:Number) : void
      {
         this.§%+§ = param1;
      }
      
      public function §=!0§() : Number
      {
         return this.§%+§;
      }
      
      public function §8!]§() : Number
      {
         return this.§0<§;
      }
      
      public function §2!$§(param1:Number) : void
      {
         this.§0<§ = param1;
      }
      
      public function §7'§() : Number
      {
         return this.§+!7§;
      }
      
      public function §#!C§(param1:Number) : void
      {
         this.§+!7§ = param1;
      }
      
      public function §^I§() : b2AABB
      {
         return this.§%"§;
      }
      
      b2internal function §#![§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§`G§ = param3.§+!?§;
         this.§0<§ = param3.friction;
         this.§+!7§ = param3.restitution;
         this.m_body = param1;
         this.§`!T§ = null;
         this.§52§ = param3.filter.Copy();
         this.§5!'§ = param3.§9!F§;
         this.§[q§ = param3.shape.Copy();
         this.§%+§ = param3.density;
      }
      
      b2internal function §%P§() : void
      {
         this.§[q§ = null;
      }
      
      b2internal function §9!^§(param1:§?!&§, param2:b2Transform) : void
      {
         this.§[q§.ComputeAABB(this.§%"§,param2);
         this.§2!F§ = param1.§9!^§(this.§%"§,this);
      }
      
      b2internal function §%!C§(param1:§?!&§) : void
      {
         if(this.§2!F§ == null)
         {
            return;
         }
         param1.§%!C§(this.§2!F§);
         this.§2!F§ = null;
      }
      
      b2internal function §@!D§(param1:§?!&§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§2!F§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§[q§.ComputeAABB(_loc4_,param2);
         this.§[q§.ComputeAABB(_loc5_,param3);
         this.§%"§.§46§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§@!^§(param3.position,param2.position);
         param1.§;M§(this.§2!F§,this.§%"§,_loc6_);
      }
   }
}
