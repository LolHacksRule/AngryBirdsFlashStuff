package §@!P§
{
   import §,T§.§[-§;
   import §0=§.§2p§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §?v§
   {
      
      public static const §3G§:uint = 1;
      
      public static const §+§:uint = 2;
      
      public static const §;D§:uint = 3;
      
      public static const §#>§:uint = 4;
      
      public static const §]!K§:uint = 5;
       
      
      private var §<q§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §2w§:Boolean;
      
      private var §@o§:Number;
      
      private var §-!=§:Number;
      
      private var §#S§:Boolean;
      
      private var §-W§:Number;
      
      private var §3J§:Boolean;
      
      private var §?^§:Boolean;
      
      private var §"#§:Number;
      
      private var §!X§:Number;
      
      private var §1V§:Number;
      
      private var §79§:Number;
      
      public function §?v§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§<q§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§2w§ = param7;
         this.§@o§ = param8;
         this.§-!=§ = param9;
         this.§#S§ = param10;
         this.§-W§ = param11;
         this.§3J§ = param12;
         this.§?^§ = param6;
         this.§"#§ = param13;
      }
      
      public function get type() : int
      {
         return this.§<q§;
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
      
      public function get §0m§() : Boolean
      {
         return this.§2w§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§@o§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§-!=§;
      }
      
      public function get §#!F§() : Boolean
      {
         return this.§#S§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§-W§;
      }
      
      public function get §=t§() : Boolean
      {
         return this.§3J§;
      }
      
      public function get §1q§() : Boolean
      {
         return this.§?^§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§"#§;
      }
      
      public function get axisX() : Number
      {
         return this.§!X§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§!X§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§1V§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§1V§ = param1;
      }
      
      public function get §=!7§() : Number
      {
         return this.§79§;
      }
      
      public function set §=!7§(param1:Number) : void
      {
         this.§79§ = param1;
      }
      
      public function §=!F§(param1:§2p§, param2:§2p§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§<q§)
         {
            case §3G§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§?^§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §[-§.§7!,§(param1,param2);
               _loc3_.Initialize(param1.§;!M§(),param2.§;!M§(),param1.§;!M§().GetPosition(),param2.§;!M§().GetPosition());
               return _loc3_;
            case §+§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§?^§;
               _loc4_.Initialize(param1.§;!M§(),param2.§;!M§(),param1.§;!M§().GetWorldCenter());
               return _loc4_;
            case §;D§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§?^§;
               _loc5_.Initialize(param1.§;!M§(),param2.§;!M§(),param1.§;!M§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§2w§;
               _loc5_.enableMotor = this.§#S§;
               _loc5_.motorSpeed = this.§-W§;
               _loc5_.upperAngle = this.§-!=§;
               _loc5_.lowerAngle = this.§@o§;
               _loc5_.maxMotorTorque = this.§"#§;
               return _loc5_;
            case §#>§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§?^§;
               _loc6_.Initialize(param1.§;!M§(),param2.§;!M§(),param1.§;!M§().GetWorldCenter(),new b2Vec2(this.§!X§,this.§1V§));
               _loc6_.enableLimit = !!this.§3J§ ? false : Boolean(this.§2w§);
               _loc6_.lowerTranslation = this.§@o§;
               _loc6_.upperTranslation = this.§-!=§;
               _loc6_.enableMotor = this.§#S§;
               _loc6_.maxMotorForce = this.§"#§;
               _loc6_.motorSpeed = this.§-W§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
