package §<"B§
{
   import §1!2§.b2DistanceJointDef;
   import §1!2§.b2JointDef;
   import §1!2§.b2PrismaticJointDef;
   import §1!2§.b2RevoluteJointDef;
   import §1!2§.b2WeldJointDef;
   import §7P§.§7B§;
   import §[R§.b2Vec2;
   import flash.geom.Point;
   
   public class §-#'§
   {
      
      public static const §5&§:uint = 1;
      
      public static const §-!=§:uint = 2;
      
      public static const §>"z§:uint = 3;
      
      public static const §,"?§:uint = 4;
      
      public static const §use §:uint = 5;
       
      
      private var §;"-§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §`"A§:Boolean;
      
      private var §9m§:Number;
      
      private var §8!o§:Number;
      
      private var §-<§:Boolean;
      
      private var §3d§:Number;
      
      private var §=p§:Boolean;
      
      private var §#"]§:Boolean;
      
      private var §`"l§:Boolean;
      
      private var §"!R§:Number;
      
      private var §,"J§:Number;
      
      private var §-U§:Number;
      
      private var §^#§:int = 0;
      
      private var §<"'§:Number = 0.0;
      
      private var §+!X§:Number = 0.0;
      
      private var §<"e§:Number;
      
      private var §6l§:Boolean;
      
      private var §'"T§:Number;
      
      public function §-#'§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§;"-§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§`"A§ = param7;
         this.§9m§ = param8;
         this.§8!o§ = param9;
         this.§-<§ = param10;
         this.§3d§ = param11;
         this.§=p§ = param12;
         this.§`"l§ = param6;
         this.§"!R§ = param13;
         this.§6l§ = param14;
         this.§'"T§ = param15;
         this.§#"]§ = param16;
      }
      
      public function get type() : int
      {
         return this.§;"-§;
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
      
      public function get §9"r§() : Boolean
      {
         return this.§`"A§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§9m§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§8!o§;
      }
      
      public function get §?"B§() : Boolean
      {
         return this.§-<§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§3d§;
      }
      
      public function get §@[§() : Boolean
      {
         return this.§=p§;
      }
      
      public function get §4C§() : Boolean
      {
         return this.§`"l§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§"!R§;
      }
      
      public function get isBreakable() : Boolean
      {
         return this.§6l§;
      }
      
      public function set isBreakable(param1:Boolean) : void
      {
         this.§6l§ = param1;
      }
      
      public function get minBreakForce() : Number
      {
         return this.§'"T§;
      }
      
      public function set minBreakForce(param1:Number) : void
      {
         this.§'"T§ = param1;
      }
      
      public function get §-"A§() : Boolean
      {
         return this.§#"]§;
      }
      
      public function set §-"A§(param1:Boolean) : void
      {
         this.§#"]§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§,"J§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§,"J§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§-U§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§-U§ = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.§<"e§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.§<"e§ = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.§^#§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.§^#§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§<"'§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§<"'§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§+!X§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§+!X§ = param1;
      }
      
      private function §&"n§(param1:§7B§, param2:§7B§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§`"l§;
         _loc3_.§""u§ = this.§+!X§;
         _loc3_.dampingRatio = this.§<"'§;
         if(this.§^#§ == 0)
         {
            _loc3_.§!"4§.x = 0;
            _loc3_.§!"4§.y = 0;
            _loc3_.§#"B§.x = 0;
            _loc3_.§#"B§.y = 0;
         }
         else
         {
            if(this.§^#§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§^#§ == 2)
            {
               _loc3_.§!"4§.x = this.mPoint1.x;
               _loc3_.§!"4§.y = this.mPoint1.y;
               _loc3_.§#"B§.x = this.mPoint2.x;
               _loc3_.§#"B§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§3!t§().GetWorldPoint(_loc3_.§!"4§);
         var _loc5_:b2Vec2 = param2.§3!t§().GetWorldPoint(_loc3_.§#"B§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§9"P§ = param1.§3!t§();
         _loc3_.§continue§ = param2.§3!t§();
         return _loc3_;
      }
      
      private function §6+§(param1:§7B§, param2:§7B§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§`"l§;
         var _loc4_:b2Vec2 = param1.§3!t§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§3!t§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§8#5§(param1.§3!t§(),param2.§3!t§(),_loc6_);
         return _loc3_;
      }
      
      private function §,o§(param1:§7B§, param2:§7B§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§`"l§;
         _loc3_.§8#5§(param1.§3!t§(),param2.§3!t§(),param1.§3!t§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§#d§ = this.§`"A§;
         _loc3_.§!#G§ = this.§-<§;
         _loc3_.motorSpeed = this.§3d§;
         _loc3_.§<!y§ = this.§8!o§;
         _loc3_.§ "x§ = this.§9m§;
         _loc3_.§?"Z§ = this.§"!R§;
         return _loc3_;
      }
      
      private function §#"C§(param1:§7B§, param2:§7B§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§`"l§;
         _loc3_.§8#5§(param1.§3!t§(),param2.§3!t§(),param1.§3!t§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§,"J§,this.§-U§));
         _loc3_.§#d§ = this.§`"A§;
         _loc3_.§2!@§ = this.§9m§;
         _loc3_.§5!F§ = this.§8!o§;
         _loc3_.§!#G§ = this.§-<§;
         _loc3_.§0A§ = this.§"!R§;
         _loc3_.motorSpeed = this.§3d§;
         return _loc3_;
      }
      
      public function §!!0§(param1:§7B§, param2:§7B§) : b2JointDef
      {
         switch(this.§;"-§)
         {
            case §5&§:
               return this.§&"n§(param1,param2);
            case §-!=§:
               return this.§6+§(param1,param2);
            case §>"z§:
               return this.§,o§(param1,param2);
            case §,"?§:
               return this.§#"C§(param1,param2);
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
         _loc1_.limit = this.§9"r§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.motor = this.§?"B§;
         _loc1_.type = this.type;
         _loc1_.backAndForth = this.§@[§;
         _loc1_.collideConnected = this.§4C§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.index1 = this.id1;
         _loc1_.index2 = this.id2;
         _loc1_.oneWayDestroyed = this.§-"A§;
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
