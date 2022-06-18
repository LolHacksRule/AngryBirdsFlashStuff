package § !'§
{
   import §!!,§.§`Q§;
   import §9s§.§^9§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §6A§
   {
      
      public static const §0o§:uint = 1;
      
      public static const §[t§:uint = 2;
      
      public static const §&!I§:uint = 3;
      
      public static const §,%§:uint = 4;
      
      public static const §#!L§:uint = 5;
       
      
      private var §[`§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §7Y§:Boolean;
      
      private var §5!+§:Number;
      
      private var § "§:Number;
      
      private var §&>§:Boolean;
      
      private var §&R§:Number;
      
      private var §,0§:Boolean;
      
      private var §6!%§:Boolean;
      
      private var §,&§:Number;
      
      private var §9Q§:Number;
      
      private var §8!G§:Number;
      
      private var §];§:Number;
      
      public function §6A§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§[`§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§7Y§ = param7;
         this.§5!+§ = param8;
         this.§ "§ = param9;
         this.§&>§ = param10;
         this.§&R§ = param11;
         this.§,0§ = param12;
         this.§6!%§ = param6;
         this.§,&§ = param13;
      }
      
      public function get type() : int
      {
         return this.§[`§;
      }
      
      public function get index1() : int
      {
         return this.mIndex1;
      }
      
      public function get index2() : int
      {
         return this.mIndex2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get §?y§() : Boolean
      {
         return this.§7Y§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§5!+§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§ "§;
      }
      
      public function get §#!G§() : Boolean
      {
         return this.§&>§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§&R§;
      }
      
      public function get §&k§() : Boolean
      {
         return this.§,0§;
      }
      
      public function get §?6§() : Boolean
      {
         return this.§6!%§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§,&§;
      }
      
      public function get axisX() : Number
      {
         return this.§9Q§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§9Q§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§8!G§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§8!G§ = param1;
      }
      
      public function get §"A§() : Number
      {
         return this.§];§;
      }
      
      public function set §"A§(param1:Number) : void
      {
         this.§];§ = param1;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.type = this.type;
         _loc1_.index1 = this.index1;
         _loc1_.index2 = this.index2;
         _loc1_.x1 = this.point1.x;
         _loc1_.x2 = this.point2.x;
         _loc1_.y1 = this.point1.y;
         _loc1_.y2 = this.point2.y;
         _loc1_.limit = this.§?y§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.motor = this.§#!G§;
         _loc1_.motorSpeed = this.motorSpeed;
         _loc1_.backAndForth = this.§&k§;
         _loc1_.collideConnected = this.§?6§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.axisX = this.axisX;
         _loc1_.axisY = this.axisY;
         if(!isNaN(this.§"A§))
         {
            _loc1_.destroyTimer = this.§"A§;
         }
         return _loc1_;
      }
      
      public function §,!B§(param1:§`Q§, param2:§`Q§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§[`§)
         {
            case §0o§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§6!%§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §^9§.§[;§(param1,param2);
               _loc3_.Initialize(param1.§ 7§(),param2.§ 7§(),param1.§ 7§().GetPosition(),param2.§ 7§().GetPosition());
               return _loc3_;
            case §[t§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§6!%§;
               _loc4_.Initialize(param1.§ 7§(),param2.§ 7§(),param1.§ 7§().GetWorldCenter());
               return _loc4_;
            case §&!I§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§6!%§;
               _loc5_.Initialize(param1.§ 7§(),param2.§ 7§(),param1.§ 7§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = !!this.§,0§ ? false : Boolean(this.§7Y§);
               _loc5_.enableMotor = this.§&>§;
               _loc5_.motorSpeed = this.§&R§;
               _loc5_.upperAngle = this.§ "§;
               _loc5_.lowerAngle = this.§5!+§;
               _loc5_.maxMotorTorque = this.§,&§;
               return _loc5_;
            case §,%§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§6!%§;
               _loc6_.Initialize(param1.§ 7§(),param2.§ 7§(),param1.§ 7§().GetWorldCenter(),new b2Vec2(this.§9Q§,this.§8!G§));
               _loc6_.enableLimit = !!this.§,0§ ? false : Boolean(this.§7Y§);
               _loc6_.lowerTranslation = this.§5!+§;
               _loc6_.upperTranslation = this.§ "§;
               _loc6_.enableMotor = this.§&>§;
               _loc6_.maxMotorForce = this.§,&§;
               _loc6_.motorSpeed = this.§&R§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
