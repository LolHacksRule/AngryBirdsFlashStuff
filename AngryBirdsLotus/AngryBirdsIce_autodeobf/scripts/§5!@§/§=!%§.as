package §5!@§
{
   import §9_§.§+>§;
   import §[x§.§2^§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §=!%§
   {
      
      public static const §0m§:uint = 1;
      
      public static const §`!;§:uint = 2;
      
      public static const §=f§:uint = 3;
      
      public static const §8!§:uint = 4;
      
      public static const §;!-§:uint = 5;
       
      
      private var §@!B§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §2x§:Boolean;
      
      private var §[!0§:Number;
      
      private var §5!'§:Number;
      
      private var §<5§:Boolean;
      
      private var §<1§:Number;
      
      private var §&!6§:Boolean;
      
      private var §<u§:Boolean;
      
      private var §!J§:Number;
      
      private var §"1§:Number;
      
      private var §^-§:Number;
      
      private var §=!;§:Number;
      
      public function §=!%§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§@!B§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§2x§ = param7;
         this.§[!0§ = param8;
         this.§5!'§ = param9;
         this.§<5§ = param10;
         this.§<1§ = param11;
         this.§&!6§ = param12;
         this.§<u§ = param6;
         this.§!J§ = param13;
      }
      
      public function get type() : int
      {
         return this.§@!B§;
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
      
      public function get §;p§() : Boolean
      {
         return this.§2x§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§[!0§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§5!'§;
      }
      
      public function get §7e§() : Boolean
      {
         return this.§<5§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§<1§;
      }
      
      public function get § g§() : Boolean
      {
         return this.§&!6§;
      }
      
      public function get §-r§() : Boolean
      {
         return this.§<u§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§!J§;
      }
      
      public function get axisX() : Number
      {
         return this.§"1§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§"1§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§^-§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§^-§ = param1;
      }
      
      public function get §"!!§() : Number
      {
         return this.§=!;§;
      }
      
      public function set §"!!§(param1:Number) : void
      {
         this.§=!;§ = param1;
      }
      
      public function § x§(param1:§+>§, param2:§+>§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§@!B§)
         {
            case §0m§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§<u§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §2^§.§7%§(param1,param2);
               _loc3_.Initialize(param1.§>b§(),param2.§>b§(),param1.§>b§().GetPosition(),param2.§>b§().GetPosition());
               return _loc3_;
            case §`!;§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§<u§;
               _loc4_.Initialize(param1.§>b§(),param2.§>b§(),param1.§>b§().GetWorldCenter());
               return _loc4_;
            case §=f§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§<u§;
               _loc5_.Initialize(param1.§>b§(),param2.§>b§(),param1.§>b§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§2x§;
               _loc5_.enableMotor = this.§<5§;
               _loc5_.motorSpeed = this.§<1§;
               _loc5_.upperAngle = this.§5!'§;
               _loc5_.lowerAngle = this.§[!0§;
               _loc5_.maxMotorTorque = this.§!J§;
               return _loc5_;
            case §8!§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§<u§;
               _loc6_.Initialize(param1.§>b§(),param2.§>b§(),param1.§>b§().GetWorldCenter(),new b2Vec2(this.§"1§,this.§^-§));
               _loc6_.enableLimit = this.§2x§;
               _loc6_.lowerTranslation = this.§[!0§;
               _loc6_.upperTranslation = this.§5!'§;
               _loc6_.enableMotor = this.§<5§;
               _loc6_.maxMotorForce = this.§!J§;
               _loc6_.motorSpeed = this.§<1§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
