package §>M§
{
   import § ! §.b2DistanceJointDef;
   import § ! §.b2JointDef;
   import § ! §.b2MouseJointDef;
   import § ! §.b2PrismaticJointDef;
   import § ! §.b2RevoluteJointDef;
   import § ! §.b2WeldJointDef;
   import § "%§.b2Vec2;
   import §8§.§,§;
   import flash.geom.Point;
   
   public class §3!1§
   {
      
      public static const §1#L§:uint = 1;
      
      public static const §=#3§:uint = 2;
      
      public static const §8#z§:uint = 3;
      
      public static const §]"q§:uint = 4;
      
      public static const §8!S§:uint = 5;
      
      public static const §1$5§:uint = 6;
       
      
      private var §"#7§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §21§:Boolean;
      
      private var §,"&§:Number;
      
      private var §^!q§:Number;
      
      private var §<!A§:Boolean;
      
      private var §[#q§:Number;
      
      private var §-"a§:Boolean;
      
      private var §[!w§:Boolean;
      
      private var §>"X§:Boolean;
      
      private var §]#4§:Number;
      
      private var §5"A§:Number;
      
      private var §=H§:Number;
      
      private var §<#5§:int = 0;
      
      private var §-"N§:Number = 0.0;
      
      private var §+#"§:Number = 0.0;
      
      private var §6!c§:Number = 0;
      
      private var §]`§:Number = 0;
      
      private var §5f§:Boolean = false;
      
      private var §3"K§:Boolean = false;
      
      private var §-"p§:Number = 0.0;
      
      private var §5"r§:Boolean = false;
      
      public function §3!1§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false, param17:int = 0, param18:Number = 0.0, param19:Number = 0.0, param20:Boolean = false, param21:Number = 0, param22:Number = 0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§"#7§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§21§ = param7;
         this.§,"&§ = param8;
         this.§^!q§ = param9;
         this.§<!A§ = param10;
         this.§[#q§ = param11;
         this.§-"a§ = param12;
         this.§>"X§ = param6;
         this.§]#4§ = param13;
         this.§5f§ = param14;
         this.§-"p§ = param15;
         this.§[!w§ = param16;
         this.§<#5§ = param17;
         this.§-"N§ = param18;
         this.§+#"§ = param19;
         this.§3"K§ = param20;
         this.§6!c§ = param21;
         this.§]`§ = param22;
      }
      
      public function get type() : int
      {
         return this.§"#7§;
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get §%!>§() : Boolean
      {
         return this.§21§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§,"&§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§^!q§;
      }
      
      public function get §;#S§() : Boolean
      {
         return this.§<!A§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§[#q§;
      }
      
      public function get §^v§() : Boolean
      {
         return this.§-"a§;
      }
      
      public function get §9L§() : Boolean
      {
         return this.§>"X§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§]#4§;
      }
      
      public function get breakable() : Boolean
      {
         return this.§5f§;
      }
      
      public function set breakable(param1:Boolean) : void
      {
         this.§5f§ = param1;
      }
      
      public function get destroyChild() : Boolean
      {
         return this.§3"K§;
      }
      
      public function set destroyChild(param1:Boolean) : void
      {
         this.§3"K§ = param1;
      }
      
      public function get breakForce() : Number
      {
         return this.§-"p§;
      }
      
      public function set breakForce(param1:Number) : void
      {
         this.§-"p§ = param1;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§[!w§;
      }
      
      public function set isOneWayDestroyed(param1:Boolean) : void
      {
         this.§[!w§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§5"A§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§5"A§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§=H§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§=H§ = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.§6!c§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.§6!c§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§]`§;
      }
      
      public function set distanceToDestroyChild(param1:Number) : void
      {
         this.§]`§ = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.§<#5§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.§<#5§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§-"N§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§-"N§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§+#"§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§+#"§ = param1;
      }
      
      public function get §2'§() : Boolean
      {
         return this.§5"r§;
      }
      
      public function set §2'§(param1:Boolean) : void
      {
         this.§5"r§ = param1;
      }
      
      private function §]#K§(param1:§,#5§, param2:§,#5§) : b2JointDef
      {
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§>"X§;
         _loc3_.§!Q§ = this.§+#"§;
         _loc3_.dampingRatio = this.§-"N§;
         if(this.§<#5§ == 0)
         {
            _loc3_.§#"z§.x = 0;
            _loc3_.§#"z§.y = 0;
            _loc3_.§>#C§.x = 0;
            _loc3_.§>#C§.y = 0;
         }
         else if(this.§<#5§ == 1)
         {
            _loc6_ = param1.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc7_ = param2.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc8_ = new b2Vec2(this.mPoint1.x - _loc6_.x,this.mPoint1.y - _loc6_.y);
            _loc9_ = new b2Vec2(this.mPoint2.x - _loc7_.x,this.mPoint2.y - _loc7_.y);
            _loc3_.§#"z§ = _loc8_;
            _loc3_.§>#C§ = _loc9_;
         }
         else if(this.§<#5§ == 2)
         {
            _loc3_.§#"z§.x = this.mPoint1.x;
            _loc3_.§#"z§.y = this.mPoint1.y;
            _loc3_.§>#C§.x = this.mPoint2.x;
            _loc3_.§>#C§.y = this.mPoint2.y;
         }
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(_loc3_.§#"z§);
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(_loc3_.§>#C§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§'§ = param1.getBody();
         _loc3_.§>!2§ = param2.getBody();
         return _loc3_;
      }
      
      private function §5"G§(param1:§,#5§, param2:§,#5§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§>"X§;
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§?#W§(param1.getBody(),param2.getBody(),_loc6_);
         return _loc3_;
      }
      
      private function §5#g§(param1:§,#5§, param2:§,#5§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§>"X§;
         _loc3_.§?#W§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§?$&§ = this.§21§;
         _loc3_.§!#6§ = this.§<!A§;
         _loc3_.motorSpeed = this.§[#q§;
         _loc3_.§ # § = this.§^!q§;
         _loc3_.§6c§ = this.§,"&§;
         _loc3_.set = this.§]#4§;
         return _loc3_;
      }
      
      private function §"#E§(param1:§,#5§, param2:§,#5§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§>"X§;
         var _loc4_:Number = 1;
         var _loc5_:Number = 0;
         if(!isNaN(this.axisX))
         {
            _loc4_ = this.axisX;
         }
         if(!isNaN(this.axisY))
         {
            _loc5_ = this.axisY;
         }
         _loc3_.§?#W§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(_loc4_,_loc5_));
         _loc3_.§?$&§ = this.§21§;
         _loc3_.§4"w§ = this.§,"&§;
         _loc3_.§-#b§ = this.§^!q§;
         _loc3_.§!#6§ = this.§<!A§;
         _loc3_.§-!Q§ = this.§]#4§;
         _loc3_.motorSpeed = this.§[#q§;
         return _loc3_;
      }
      
      private function §]"Y§(param1:§,#5§, param2:§,#5§) : b2JointDef
      {
         var _loc3_:b2MouseJointDef = new b2MouseJointDef();
         _loc3_.§'§ = param2.getBody().GetWorld().§9W§();
         _loc3_.§>!2§ = param2.getBody();
         _loc3_.target.Set(param2.getBody().GetPosition().x,param2.getBody().GetPosition().y);
         _loc3_.collideConnected = this.§>"X§;
         _loc3_.§'!@§ = 1000000;
         return _loc3_;
      }
      
      public function §>&§(param1:§,#5§, param2:§,#5§) : b2JointDef
      {
         switch(this.§"#7§)
         {
            case §1#L§:
               return this.§]#K§(param1,param2);
            case §=#3§:
               return this.§5"G§(param1,param2);
            case §8#z§:
               return this.§5#g§(param1,param2);
            case §]"q§:
               return this.§"#E§(param1,param2);
            case §1$5§:
               return this.§]"Y§(param1,param2);
            default:
               return null;
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.x1 = this.point1.x;
         _loc1_.y1 = this.point1.y;
         _loc1_.x2 = this.point2.x;
         _loc1_.y2 = this.point2.y;
         _loc1_.motorSpeed = this.motorSpeed;
         _loc1_.limit = this.§%!>§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.motor = this.§;#S§;
         _loc1_.type = this.type;
         _loc1_.backAndForth = this.§^v§;
         _loc1_.collideConnected = this.§9L§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.index1 = this.id1;
         _loc1_.index2 = this.id2;
         _loc1_.isOneWayDestroyed = this.isOneWayDestroyed;
         _loc1_.coordinateType = this.coordinateType;
         _loc1_.dampingRatio = this.dampingRatio;
         _loc1_.frequency = this.frequency;
         _loc1_.breakable = this.breakable;
         _loc1_.destroyChild = this.destroyChild;
         if(!isNaN(this.annihilationTime))
         {
            _loc1_.annihilationTime = this.annihilationTime;
         }
         if(!isNaN(this.distanceToDestroyChild))
         {
            _loc1_.distanceToDestroyChild = this.distanceToDestroyChild;
         }
         if(!isNaN(this.breakForce))
         {
            _loc1_.breakForce = this.breakForce;
         }
         if(!isNaN(this.axisX))
         {
            _loc1_.axisX = this.axisX;
         }
         if(!isNaN(this.axisY))
         {
            _loc1_.axisY = this.axisY;
         }
         return _loc1_;
      }
   }
}
