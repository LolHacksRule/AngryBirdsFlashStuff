package §finally§
{
   import §+!%§.§'!"§;
   import §<[§.§>!4§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §2-§
   {
      
      public static const §=y§:uint = 1;
      
      public static const §+<§:uint = 2;
      
      public static const §3c§:uint = 3;
      
      public static const §-?§:uint = 4;
      
      public static const §0U§:uint = 5;
       
      
      private var §@M§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §-@§:Boolean;
      
      private var §1M§:Number;
      
      private var §-i§:Number;
      
      private var §^&§:Boolean;
      
      private var §#^§:Number;
      
      private var § 0§:Boolean;
      
      private var §[!?§:Boolean;
      
      private var §,!A§:Number;
      
      private var §0! §:Number;
      
      private var §+t§:Number;
      
      private var §]!8§:Number;
      
      public function §2-§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§@M§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§-@§ = param7;
         this.§1M§ = param8;
         this.§-i§ = param9;
         this.§^&§ = param10;
         this.§#^§ = param11;
         this.§ 0§ = param12;
         this.§[!?§ = param6;
         this.§,!A§ = param13;
      }
      
      public function get type() : int
      {
         return this.§@M§;
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
      
      public function get §48§() : Boolean
      {
         return this.§-@§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§1M§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§-i§;
      }
      
      public function get §]! §() : Boolean
      {
         return this.§^&§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§#^§;
      }
      
      public function get §`>§() : Boolean
      {
         return this.§ 0§;
      }
      
      public function get §#a§() : Boolean
      {
         return this.§[!?§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§,!A§;
      }
      
      public function get axisX() : Number
      {
         return this.§0! §;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§0! § = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§+t§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§+t§ = param1;
      }
      
      public function get §;l§() : Number
      {
         return this.§]!8§;
      }
      
      public function set §;l§(param1:Number) : void
      {
         this.§]!8§ = param1;
      }
      
      public function §&T§(param1:§>!4§, param2:§>!4§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§@M§)
         {
            case §=y§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§[!?§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §'!"§.§9!'§(param1,param2);
               _loc3_.Initialize(param1.§27§(),param2.§27§(),param1.§27§().GetPosition(),param2.§27§().GetPosition());
               return _loc3_;
            case §+<§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§[!?§;
               _loc4_.Initialize(param1.§27§(),param2.§27§(),param1.§27§().GetWorldCenter());
               return _loc4_;
            case §3c§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§[!?§;
               _loc5_.Initialize(param1.§27§(),param2.§27§(),param1.§27§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§-@§;
               _loc5_.enableMotor = this.§^&§;
               _loc5_.motorSpeed = this.§#^§;
               _loc5_.upperAngle = this.§-i§;
               _loc5_.lowerAngle = this.§1M§;
               _loc5_.maxMotorTorque = this.§,!A§;
               return _loc5_;
            case §-?§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§[!?§;
               _loc6_.Initialize(param1.§27§(),param2.§27§(),param1.§27§().GetWorldCenter(),new b2Vec2(this.§0! §,this.§+t§));
               _loc6_.enableLimit = this.§-@§;
               _loc6_.lowerTranslation = this.§1M§;
               _loc6_.upperTranslation = this.§-i§;
               _loc6_.enableMotor = this.§^&§;
               _loc6_.maxMotorForce = this.§,!A§;
               _loc6_.motorSpeed = this.§#^§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
