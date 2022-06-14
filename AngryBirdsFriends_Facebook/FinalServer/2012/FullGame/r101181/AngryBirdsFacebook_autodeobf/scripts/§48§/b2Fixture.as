package §48§
{
   import §!D§.b2Contact;
   import §!D§.b2ContactEdge;
   import §#]§.b2Math;
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §4!!§.b2internal;
   import §55§.§0!K§;
   import §55§.b2AABB;
   import §55§.b2RayCastInput;
   import §55§.b2RayCastOutput;
   import §<!`§.b2MassData;
   import §<!`§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var § !j§:b2MassData;
      
      b2internal var §#M§:b2AABB;
      
      b2internal var §]!l§:Number;
      
      b2internal var §%"@§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §7;§:b2Shape;
      
      b2internal var §1!S§:Number;
      
      b2internal var §6"#§:Number;
      
      b2internal var §=!;§;
      
      b2internal var §^!t§:b2FilterData;
      
      b2internal var §"!K§:Boolean;
      
      b2internal var §6r§;
      
      public function b2Fixture()
      {
         this.§^!t§ = new b2FilterData();
         super();
         this.§#M§ = new b2AABB();
         this.§6r§ = null;
         this.m_body = null;
         this.§%"@§ = null;
         this.§7;§ = null;
         this.§]!l§ = 0;
         this.§1!S§ = 0;
         this.§6"#§ = 0;
      }
      
      public function §"r§() : int
      {
         return this.§7;§.§"r§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§7;§;
      }
      
      public function §>B§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§"!K§ == param1)
         {
            return;
         }
         this.§"!K§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§0!@§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§0q§;
            _loc4_ = _loc3_.§5§();
            _loc5_ = _loc3_.§]h§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§>B§(_loc4_.§ !,§() || _loc5_.§ !,§());
            }
            _loc2_ = _loc2_.§5"&§;
         }
      }
      
      public function § !,§() : Boolean
      {
         return this.§"!K§;
      }
      
      public function §0!l§(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§^!t§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§0!@§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§0q§;
            _loc4_ = _loc3_.§5§();
            _loc5_ = _loc3_.§]h§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§6"F§();
            }
            _loc2_ = _loc2_.§5"&§;
         }
      }
      
      public function §1!=§() : b2FilterData
      {
         return this.§^!t§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §8!+§() : b2Fixture
      {
         return this.§%"@§;
      }
      
      public function GetUserData() : *
      {
         return this.§6r§;
      }
      
      public function §<L§(param1:*) : void
      {
         this.§6r§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§7;§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§7;§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function §3Q§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§7;§.ComputeMass(param1,this.§]!l§);
         return param1;
      }
      
      public function §1"0§(param1:Number) : void
      {
         this.§]!l§ = param1;
      }
      
      public function §`""§() : Number
      {
         return this.§]!l§;
      }
      
      public function §0o§() : Number
      {
         return this.§1!S§;
      }
      
      public function §[!<§(param1:Number) : void
      {
         this.§1!S§ = param1;
      }
      
      public function §]!g§() : Number
      {
         return this.§6"#§;
      }
      
      public function §54§(param1:Number) : void
      {
         this.§6"#§ = param1;
      }
      
      public function §["#§() : b2AABB
      {
         return this.§#M§;
      }
      
      b2internal function §?!Q§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§6r§ = param3.§6"&§;
         this.§1!S§ = param3.friction;
         this.§6"#§ = param3.restitution;
         this.m_body = param1;
         this.§%"@§ = null;
         this.§^!t§ = param3.filter.Copy();
         this.§"!K§ = param3.§9!V§;
         this.§7;§ = param3.shape.Copy();
         this.§]!l§ = param3.density;
      }
      
      b2internal function §'S§() : void
      {
         this.§7;§ = null;
      }
      
      b2internal function §'X§(param1:§0!K§, param2:b2Transform) : void
      {
         this.§7;§.ComputeAABB(this.§#M§,param2);
         this.§=!;§ = param1.§'X§(this.§#M§,this);
      }
      
      b2internal function §,K§(param1:§0!K§) : void
      {
         if(this.§=!;§ == null)
         {
            return;
         }
         param1.§,K§(this.§=!;§);
         this.§=!;§ = null;
      }
      
      b2internal function §9x§(param1:§0!K§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§=!;§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§7;§.ComputeAABB(_loc4_,param2);
         this.§7;§.ComputeAABB(_loc5_,param3);
         this.§#M§.§[!-§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§0!1§(param3.position,param2.position);
         param1.§"!,§(this.§=!;§,this.§#M§,_loc6_);
      }
   }
}
