package §4"F§
{
   import §2",§.b2DistanceJointDef;
   import §2",§.b2JointDef;
   import §2",§.b2PrismaticJointDef;
   import §2",§.b2RevoluteJointDef;
   import §2",§.b2WeldJointDef;
   import §6"R§.§!z§;
   import §^>§.b2Vec2;
   import flash.geom.Point;
   
   public class §["N§
   {
      
      public static const §,!N§:uint = 1;
      
      public static const §'!E§:uint = 2;
      
      public static const §^!N§:uint = 3;
      
      public static const §>!Z§:uint = 4;
      
      public static const §@"#§:uint = 5;
       
      
      private var §]m§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §%"A§:Boolean;
      
      private var §0S§:Number;
      
      private var §@!r§:Number;
      
      private var §;<§:Boolean;
      
      private var §&T§:Number;
      
      private var §case §:Boolean;
      
      private var §&" §:Boolean;
      
      private var §!f§:Boolean;
      
      private var §&#$§:Number;
      
      private var §9"w§:Number;
      
      private var §7"U§:Number;
      
      private var §+!T§:int = 0;
      
      private var §8]§:Number = 0.0;
      
      private var §`!c§:Number = 0.0;
      
      private var §""p§:Number;
      
      private var §3"c§:Boolean;
      
      private var §6!c§:Number;
      
      public function §["N§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§]m§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§%"A§ = param7;
         this.§0S§ = param8;
         this.§@!r§ = param9;
         this.§;<§ = param10;
         this.§&T§ = param11;
         this.§case § = param12;
         this.§!f§ = param6;
         this.§&#$§ = param13;
         this.§3"c§ = param14;
         this.§6!c§ = param15;
         this.§&" § = param16;
      }
      
      public function get type() : int
      {
         return this.§]m§;
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
      
      public function get §8#,§() : Boolean
      {
         return this.§%"A§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§0S§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§@!r§;
      }
      
      public function get §?o§() : Boolean
      {
         return this.§;<§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§&T§;
      }
      
      public function get §=q§() : Boolean
      {
         return this.§case §;
      }
      
      public function get §^Q§() : Boolean
      {
         return this.§!f§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§&#$§;
      }
      
      public function get isBreakable() : Boolean
      {
         return this.§3"c§;
      }
      
      public function set isBreakable(param1:Boolean) : void
      {
         this.§3"c§ = param1;
      }
      
      public function get minBreakForce() : Number
      {
         return this.§6!c§;
      }
      
      public function set minBreakForce(param1:Number) : void
      {
         this.§6!c§ = param1;
      }
      
      public function get §7!n§() : Boolean
      {
         return this.§&" §;
      }
      
      public function set §7!n§(param1:Boolean) : void
      {
         this.§&" § = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§9"w§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§9"w§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§7"U§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§7"U§ = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.§""p§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.§""p§ = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.§+!T§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.§+!T§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§8]§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§8]§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§`!c§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§`!c§ = param1;
      }
      
      private function §5!<§(param1:§!z§, param2:§!z§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§!f§;
         _loc3_.§&"C§ = this.§`!c§;
         _loc3_.dampingRatio = this.§8]§;
         if(this.§+!T§ == 0)
         {
            _loc3_.§2"g§.x = 0;
            _loc3_.§2"g§.y = 0;
            _loc3_.§#l§.x = 0;
            _loc3_.§#l§.y = 0;
         }
         else
         {
            if(this.§+!T§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§+!T§ == 2)
            {
               _loc3_.§2"g§.x = this.mPoint1.x;
               _loc3_.§2"g§.y = this.mPoint1.y;
               _loc3_.§#l§.x = this.mPoint2.x;
               _loc3_.§#l§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§?"Z§().GetWorldPoint(_loc3_.§2"g§);
         var _loc5_:b2Vec2 = param2.§?"Z§().GetWorldPoint(_loc3_.§#l§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§!!x§ = param1.§?"Z§();
         _loc3_.§%!x§ = param2.§?"Z§();
         return _loc3_;
      }
      
      private function §&Q§(param1:§!z§, param2:§!z§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§!f§;
         var _loc4_:b2Vec2 = param1.§?"Z§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§?"Z§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§8!s§(param1.§?"Z§(),param2.§?"Z§(),_loc6_);
         return _loc3_;
      }
      
      private function §4"e§(param1:§!z§, param2:§!z§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§!f§;
         _loc3_.§8!s§(param1.§?"Z§(),param2.§?"Z§(),param1.§?"Z§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§@"a§ = this.§%"A§;
         _loc3_.§<!l§ = this.§;<§;
         _loc3_.motorSpeed = this.§&T§;
         _loc3_.§&"t§ = this.§@!r§;
         _loc3_.§@k§ = this.§0S§;
         _loc3_.§ K§ = this.§&#$§;
         return _loc3_;
      }
      
      private function §"!w§(param1:§!z§, param2:§!z§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§!f§;
         _loc3_.§8!s§(param1.§?"Z§(),param2.§?"Z§(),param1.§?"Z§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§9"w§,this.§7"U§));
         _loc3_.§@"a§ = this.§%"A§;
         _loc3_.§8!n§ = this.§0S§;
         _loc3_.§,"J§ = this.§@!r§;
         _loc3_.§<!l§ = this.§;<§;
         _loc3_.§8!!§ = this.§&#$§;
         _loc3_.motorSpeed = this.§&T§;
         return _loc3_;
      }
      
      public function §6z§(param1:§!z§, param2:§!z§) : b2JointDef
      {
         switch(this.§]m§)
         {
            case §,!N§:
               return this.§5!<§(param1,param2);
            case §'!E§:
               return this.§&Q§(param1,param2);
            case §^!N§:
               return this.§4"e§(param1,param2);
            case §>!Z§:
               return this.§"!w§(param1,param2);
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
         _loc1_.limit = this.§8#,§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.motor = this.§?o§;
         _loc1_.type = this.type;
         _loc1_.backAndForth = this.§=q§;
         _loc1_.collideConnected = this.§^Q§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.index1 = this.id1;
         _loc1_.index2 = this.id2;
         _loc1_.oneWayDestroyed = this.§7!n§;
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
