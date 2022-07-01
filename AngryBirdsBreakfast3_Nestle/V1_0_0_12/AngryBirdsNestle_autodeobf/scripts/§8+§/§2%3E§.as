package §8+§
{
   import §%Z§.§+!F§;
   import §,H§.b2DistanceJointDef;
   import §,H§.b2JointDef;
   import §,H§.b2PrismaticJointDef;
   import §,H§.b2RevoluteJointDef;
   import §,H§.b2WeldJointDef;
   import §?"'§.b2Vec2;
   import flash.geom.Point;
   
   public class §2>§
   {
      
      public static const §=!e§:uint = 1;
      
      public static const §7"#§:uint = 2;
      
      public static const §!!H§:uint = 3;
      
      public static const §>!E§:uint = 4;
      
      public static const §%"#§:uint = 5;
       
      
      private var §=3§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §`a§:Boolean;
      
      private var §[!`§:Number;
      
      private var §^R§:Number;
      
      private var §1u§:Boolean;
      
      private var § !W§:Number;
      
      private var §`!r§:Boolean;
      
      private var §&!K§:Boolean;
      
      private var §2F§:Boolean;
      
      private var §>!#§:Number;
      
      private var §@!m§:Number;
      
      private var § !6§:Number;
      
      private var §"!y§:int = 0;
      
      private var §5^§:Number = 0.0;
      
      private var §+!M§:Number = 0.0;
      
      private var §3!g§:Number;
      
      private var §%U§:Boolean;
      
      private var §9"1§:Number;
      
      public function §2>§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§=3§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§`a§ = param7;
         this.§[!`§ = param8;
         this.§^R§ = param9;
         this.§1u§ = param10;
         this.§ !W§ = param11;
         this.§`!r§ = param12;
         this.§2F§ = param6;
         this.§>!#§ = param13;
         this.§%U§ = param14;
         this.§9"1§ = param15;
         this.§&!K§ = param16;
      }
      
      public function get type() : int
      {
         return this.§=3§;
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
      
      public function get §&!§() : Boolean
      {
         return this.§`a§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§[!`§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§^R§;
      }
      
      public function get §,!r§() : Boolean
      {
         return this.§1u§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§ !W§;
      }
      
      public function get §=i§() : Boolean
      {
         return this.§`!r§;
      }
      
      public function get §?!C§() : Boolean
      {
         return this.§2F§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§>!#§;
      }
      
      public function get isBreakable() : Boolean
      {
         return this.§%U§;
      }
      
      public function set isBreakable(param1:Boolean) : void
      {
         this.§%U§ = param1;
      }
      
      public function get minBreakForce() : Number
      {
         return this.§9"1§;
      }
      
      public function set minBreakForce(param1:Number) : void
      {
         this.§9"1§ = param1;
      }
      
      public function get §;!O§() : Boolean
      {
         return this.§&!K§;
      }
      
      public function set §;!O§(param1:Boolean) : void
      {
         this.§&!K§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§@!m§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§@!m§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§ !6§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§ !6§ = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.§3!g§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.§3!g§ = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.§"!y§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.§"!y§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§5^§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§5^§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§+!M§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§+!M§ = param1;
      }
      
      private function §<w§(param1:§+!F§, param2:§+!F§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§2F§;
         _loc3_.§;K§ = this.§+!M§;
         _loc3_.dampingRatio = this.§5^§;
         if(this.§"!y§ == 0)
         {
            _loc3_.§'&§.x = 0;
            _loc3_.§'&§.y = 0;
            _loc3_.§%"0§.x = 0;
            _loc3_.§%"0§.y = 0;
         }
         else
         {
            if(this.§"!y§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§"!y§ == 2)
            {
               _loc3_.§'&§.x = this.mPoint1.x;
               _loc3_.§'&§.y = this.mPoint1.y;
               _loc3_.§%"0§.x = this.mPoint2.x;
               _loc3_.§%"0§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§-!N§().GetWorldPoint(_loc3_.§'&§);
         var _loc5_:b2Vec2 = param2.§-!N§().GetWorldPoint(_loc3_.§%"0§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§'!R§ = param1.§-!N§();
         _loc3_.§@V§ = param2.§-!N§();
         return _loc3_;
      }
      
      private function §2!&§(param1:§+!F§, param2:§+!F§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§2F§;
         var _loc4_:b2Vec2 = param1.§-!N§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§-!N§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§implements§(param1.§-!N§(),param2.§-!N§(),_loc6_);
         return _loc3_;
      }
      
      private function §^!g§(param1:§+!F§, param2:§+!F§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§2F§;
         _loc3_.§implements§(param1.§-!N§(),param2.§-!N§(),param1.§-!N§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§?r§ = this.§`a§;
         _loc3_.§<D§ = this.§1u§;
         _loc3_.motorSpeed = this.§ !W§;
         _loc3_.§^p§ = this.§^R§;
         _loc3_.§1!]§ = this.§[!`§;
         _loc3_.§#3§ = this.§>!#§;
         return _loc3_;
      }
      
      private function §]!q§(param1:§+!F§, param2:§+!F§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§2F§;
         _loc3_.§implements§(param1.§-!N§(),param2.§-!N§(),param1.§-!N§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§@!m§,this.§ !6§));
         _loc3_.§?r§ = this.§`a§;
         _loc3_.§6"5§ = this.§[!`§;
         _loc3_.§=" § = this.§^R§;
         _loc3_.§<D§ = this.§1u§;
         _loc3_.§7"!§ = this.§>!#§;
         _loc3_.motorSpeed = this.§ !W§;
         return _loc3_;
      }
      
      public function §+q§(param1:§+!F§, param2:§+!F§) : b2JointDef
      {
         switch(this.§=3§)
         {
            case §=!e§:
               return this.§<w§(param1,param2);
            case §7"#§:
               return this.§2!&§(param1,param2);
            case §!!H§:
               return this.§^!g§(param1,param2);
            case §>!E§:
               return this.§]!q§(param1,param2);
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
         _loc1_.limit = this.§&!§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.motor = this.§,!r§;
         _loc1_.type = this.type;
         _loc1_.backAndForth = this.§=i§;
         _loc1_.collideConnected = this.§?!C§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.index1 = this.id1;
         _loc1_.index2 = this.id2;
         _loc1_.oneWayDestroyed = this.§;!O§;
         _loc1_.coordinateType = this.coordinateType;
         _loc1_.dampingRatio = this.dampingRatio;
         _loc1_.frequency = this.frequency;
         _loc1_.isBreakable = this.isBreakable;
         if(!isNaN(this.annihilationTime))
         {
            _loc1_.annihilationTime = this.annihilationTime;
         }
         if(!isNaN(this.minBreakForce))
         {
            _loc1_.minBreakForce = this.minBreakForce;
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
