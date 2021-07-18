package §,#L§
{
   import §0m§.b2Vec2;
   import §@!O§.b2DistanceJointDef;
   import §@!O§.b2JointDef;
   import §@!O§.b2MouseJointDef;
   import §@!O§.b2PrismaticJointDef;
   import §@!O§.b2RevoluteJointDef;
   import §@!O§.b2WeldJointDef;
   import §[#a§.§<"H§;
   import flash.geom.Point;
   
   public class §8"y§
   {
      
      public static const §0$9§:uint = 1;
      
      public static const §!![§:uint = 2;
      
      public static const §6#N§:uint = 3;
      
      public static const §?#§:uint = 4;
      
      public static const §[!J§:uint = 5;
      
      public static const §,"h§:uint = 6;
       
      
      private var §+#w§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §'M§:Boolean;
      
      private var §5!G§:Number;
      
      private var §>!-§:Number;
      
      private var §,D§:Boolean;
      
      private var §9S§:Number;
      
      private var §8!o§:Boolean;
      
      private var §=!h§:Boolean;
      
      private var §?,§:Boolean;
      
      private var §?"t§:Number;
      
      private var §`#u§:Number;
      
      private var §&;§:Number;
      
      private var §[m§:int = 0;
      
      private var §##X§:Number = 0.0;
      
      private var §+"v§:Number = 0.0;
      
      private var §7#b§:Number = 0;
      
      private var §2$1§:Number = 0;
      
      private var §!#4§:Boolean = false;
      
      private var §70§:Boolean = false;
      
      private var §7"?§:Number = 0.0;
      
      public function §8"y§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false, param17:int = 0, param18:Number = 0.0, param19:Number = 0.0, param20:Boolean = false, param21:Number = 0, param22:Number = 0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§+#w§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§'M§ = param7;
         this.§5!G§ = param8;
         this.§>!-§ = param9;
         this.§,D§ = param10;
         this.§9S§ = param11;
         this.§8!o§ = param12;
         this.§?,§ = param6;
         this.§?"t§ = param13;
         this.§!#4§ = param14;
         this.§7"?§ = param15;
         this.§=!h§ = param16;
         this.§[m§ = param17;
         this.§##X§ = param18;
         this.§+"v§ = param19;
         this.§70§ = param20;
         this.§7#b§ = param21;
         this.§2$1§ = param22;
      }
      
      public function get type() : int
      {
         return this.§+#w§;
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
      
      public function get §=I§() : Boolean
      {
         return this.§'M§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§5!G§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§>!-§;
      }
      
      public function get §`$§() : Boolean
      {
         return this.§,D§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§9S§;
      }
      
      public function get §83§() : Boolean
      {
         return this.§8!o§;
      }
      
      public function get §%"_§() : Boolean
      {
         return this.§?,§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§?"t§;
      }
      
      public function get breakable() : Boolean
      {
         return this.§!#4§;
      }
      
      public function set breakable(param1:Boolean) : void
      {
         this.§!#4§ = param1;
      }
      
      public function get destroyChild() : Boolean
      {
         return this.§70§;
      }
      
      public function set destroyChild(param1:Boolean) : void
      {
         this.§70§ = param1;
      }
      
      public function get breakForce() : Number
      {
         return this.§7"?§;
      }
      
      public function set breakForce(param1:Number) : void
      {
         this.§7"?§ = param1;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§=!h§;
      }
      
      public function set isOneWayDestroyed(param1:Boolean) : void
      {
         this.§=!h§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§`#u§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§`#u§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§&;§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§&;§ = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.§7#b§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.§7#b§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§2$1§;
      }
      
      public function set distanceToDestroyChild(param1:Number) : void
      {
         this.§2$1§ = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.§[m§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.§[m§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§##X§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§##X§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§+"v§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§+"v§ = param1;
      }
      
      private function §0!W§(param1:§<"H§, param2:§<"H§) : b2JointDef
      {
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§?,§;
         _loc3_.§3";§ = this.§+"v§;
         _loc3_.dampingRatio = this.§##X§;
         if(this.§[m§ == 0)
         {
            _loc3_.§@2§.x = 0;
            _loc3_.§@2§.y = 0;
            _loc3_.§7#$§.x = 0;
            _loc3_.§7#$§.y = 0;
         }
         else if(this.§[m§ == 1)
         {
            _loc6_ = param1.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc7_ = param2.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc8_ = new b2Vec2(this.mPoint1.x - _loc6_.x,this.mPoint1.y - _loc6_.y);
            _loc9_ = new b2Vec2(this.mPoint2.x - _loc7_.x,this.mPoint2.y - _loc7_.y);
            _loc3_.§@2§ = _loc8_;
            _loc3_.§7#$§ = _loc9_;
         }
         else if(this.§[m§ == 2)
         {
            _loc3_.§@2§.x = this.mPoint1.x;
            _loc3_.§@2§.y = this.mPoint1.y;
            _loc3_.§7#$§.x = this.mPoint2.x;
            _loc3_.§7#$§.y = this.mPoint2.y;
         }
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(_loc3_.§@2§);
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(_loc3_.§7#$§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§9"Z§ = param1.getBody();
         _loc3_.§'!Y§ = param2.getBody();
         return _loc3_;
      }
      
      private function §2!C§(param1:§<"H§, param2:§<"H§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§?,§;
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§1[§(param1.getBody(),param2.getBody(),_loc6_);
         return _loc3_;
      }
      
      private function §0[§(param1:§<"H§, param2:§<"H§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§?,§;
         _loc3_.§1[§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§`"R§ = this.§'M§;
         _loc3_.§"Y§ = this.§,D§;
         _loc3_.motorSpeed = this.§9S§;
         _loc3_.§4$'§ = this.§>!-§;
         _loc3_.§"#j§ = this.§5!G§;
         _loc3_.§!!j§ = this.§?"t§;
         return _loc3_;
      }
      
      private function §]#g§(param1:§<"H§, param2:§<"H§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§?,§;
         _loc3_.§1[§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§`#u§,this.§&;§));
         _loc3_.§`"R§ = this.§'M§;
         _loc3_.§#-§ = this.§5!G§;
         _loc3_.§-!p§ = this.§>!-§;
         _loc3_.§"Y§ = this.§,D§;
         _loc3_.§!!>§ = this.§?"t§;
         _loc3_.motorSpeed = this.§9S§;
         return _loc3_;
      }
      
      private function §2!r§(param1:§<"H§, param2:§<"H§) : b2JointDef
      {
         var _loc3_:b2MouseJointDef = new b2MouseJointDef();
         _loc3_.§9"Z§ = param2.getBody().§[$9§().§`"2§();
         _loc3_.§'!Y§ = param2.getBody();
         _loc3_.target.Set(param2.getBody().GetPosition().x,param2.getBody().GetPosition().y);
         _loc3_.collideConnected = this.§?,§;
         _loc3_.§^#L§ = 1000000;
         return _loc3_;
      }
      
      public function §1Z§(param1:§<"H§, param2:§<"H§) : b2JointDef
      {
         switch(this.§+#w§)
         {
            case §0$9§:
               return this.§0!W§(param1,param2);
            case §!![§:
               return this.§2!C§(param1,param2);
            case §6#N§:
               return this.§0[§(param1,param2);
            case §?#§:
               return this.§]#g§(param1,param2);
            case §,"h§:
               return this.§2!r§(param1,param2);
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
         _loc1_.limit = this.§=I§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.motor = this.§`$§;
         _loc1_.type = this.type;
         _loc1_.backAndForth = this.§83§;
         _loc1_.collideConnected = this.§%"_§;
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
