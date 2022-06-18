package §2!+§
{
   import §#;§.§4!8§;
   import §&c§.§9h§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §>!?§
   {
      
      public static const §+!9§:uint = 1;
      
      public static const §-7§:uint = 2;
      
      public static const §,K§:uint = 3;
      
      public static const §-s§:uint = 4;
      
      public static const §@_§:uint = 5;
       
      
      private var §0!5§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §@w§:Boolean;
      
      private var §8Z§:Number;
      
      private var §>p§:Number;
      
      private var §9#§:Boolean;
      
      private var §^U§:Number;
      
      private var each:Boolean;
      
      private var §=!0§:Boolean;
      
      private var §3!2§:Number;
      
      private var §<N§:Number;
      
      private var §5!H§:Number;
      
      private var §+!-§:Number;
      
      public function §>!?§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§0!5§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§@w§ = param7;
         this.§8Z§ = param8;
         this.§>p§ = param9;
         this.§9#§ = param10;
         this.§^U§ = param11;
         this.each = param12;
         this.§=!0§ = param6;
         this.§3!2§ = param13;
      }
      
      public function get type() : int
      {
         return this.§0!5§;
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
      
      public function get §7M§() : Boolean
      {
         return this.§@w§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§8Z§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§>p§;
      }
      
      public function get §+!&§() : Boolean
      {
         return this.§9#§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§^U§;
      }
      
      public function get §+!§() : Boolean
      {
         return this.each;
      }
      
      public function get §+!7§() : Boolean
      {
         return this.§=!0§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§3!2§;
      }
      
      public function get axisX() : Number
      {
         return this.§<N§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§<N§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§5!H§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§5!H§ = param1;
      }
      
      public function get §[8§() : Number
      {
         return this.§+!-§;
      }
      
      public function set §[8§(param1:Number) : void
      {
         this.§+!-§ = param1;
      }
      
      public function §6!0§(param1:§9h§, param2:§9h§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§0!5§)
         {
            case §+!9§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§=!0§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §4!8§.§?'§(param1,param2);
               _loc3_.Initialize(param1.§68§(),param2.§68§(),param1.§68§().GetPosition(),param2.§68§().GetPosition());
               return _loc3_;
            case §-7§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§=!0§;
               _loc4_.Initialize(param1.§68§(),param2.§68§(),param1.§68§().GetWorldCenter());
               return _loc4_;
            case §,K§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§=!0§;
               _loc5_.Initialize(param1.§68§(),param2.§68§(),param1.§68§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§@w§;
               _loc5_.enableMotor = this.§9#§;
               _loc5_.motorSpeed = this.§^U§;
               _loc5_.upperAngle = this.§>p§;
               _loc5_.lowerAngle = this.§8Z§;
               _loc5_.maxMotorTorque = this.§3!2§;
               return _loc5_;
            case §-s§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§=!0§;
               _loc6_.Initialize(param1.§68§(),param2.§68§(),param1.§68§().GetWorldCenter(),new b2Vec2(this.§<N§,this.§5!H§));
               _loc6_.enableLimit = !!this.each ? false : Boolean(this.§@w§);
               _loc6_.lowerTranslation = this.§8Z§;
               _loc6_.upperTranslation = this.§>p§;
               _loc6_.enableMotor = this.§9#§;
               _loc6_.maxMotorForce = this.§3!2§;
               _loc6_.motorSpeed = this.§^U§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
