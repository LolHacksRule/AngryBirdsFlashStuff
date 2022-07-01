package §0N§
{
   import §@!"§.§#!v§;
   import §@!E§.b2Vec2;
   import §@h§.b2DistanceJointDef;
   import §@h§.b2JointDef;
   import §@h§.b2PrismaticJointDef;
   import §@h§.b2RevoluteJointDef;
   import §@h§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §-C§
   {
      
      public static const §5!G§:uint = 1;
      
      public static const §9!M§:uint = 2;
      
      public static const §6`§:uint = 3;
      
      public static const §0g§:uint = 4;
      
      public static const §-!R§:uint = 5;
       
      
      private var §#!-§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §"!M§:Boolean;
      
      private var §<!=§:Number;
      
      private var §"B§:Number;
      
      private var §'b§:Boolean;
      
      private var §;"0§:Number;
      
      private var §^!g§:Boolean;
      
      private var §%l§:Boolean;
      
      private var §'"#§:Boolean;
      
      private var §4"6§:Number;
      
      private var §@"0§:Number;
      
      private var §4%§:Number;
      
      private var §9"7§:int = 0;
      
      private var §<" §:Number = 0.0;
      
      private var §0+§:Number = 0.0;
      
      private var §;!E§:Number;
      
      private var §9!L§:Boolean;
      
      private var §"""§:Number;
      
      public function §-C§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§#!-§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§"!M§ = param7;
         this.§<!=§ = param8;
         this.§"B§ = param9;
         this.§'b§ = param10;
         this.§;"0§ = param11;
         this.§^!g§ = param12;
         this.§'"#§ = param6;
         this.§4"6§ = param13;
         this.§9!L§ = param14;
         this.§"""§ = param15;
         this.§%l§ = param16;
      }
      
      public function get type() : int
      {
         return this.§#!-§;
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
      
      public function get §,i§() : Boolean
      {
         return this.§"!M§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§<!=§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§"B§;
      }
      
      public function get §4!r§() : Boolean
      {
         return this.§'b§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§;"0§;
      }
      
      public function get §`!]§() : Boolean
      {
         return this.§^!g§;
      }
      
      public function get §>!f§() : Boolean
      {
         return this.§'"#§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§4"6§;
      }
      
      public function get isBreakable() : Boolean
      {
         return this.§9!L§;
      }
      
      public function set isBreakable(param1:Boolean) : void
      {
         this.§9!L§ = param1;
      }
      
      public function get minBreakForce() : Number
      {
         return this.§"""§;
      }
      
      public function set minBreakForce(param1:Number) : void
      {
         this.§"""§ = param1;
      }
      
      public function get §#!j§() : Boolean
      {
         return this.§%l§;
      }
      
      public function set §#!j§(param1:Boolean) : void
      {
         this.§%l§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§@"0§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§@"0§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§4%§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§4%§ = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.§;!E§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.§;!E§ = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.§9"7§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.§9"7§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§<" §;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§<" § = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§0+§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§0+§ = param1;
      }
      
      private function §6i§(param1:§#!v§, param2:§#!v§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§'"#§;
         _loc3_.§<!f§ = this.§0+§;
         _loc3_.dampingRatio = this.§<" §;
         if(this.§9"7§ == 0)
         {
            _loc3_.§8D§.x = 0;
            _loc3_.§8D§.y = 0;
            _loc3_.§@"$§.x = 0;
            _loc3_.§@"$§.y = 0;
         }
         else
         {
            if(this.§9"7§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§9"7§ == 2)
            {
               _loc3_.§8D§.x = this.mPoint1.x;
               _loc3_.§8D§.y = this.mPoint1.y;
               _loc3_.§@"$§.x = this.mPoint2.x;
               _loc3_.§@"$§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§!!I§().GetWorldPoint(_loc3_.§8D§);
         var _loc5_:b2Vec2 = param2.§!!I§().GetWorldPoint(_loc3_.§@"$§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§9!w§ = param1.§!!I§();
         _loc3_.§>!W§ = param2.§!!I§();
         return _loc3_;
      }
      
      private function §^! §(param1:§#!v§, param2:§#!v§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§'"#§;
         var _loc4_:b2Vec2 = param1.§!!I§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§!!I§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§6R§(param1.§!!I§(),param2.§!!I§(),_loc6_);
         return _loc3_;
      }
      
      private function §'i§(param1:§#!v§, param2:§#!v§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§'"#§;
         _loc3_.§6R§(param1.§!!I§(),param2.§!!I§(),param1.§!!I§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§05§ = this.§"!M§;
         _loc3_.§9!g§ = this.§'b§;
         _loc3_.motorSpeed = this.§;"0§;
         _loc3_.§^!t§ = this.§"B§;
         _loc3_.§3!i§ = this.§<!=§;
         _loc3_.§"7§ = this.§4"6§;
         return _loc3_;
      }
      
      private function §5P§(param1:§#!v§, param2:§#!v§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§'"#§;
         _loc3_.§6R§(param1.§!!I§(),param2.§!!I§(),param1.§!!I§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§@"0§,this.§4%§));
         _loc3_.§05§ = this.§"!M§;
         _loc3_.§;!W§ = this.§<!=§;
         _loc3_.§2!$§ = this.§"B§;
         _loc3_.§9!g§ = this.§'b§;
         _loc3_.§;d§ = this.§4"6§;
         _loc3_.motorSpeed = this.§;"0§;
         return _loc3_;
      }
      
      public function §5",§(param1:§#!v§, param2:§#!v§) : b2JointDef
      {
         switch(this.§#!-§)
         {
            case §5!G§:
               return this.§6i§(param1,param2);
            case §9!M§:
               return this.§^! §(param1,param2);
            case §6`§:
               return this.§'i§(param1,param2);
            case §0g§:
               return this.§5P§(param1,param2);
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
         _loc1_.limit = this.§,i§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.motor = this.§4!r§;
         _loc1_.type = this.type;
         _loc1_.backAndForth = this.§`!]§;
         _loc1_.collideConnected = this.§>!f§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.index1 = this.id1;
         _loc1_.index2 = this.id2;
         _loc1_.oneWayDestroyed = this.§#!j§;
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
