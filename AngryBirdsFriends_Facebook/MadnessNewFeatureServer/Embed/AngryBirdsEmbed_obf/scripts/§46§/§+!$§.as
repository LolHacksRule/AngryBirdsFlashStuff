package §46§
{
   import §?!8§.§]f§;
   import §`!4§.§6l§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §+!$§
   {
      
      public static const §>e§:uint = 1;
      
      public static const §9v§:uint = 2;
      
      public static const §`!D§:uint = 3;
      
      public static const §2$§:uint = 4;
      
      public static const §?!O§:uint = 5;
       
      
      private var §"q§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §"!§:Boolean;
      
      private var §`Y§:Number;
      
      private var §%!&§:Number;
      
      private var §3S§:Boolean;
      
      private var §,!+§:Number;
      
      private var § !8§:Boolean;
      
      private var §`§:Boolean;
      
      private var §4!0§:Number;
      
      private var §!!P§:Number;
      
      private var § [§:Number;
      
      private var §>9§:Number;
      
      public function §+!$§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§"q§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§"!§ = param7;
         this.§`Y§ = param8;
         this.§%!&§ = param9;
         this.§3S§ = param10;
         this.§,!+§ = param11;
         this.§ !8§ = param12;
         this.§`§ = param6;
         this.§4!0§ = param13;
      }
      
      public function get type() : int
      {
         return this.§"q§;
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
      
      public function get §+!A§() : Boolean
      {
         return this.§"!§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§`Y§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§%!&§;
      }
      
      public function get §@!N§() : Boolean
      {
         return this.§3S§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§,!+§;
      }
      
      public function get §2K§() : Boolean
      {
         return this.§ !8§;
      }
      
      public function get §%K§() : Boolean
      {
         return this.§`§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§4!0§;
      }
      
      public function get axisX() : Number
      {
         return this.§!!P§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§!!P§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§ [§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§ [§ = param1;
      }
      
      public function get §8X§() : Number
      {
         return this.§>9§;
      }
      
      public function set §8X§(param1:Number) : void
      {
         this.§>9§ = param1;
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
         _loc1_.limit = this.§+!A§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.motor = this.§@!N§;
         _loc1_.motorSpeed = this.motorSpeed;
         _loc1_.backAndForth = this.§2K§;
         _loc1_.collideConnected = this.§%K§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.axisX = this.axisX;
         _loc1_.axisY = this.axisY;
         if(!isNaN(this.§8X§))
         {
            _loc1_.destroyTimer = this.§8X§;
         }
         return _loc1_;
      }
      
      public function §4!B§(param1:§]f§, param2:§]f§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§"q§)
         {
            case §>e§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§`§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §6l§.§>!L§(param1,param2);
               _loc3_.Initialize(param1.§<!9§(),param2.§<!9§(),param1.§<!9§().GetPosition(),param2.§<!9§().GetPosition());
               return _loc3_;
            case §9v§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§`§;
               _loc4_.Initialize(param1.§<!9§(),param2.§<!9§(),param1.§<!9§().GetWorldCenter());
               return _loc4_;
            case §`!D§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§`§;
               _loc5_.Initialize(param1.§<!9§(),param2.§<!9§(),param1.§<!9§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = !!this.§ !8§ ? false : Boolean(this.§"!§);
               _loc5_.enableMotor = this.§3S§;
               _loc5_.motorSpeed = this.§,!+§;
               _loc5_.upperAngle = this.§%!&§;
               _loc5_.lowerAngle = this.§`Y§;
               _loc5_.maxMotorTorque = this.§4!0§;
               return _loc5_;
            case §2$§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§`§;
               _loc6_.Initialize(param1.§<!9§(),param2.§<!9§(),param1.§<!9§().GetWorldCenter(),new b2Vec2(this.§!!P§,this.§ [§));
               _loc6_.enableLimit = !!this.§ !8§ ? false : Boolean(this.§"!§);
               _loc6_.lowerTranslation = this.§`Y§;
               _loc6_.upperTranslation = this.§%!&§;
               _loc6_.enableMotor = this.§3S§;
               _loc6_.maxMotorForce = this.§4!0§;
               _loc6_.motorSpeed = this.§,!+§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
