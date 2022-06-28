package §'!E§
{
   import §!+§.§>G§;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §9!§
   {
      
      public static const §;j§:uint = 1;
      
      public static const §83§:uint = 2;
      
      public static const §#S§:uint = 3;
      
      public static const §8J§:uint = 4;
      
      public static const §3=§:uint = 5;
       
      
      private var §1i§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §%1§:Boolean;
      
      private var §=!!§:Number;
      
      private var §+e§:Number;
      
      private var § u§:Boolean;
      
      private var §^x§:Number;
      
      private var §,F§:Boolean;
      
      private var §8A§:Boolean;
      
      private var §@X§:Number;
      
      private var §?9§:Number;
      
      private var §[q§:Number;
      
      private var §<E§:Number;
      
      public function §9!§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§1i§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§%1§ = param7;
         this.§=!!§ = param8;
         this.§+e§ = param9;
         this.§ u§ = param10;
         this.§^x§ = param11;
         this.§,F§ = param12;
         this.§8A§ = param6;
         this.§@X§ = param13;
      }
      
      public function get type() : int
      {
         return this.§1i§;
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
      
      public function get §true§() : Boolean
      {
         return this.§%1§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§=!!§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§+e§;
      }
      
      public function get §<d§() : Boolean
      {
         return this.§ u§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§^x§;
      }
      
      public function get §0Z§() : Boolean
      {
         return this.§,F§;
      }
      
      public function get §5!?§() : Boolean
      {
         return this.§8A§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§@X§;
      }
      
      public function get axisX() : Number
      {
         return this.§?9§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§?9§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§[q§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§[q§ = param1;
      }
      
      public function get §=w§() : Number
      {
         return this.§<E§;
      }
      
      public function set §=w§(param1:Number) : void
      {
         this.§<E§ = param1;
      }
      
      public function § !=§(param1:§>G§, param2:§>G§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§1i§)
         {
            case §;j§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§8A§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §7!,§.§1-§(param1,param2);
               _loc3_.Initialize(param1.§`t§(),param2.§`t§(),param1.§`t§().GetPosition(),param2.§`t§().GetPosition());
               return _loc3_;
            case §83§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§8A§;
               _loc4_.Initialize(param1.§`t§(),param2.§`t§(),param1.§`t§().GetWorldCenter());
               return _loc4_;
            case §#S§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§8A§;
               _loc5_.Initialize(param1.§`t§(),param2.§`t§(),param1.§`t§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§%1§;
               _loc5_.enableMotor = this.§ u§;
               _loc5_.motorSpeed = this.§^x§;
               _loc5_.upperAngle = this.§+e§;
               _loc5_.lowerAngle = this.§=!!§;
               _loc5_.maxMotorTorque = this.§@X§;
               return _loc5_;
            case §8J§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§8A§;
               _loc6_.Initialize(param1.§`t§(),param2.§`t§(),param1.§`t§().GetWorldCenter(),new b2Vec2(this.§?9§,this.§[q§));
               _loc6_.enableLimit = !!this.§,F§ ? false : Boolean(this.§%1§);
               _loc6_.lowerTranslation = this.§=!!§;
               _loc6_.upperTranslation = this.§+e§;
               _loc6_.enableMotor = this.§ u§;
               _loc6_.maxMotorForce = this.§@X§;
               _loc6_.motorSpeed = this.§^x§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
