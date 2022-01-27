package §&K§
{
   import §4!-§.§%o§;
   import §>Y§.§#o§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class set
   {
      
      public static const §[+§:uint = 1;
      
      public static const §5!M§:uint = 2;
      
      public static const §?8§:uint = 3;
      
      public static const §%!+§:uint = 4;
      
      public static const §^o§:uint = 5;
       
      
      private var §5!9§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §-K§:Boolean;
      
      private var §=!J§:Number;
      
      private var §85§:Number;
      
      private var §'?§:Boolean;
      
      private var §+3§:Number;
      
      private var §9A§:Boolean;
      
      private var §!I§:Boolean;
      
      private var §5F§:Number;
      
      private var §'!G§:Number;
      
      private var §-O§:Number;
      
      private var §#!1§:Number;
      
      public function set(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§5!9§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§-K§ = param7;
         this.§=!J§ = param8;
         this.§85§ = param9;
         this.§'?§ = param10;
         this.§+3§ = param11;
         this.§9A§ = param12;
         this.§!I§ = param6;
         this.§5F§ = param13;
      }
      
      public function get type() : int
      {
         return this.§5!9§;
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
      
      public function get §3s§() : Boolean
      {
         return this.§-K§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§=!J§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§85§;
      }
      
      public function get §6M§() : Boolean
      {
         return this.§'?§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§+3§;
      }
      
      public function get §!M§() : Boolean
      {
         return this.§9A§;
      }
      
      public function get §!%§() : Boolean
      {
         return this.§!I§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§5F§;
      }
      
      public function get axisX() : Number
      {
         return this.§'!G§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§'!G§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§-O§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§-O§ = param1;
      }
      
      public function get §63§() : Number
      {
         return this.§#!1§;
      }
      
      public function set §63§(param1:Number) : void
      {
         this.§#!1§ = param1;
      }
      
      public function §>!6§(param1:§#o§, param2:§#o§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§5!9§)
         {
            case §[+§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§!I§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §%o§.§0U§(param1,param2);
               _loc3_.Initialize(param1.§[5§(),param2.§[5§(),param1.§[5§().GetPosition(),param2.§[5§().GetPosition());
               return _loc3_;
            case §5!M§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§!I§;
               _loc4_.Initialize(param1.§[5§(),param2.§[5§(),param1.§[5§().GetWorldCenter());
               return _loc4_;
            case §?8§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§!I§;
               _loc5_.Initialize(param1.§[5§(),param2.§[5§(),param1.§[5§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§-K§;
               _loc5_.enableMotor = this.§'?§;
               _loc5_.motorSpeed = this.§+3§;
               _loc5_.upperAngle = this.§85§;
               _loc5_.lowerAngle = this.§=!J§;
               _loc5_.maxMotorTorque = this.§5F§;
               return _loc5_;
            case §%!+§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§!I§;
               _loc6_.Initialize(param1.§[5§(),param2.§[5§(),param1.§[5§().GetWorldCenter(),new b2Vec2(this.§'!G§,this.§-O§));
               _loc6_.enableLimit = !!this.§9A§ ? false : Boolean(this.§-K§);
               _loc6_.lowerTranslation = this.§=!J§;
               _loc6_.upperTranslation = this.§85§;
               _loc6_.enableMotor = this.§'?§;
               _loc6_.maxMotorForce = this.§5F§;
               _loc6_.motorSpeed = this.§+3§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
