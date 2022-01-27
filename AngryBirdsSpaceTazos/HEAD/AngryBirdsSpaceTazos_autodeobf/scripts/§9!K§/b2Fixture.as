package §9!K§
{
   import §'!a§.b2internal;
   import §4!W§.b2MassData;
   import §4!W§.b2Shape;
   import §6!n§.b2Math;
   import §6!n§.b2Transform;
   import §6!n§.b2Vec2;
   import §;!Z§.§#"D§;
   import §;!Z§.b2AABB;
   import §;!Z§.b2RayCastInput;
   import §;!Z§.b2RayCastOutput;
   import §>6§.b2Contact;
   import §>6§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §-"$§:b2MassData;
      
      b2internal var §7j§:b2AABB;
      
      b2internal var §"!9§:Number;
      
      b2internal var §&!6§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §^!F§:b2Shape;
      
      b2internal var §<q§:Number;
      
      b2internal var §`!"§:Number;
      
      b2internal var §04§;
      
      b2internal var §1!M§:b2FilterData;
      
      b2internal var §3"5§:Boolean;
      
      b2internal var §9=§;
      
      public function b2Fixture()
      {
         this.§1!M§ = new b2FilterData();
         super();
         this.§7j§ = new b2AABB();
         this.§9=§ = null;
         this.m_body = null;
         this.§&!6§ = null;
         this.§^!F§ = null;
         this.§"!9§ = 0;
         this.§<q§ = 0;
         this.§`!"§ = 0;
      }
      
      public function §finally§() : int
      {
         return this.§^!F§.§finally§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§^!F§;
      }
      
      public function §""=§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§3"5§ == param1)
         {
            return;
         }
         this.§3"5§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§6!o§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§ 5§;
            _loc4_ = _loc3_.§[!_§();
            _loc5_ = _loc3_.§6!6§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§""=§(_loc4_.§7!5§() || _loc5_.§7!5§());
            }
            _loc2_ = _loc2_.§7$§;
         }
      }
      
      public function §7!5§() : Boolean
      {
         return this.§3"5§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§1!M§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§6!o§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§ 5§;
            _loc4_ = _loc3_.§[!_§();
            _loc5_ = _loc3_.§6!6§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§="1§();
            }
            _loc2_ = _loc2_.§7$§;
         }
      }
      
      public function §#!I§() : b2FilterData
      {
         return this.§1!M§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §1§() : b2Fixture
      {
         return this.§&!6§;
      }
      
      public function GetUserData() : *
      {
         return this.§9=§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§9=§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§^!F§.TestPoint(this.m_body.§]!>§(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§^!F§.RayCast(param1,param2,this.m_body.§]!>§());
      }
      
      public function §try§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§^!F§.ComputeMass(param1,this.§"!9§);
         return param1;
      }
      
      public function §81§(param1:Number) : void
      {
         this.§"!9§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§"!9§;
      }
      
      public function §+""§() : Number
      {
         return this.§<q§;
      }
      
      public function §4'§(param1:Number) : void
      {
         this.§<q§ = param1;
      }
      
      public function §3!s§() : Number
      {
         return this.§`!"§;
      }
      
      public function §#!r§(param1:Number) : void
      {
         this.§`!"§ = param1;
      }
      
      public function §0!u§() : b2AABB
      {
         return this.§7j§;
      }
      
      b2internal function §7;§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§9=§ = param3.§??§;
         this.§<q§ = param3.friction;
         this.§`!"§ = param3.restitution;
         this.m_body = param1;
         this.§&!6§ = null;
         this.§1!M§ = param3.filter.Copy();
         this.§3"5§ = param3.§,"3§;
         this.§^!F§ = param3.shape.Copy();
         this.§"!9§ = param3.density;
      }
      
      b2internal function §7"'§() : void
      {
         this.§^!F§ = null;
      }
      
      b2internal function §0!E§(param1:§#"D§, param2:b2Transform) : void
      {
         this.§^!F§.ComputeAABB(this.§7j§,param2);
         this.§04§ = param1.§0!E§(this.§7j§,this);
      }
      
      b2internal function §>!u§(param1:§#"D§) : void
      {
         if(this.§04§ == null)
         {
            return;
         }
         param1.§>!u§(this.§04§);
         this.§04§ = null;
      }
      
      b2internal function §+!x§(param1:§#"D§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§04§)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.§^!F§.ComputeAABB(_loc4_,param2);
         this.§^!F§.ComputeAABB(_loc5_,param3);
         this.§7j§.§2!w§(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.§%!q§(param3.position,param2.position);
         param1.§8-§(this.§04§,this.§7j§,_loc6_);
      }
   }
}
