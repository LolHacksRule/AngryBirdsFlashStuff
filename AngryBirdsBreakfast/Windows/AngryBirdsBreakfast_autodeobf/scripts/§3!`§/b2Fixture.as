package §3!`§
{
   import §"y§.b2MassData;
   import §"y§.b2Shape;
   import §'F§.b2internal;
   import §-"&§.b2Contact;
   import §-"&§.b2ContactEdge;
   import §6Z§.b2Math;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   import §^9§.§`c§;
   import §^9§.b2AABB;
   import §^9§.b2RayCastInput;
   import §^9§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §=H§:b2MassData;
      
      b2internal var §#M§:b2AABB;
      
      b2internal var §;h§:Number;
      
      b2internal var §0!>§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §2"#§:b2Shape;
      
      b2internal var §,e§:Number;
      
      b2internal var §"k§:Number;
      
      b2internal var §1! §;
      
      b2internal var §7"#§:b2FilterData;
      
      b2internal var §>=§:Boolean;
      
      b2internal var § D§;
      
      public function b2Fixture()
      {
         this.§7"#§ = new b2FilterData();
         super();
         this.§#M§ = new b2AABB();
         this.§ D§ = null;
         this.m_body = null;
         this.§0!>§ = null;
         this.§2"#§ = null;
         this.§;h§ = 0;
         this.§,e§ = 0;
         this.§"k§ = 0;
      }
      
      public function §<!A§() : int
      {
         return this.§2"#§.§<!A§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§2"#§;
      }
      
      public function §`!x§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§>=§ == param1)
         {
            return;
         }
         this.§>=§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§9'§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§;%§;
            _loc4_ = _loc3_.§&R§();
            _loc5_ = _loc3_.§@!,§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§`!x§(_loc4_.§'5§() || _loc5_.§'5§());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §'5§() : Boolean
      {
         return this.§>=§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§7"#§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§9'§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§;%§;
            _loc4_ = _loc3_.§&R§();
            _loc5_ = _loc3_.§@!,§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§<t§();
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §'"0§() : b2FilterData
      {
         return this.§7"#§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §>X§() : b2Fixture
      {
         return this.§0!>§;
      }
      
      public function GetUserData() : *
      {
         return this.§ D§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§ D§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§2"#§.TestPoint(this.m_body.§#%§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§2"#§.RayCast(param1,param2,this.m_body.§#%§());
      }
      
      public function §9!p§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§2"#§.ComputeMass(param1,this.§;h§);
         return param1;
      }
      
      public function §[r§(param1:Number) : void
      {
         this.§;h§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§;h§;
      }
      
      public function §-!C§() : Number
      {
         return this.§,e§;
      }
      
      public function §^X§(param1:Number) : void
      {
         this.§,e§ = param1;
      }
      
      public function §-!^§() : Number
      {
         return this.§"k§;
      }
      
      public function §'N§(param1:Number) : void
      {
         this.§"k§ = param1;
      }
      
      public function §#!,§() : b2AABB
      {
         return this.§#M§;
      }
      
      b2internal function §2#§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§ D§ = param3.userData;
         this.§,e§ = param3.friction;
         this.§"k§ = param3.restitution;
         this.m_body = param1;
         this.§0!>§ = null;
         this.§7"#§ = param3.filter.Copy();
         this.§>=§ = param3.§4F§;
         this.§2"#§ = param3.shape.Copy();
         this.§;h§ = param3.density;
      }
      
      b2internal function §5f§() : void
      {
         this.§2"#§ = null;
      }
      
      b2internal function §]!J§(param1:§`c§, param2:b2Transform) : void
      {
         this.§2"#§.ComputeAABB(this.§#M§,param2);
         this.§1! § = param1.§]!J§(this.§#M§,this);
      }
      
      b2internal function §5!k§(param1:§`c§) : void
      {
         if(this.§1! § == null)
         {
            return;
         }
         param1.§5!k§(this.§1! §);
         this.§1! § = null;
      }
      
      b2internal function §[!$§(param1:§`c§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§1! §)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§2"#§.ComputeAABB(_loc4_,param2);
         this.§2"#§.ComputeAABB(_loc5_,param3);
         this.§#M§.§[!g§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§";§(param3.position,param2.position);
         param1.§2n§(this.§1! §,this.§#M§,_loc6_);
      }
   }
}
