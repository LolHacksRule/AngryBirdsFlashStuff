package §'#K§
{
   import §&$+§.b2internal;
   import §,#E§.§ #Z§;
   import §,#E§.b2AABB;
   import §,#E§.b2RayCastInput;
   import §,#E§.b2RayCastOutput;
   import §-#F§.b2Contact;
   import §-#F§.b2ContactEdge;
   import §04§.b2Math;
   import §04§.b2Transform;
   import §04§.b2Vec2;
   import §1#I§.b2MassData;
   import §1#I§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var §2"3§:b2MassData;
      
      b2internal var t1_aabb:b2AABB;
      
      b2internal var t2_aabb:b2AABB;
      
      b2internal var §8!$§:b2AABB;
      
      b2internal var §-"J§:Number;
      
      b2internal var §>d§:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var §^"$§:b2Shape;
      
      b2internal var §"" §:Number;
      
      b2internal var §?#s§:Number;
      
      b2internal var §]"Q§;
      
      b2internal var §0$=§:b2FilterData;
      
      b2internal var §`H§:Boolean;
      
      b2internal var §5!3§;
      
      public function b2Fixture()
      {
         this.§0$=§ = new b2FilterData();
         super();
         this.§8!$§ = new b2AABB();
         this.§5!3§ = null;
         this.m_body = null;
         this.§>d§ = null;
         this.§^"$§ = null;
         this.§-"J§ = 0;
         this.§"" § = 0;
         this.§?#s§ = 0;
      }
      
      public function §<!e§() : int
      {
         return this.§^"$§.§<!e§();
      }
      
      public function GetShape() : b2Shape
      {
         return this.§^"$§;
      }
      
      public function §`R§(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.§`H§ == param1)
         {
            return;
         }
         this.§`H§ = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§^"o§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§>#I§;
            _loc4_ = _loc3_.§5!s§();
            _loc5_ = _loc3_.§5!W§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§`R§(_loc4_.§>T§() || _loc5_.§>T§());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §>T§() : Boolean
      {
         return this.§`H§;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.§0$=§ = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.§^"o§();
         while(_loc2_)
         {
            _loc3_ = _loc2_.§>#I§;
            _loc4_ = _loc3_.§5!s§();
            _loc5_ = _loc3_.§5!W§();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.§5$5§();
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function GetFilterData() : b2FilterData
      {
         return this.§0$=§.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function §4!7§() : b2Fixture
      {
         return this.§>d§;
      }
      
      public function GetUserData() : *
      {
         return this.§5!3§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§5!3§ = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.§^"$§.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.§^"$§.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function §`"J§(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.§^"$§.ComputeMass(param1,this.§-"J§);
         return param1;
      }
      
      public function SetDensity(param1:Number) : void
      {
         this.§-"J§ = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.§-"J§;
      }
      
      public function GetFriction() : Number
      {
         return this.§"" §;
      }
      
      public function SetFriction(param1:Number) : void
      {
         this.§"" § = param1;
      }
      
      public function GetRestitution() : Number
      {
         return this.§?#s§;
      }
      
      public function SetRestitution(param1:Number) : void
      {
         this.§?#s§ = param1;
      }
      
      public function §^#3§() : b2AABB
      {
         return this.§8!$§;
      }
      
      b2internal function §9#s§(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.§5!3§ = param3.§9!6§;
         this.§"" § = param3.friction;
         this.§?#s§ = param3.restitution;
         this.m_body = param1;
         this.§>d§ = null;
         this.§0$=§ = param3.filter.Copy();
         this.§`H§ = param3.§#"U§;
         this.§^"$§ = param3.shape.Copy();
         this.§-"J§ = param3.density;
      }
      
      b2internal function §,#?§() : void
      {
         this.§^"$§ = null;
      }
      
      b2internal function §7#0§(param1:§ #Z§, param2:b2Transform) : void
      {
         this.§^"$§.ComputeAABB(this.§8!$§,param2);
         this.§]"Q§ = param1.§7#0§(this.§8!$§,this);
      }
      
      b2internal function §,7§(param1:§ #Z§) : void
      {
         if(this.§]"Q§ == null)
         {
            return;
         }
         param1.§,7§(this.§]"Q§);
         this.§]"Q§ = null;
      }
      
      b2internal function §[q§(param1:§ #Z§, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.§]"Q§)
         {
            return;
         }
         if(this.t1_aabb == null)
         {
            this.t1_aabb = new b2AABB();
         }
         else
         {
            this.t1_aabb.§##N§.x = 0;
            this.t1_aabb.§##N§.y = 0;
            this.t1_aabb.§#r§.x = 0;
            this.t1_aabb.§#r§.y = 0;
         }
         if(this.t2_aabb == null)
         {
            this.t2_aabb = new b2AABB();
         }
         else
         {
            this.t2_aabb.§##N§.x = 0;
            this.t2_aabb.§##N§.y = 0;
            this.t2_aabb.§#r§.x = 0;
            this.t2_aabb.§#r§.y = 0;
         }
         this.§^"$§.ComputeAABB(this.t1_aabb,param2);
         this.§^"$§.ComputeAABB(this.t2_aabb,param3);
         this.§8!$§.§!!+§(this.t1_aabb,this.t2_aabb);
         var _loc4_:b2Vec2 = b2Math.§7q§(param3.position,param2.position);
         param1.§2"4§(this.§]"Q§,this.§8!$§,_loc4_);
      }
   }
}
