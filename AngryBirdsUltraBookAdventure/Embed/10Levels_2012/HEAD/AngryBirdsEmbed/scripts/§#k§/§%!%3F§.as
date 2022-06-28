package §#k§
{
   import § !3§.§'§;
   import §%x§.§#;§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §%!?§
   {
      
      public static const §#C§:uint = 1;
      
      public static const §4+§:uint = 2;
      
      public static const §#>§:uint = 3;
      
      public static const §!E§:uint = 4;
      
      public static const §?f§:uint = 5;
       
      
      private var §,!5§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §2'§:Boolean;
      
      private var §,!=§:Number;
      
      private var §!v§:Number;
      
      private var §#t§:Boolean;
      
      private var §0@§:Number;
      
      private var §=>§:Boolean;
      
      private var §^!C§:Boolean;
      
      private var § x§:Number;
      
      private var §0c§:Number;
      
      private var §8!5§:Number;
      
      private var §#s§:Number;
      
      public function §%!?§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§,!5§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§2'§ = param7;
         this.§,!=§ = param8;
         this.§!v§ = param9;
         this.§#t§ = param10;
         this.§0@§ = param11;
         this.§=>§ = param12;
         this.§^!C§ = param6;
         this.§ x§ = param13;
      }
      
      public function get type() : int
      {
         return this.§,!5§;
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
      
      public function get §!_§() : Boolean
      {
         return this.§2'§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§,!=§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§!v§;
      }
      
      public function get §9!'§() : Boolean
      {
         return this.§#t§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§0@§;
      }
      
      public function get §7!G§() : Boolean
      {
         return this.§=>§;
      }
      
      public function get §&!#§() : Boolean
      {
         return this.§^!C§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§ x§;
      }
      
      public function get axisX() : Number
      {
         return this.§0c§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§0c§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§8!5§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§8!5§ = param1;
      }
      
      public function get § 0§() : Number
      {
         return this.§#s§;
      }
      
      public function set § 0§(param1:Number) : void
      {
         this.§#s§ = param1;
      }
      
      public function §>k§(param1:§'§, param2:§'§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§,!5§)
         {
            case §#C§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§^!C§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §#;§.§=D§(param1,param2);
               _loc3_.Initialize(param1.§9! §(),param2.§9! §(),param1.§9! §().GetPosition(),param2.§9! §().GetPosition());
               return _loc3_;
            case §4+§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§^!C§;
               _loc4_.Initialize(param1.§9! §(),param2.§9! §(),param1.§9! §().GetWorldCenter());
               return _loc4_;
            case §#>§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§^!C§;
               _loc5_.Initialize(param1.§9! §(),param2.§9! §(),param1.§9! §().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§2'§;
               _loc5_.enableMotor = this.§#t§;
               _loc5_.motorSpeed = this.§0@§;
               _loc5_.upperAngle = this.§!v§;
               _loc5_.lowerAngle = this.§,!=§;
               _loc5_.maxMotorTorque = this.§ x§;
               return _loc5_;
            case §!E§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§^!C§;
               _loc6_.Initialize(param1.§9! §(),param2.§9! §(),param1.§9! §().GetWorldCenter(),new b2Vec2(this.§0c§,this.§8!5§));
               _loc6_.enableLimit = !!this.§=>§ ? false : Boolean(this.§2'§);
               _loc6_.lowerTranslation = this.§,!=§;
               _loc6_.upperTranslation = this.§!v§;
               _loc6_.enableMotor = this.§#t§;
               _loc6_.maxMotorForce = this.§ x§;
               _loc6_.motorSpeed = this.§0@§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
