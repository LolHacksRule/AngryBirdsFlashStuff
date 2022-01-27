package §=G§
{
   import §!r§.§?!x§;
   import §7"A§.b2Vec2;
   import §=![§.b2DistanceJointDef;
   import §=![§.b2JointDef;
   import §=![§.b2PrismaticJointDef;
   import §=![§.b2RevoluteJointDef;
   import §=![§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §=u§
   {
      
      public static const §0#1§:uint = 1;
      
      public static const §!R§:uint = 2;
      
      public static const §3"S§:uint = 3;
      
      public static const §##%§:uint = 4;
      
      public static const § !+§:uint = 5;
       
      
      private var §=B§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §8S§:Boolean;
      
      private var §>S§:Number;
      
      private var § if§:Number;
      
      private var §`!g§:Boolean;
      
      private var §;##§:Number;
      
      private var §7"O§:Boolean;
      
      private var §5"%§:Boolean;
      
      private var §'!K§:Boolean;
      
      private var §9!e§:Number;
      
      private var §%#%§:Number;
      
      private var §var §:Number;
      
      private var §3!X§:int = 0;
      
      private var § !w§:Number = 0.0;
      
      private var §2#2§:Number = 0.0;
      
      private var §-L§:Number;
      
      private var §>"e§:Boolean;
      
      private var §-#"§:Number;
      
      public function §=u§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§=B§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§8S§ = param7;
         this.§>S§ = param8;
         this.§ if§ = param9;
         this.§`!g§ = param10;
         this.§;##§ = param11;
         this.§7"O§ = param12;
         this.§'!K§ = param6;
         this.§9!e§ = param13;
         this.§>"e§ = param14;
         this.§-#"§ = param15;
         this.§5"%§ = param16;
      }
      
      public function get type() : int
      {
         return this.§=B§;
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
      
      public function get §!"<§() : Boolean
      {
         return this.§8S§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§>S§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§ if§;
      }
      
      public function get §[d§() : Boolean
      {
         return this.§`!g§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§;##§;
      }
      
      public function get §-!J§() : Boolean
      {
         return this.§7"O§;
      }
      
      public function get §^4§() : Boolean
      {
         return this.§'!K§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§9!e§;
      }
      
      public function get isBreakable() : Boolean
      {
         return this.§>"e§;
      }
      
      public function set isBreakable(param1:Boolean) : void
      {
         this.§>"e§ = param1;
      }
      
      public function get minBreakForce() : Number
      {
         return this.§-#"§;
      }
      
      public function set minBreakForce(param1:Number) : void
      {
         this.§-#"§ = param1;
      }
      
      public function get §"!F§() : Boolean
      {
         return this.§5"%§;
      }
      
      public function set §"!F§(param1:Boolean) : void
      {
         this.§5"%§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§%#%§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§%#%§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§var §;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§var § = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.§-L§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.§-L§ = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.§3!X§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.§3!X§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§ !w§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§ !w§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§2#2§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§2#2§ = param1;
      }
      
      private function §7!`§(param1:§?!x§, param2:§?!x§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§'!K§;
         _loc3_.§?"^§ = this.§2#2§;
         _loc3_.dampingRatio = this.§ !w§;
         if(this.§3!X§ == 0)
         {
            _loc3_.§?"y§.x = 0;
            _loc3_.§?"y§.y = 0;
            _loc3_.§0d§.x = 0;
            _loc3_.§0d§.y = 0;
         }
         else
         {
            if(this.§3!X§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§3!X§ == 2)
            {
               _loc3_.§?"y§.x = this.mPoint1.x;
               _loc3_.§?"y§.y = this.mPoint1.y;
               _loc3_.§0d§.x = this.mPoint2.x;
               _loc3_.§0d§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§3"s§().GetWorldPoint(_loc3_.§?"y§);
         var _loc5_:b2Vec2 = param2.§3"s§().GetWorldPoint(_loc3_.§0d§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§5"I§ = param1.§3"s§();
         _loc3_.§[!K§ = param2.§3"s§();
         return _loc3_;
      }
      
      private function § ";§(param1:§?!x§, param2:§?!x§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§'!K§;
         var _loc4_:b2Vec2 = param1.§3"s§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§3"s§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§>D§(param1.§3"s§(),param2.§3"s§(),_loc6_);
         return _loc3_;
      }
      
      private function §["j§(param1:§?!x§, param2:§?!x§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§'!K§;
         _loc3_.§>D§(param1.§3"s§(),param2.§3"s§(),param1.§3"s§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§@!I§ = this.§8S§;
         _loc3_.§"!A§ = this.§`!g§;
         _loc3_.motorSpeed = this.§;##§;
         _loc3_.§+k§ = this.§ if§;
         _loc3_.§-!%§ = this.§>S§;
         _loc3_.§9#6§ = this.§9!e§;
         return _loc3_;
      }
      
      private function §;y§(param1:§?!x§, param2:§?!x§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§'!K§;
         _loc3_.§>D§(param1.§3"s§(),param2.§3"s§(),param1.§3"s§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§%#%§,this.§var §));
         _loc3_.§@!I§ = this.§8S§;
         _loc3_.§60§ = this.§>S§;
         _loc3_.§3"v§ = this.§ if§;
         _loc3_.§"!A§ = this.§`!g§;
         _loc3_.§2#%§ = this.§9!e§;
         _loc3_.motorSpeed = this.§;##§;
         return _loc3_;
      }
      
      public function §[!?§(param1:§?!x§, param2:§?!x§) : b2JointDef
      {
         switch(this.§=B§)
         {
            case §0#1§:
               return this.§7!`§(param1,param2);
            case §!R§:
               return this.§ ";§(param1,param2);
            case §3"S§:
               return this.§["j§(param1,param2);
            case §##%§:
               return this.§;y§(param1,param2);
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
         _loc1_.limit = this.§!"<§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.motor = this.§[d§;
         _loc1_.type = this.type;
         _loc1_.backAndForth = this.§-!J§;
         _loc1_.collideConnected = this.§^4§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.index1 = this.id1;
         _loc1_.index2 = this.id2;
         _loc1_.oneWayDestroyed = this.§"!F§;
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
