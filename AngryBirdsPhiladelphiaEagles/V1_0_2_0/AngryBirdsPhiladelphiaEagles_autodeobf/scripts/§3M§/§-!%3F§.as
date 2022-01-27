package §3M§
{
   import §%"§.§ do§;
   import §'R§.§&r§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §-!?§
   {
      
      public static const §-S§:uint = 1;
      
      public static const §0!K§:uint = 2;
      
      public static const §@!;§:uint = 3;
      
      public static const §+!5§:uint = 4;
      
      public static const §,K§:uint = 5;
       
      
      private var §^U§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §%6§:Boolean;
      
      private var §?^§:Number;
      
      private var §;J§:Number;
      
      private var §^!B§:Boolean;
      
      private var §6!L§:Number;
      
      private var §?@§:Boolean;
      
      private var §>]§:Boolean;
      
      private var §#@§:Number;
      
      private var §,#§:Number;
      
      private var § a§:Number;
      
      private var §>E§:Number;
      
      public function §-!?§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§^U§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§%6§ = param7;
         this.§?^§ = param8;
         this.§;J§ = param9;
         this.§^!B§ = param10;
         this.§6!L§ = param11;
         this.§?@§ = param12;
         this.§>]§ = param6;
         this.§#@§ = param13;
      }
      
      public function get type() : int
      {
         return this.§^U§;
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
      
      public function get §2E§() : Boolean
      {
         return this.§%6§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§?^§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§;J§;
      }
      
      public function get §^l§() : Boolean
      {
         return this.§^!B§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§6!L§;
      }
      
      public function get §6I§() : Boolean
      {
         return this.§?@§;
      }
      
      public function get §3!1§() : Boolean
      {
         return this.§>]§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§#@§;
      }
      
      public function get axisX() : Number
      {
         return this.§,#§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§,#§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§ a§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§ a§ = param1;
      }
      
      public function get §19§() : Number
      {
         return this.§>E§;
      }
      
      public function set §19§(param1:Number) : void
      {
         this.§>E§ = param1;
      }
      
      public function §7!?§(param1:§&r§, param2:§&r§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§^U§)
         {
            case §-S§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§>]§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = § do§.§=Q§(param1,param2);
               _loc3_.Initialize(param1.§<!I§(),param2.§<!I§(),param1.§<!I§().GetPosition(),param2.§<!I§().GetPosition());
               return _loc3_;
            case §0!K§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§>]§;
               _loc4_.Initialize(param1.§<!I§(),param2.§<!I§(),param1.§<!I§().GetWorldCenter());
               return _loc4_;
            case §@!;§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§>]§;
               _loc5_.Initialize(param1.§<!I§(),param2.§<!I§(),param1.§<!I§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§%6§;
               _loc5_.enableMotor = this.§^!B§;
               _loc5_.motorSpeed = this.§6!L§;
               _loc5_.upperAngle = this.§;J§;
               _loc5_.lowerAngle = this.§?^§;
               _loc5_.maxMotorTorque = this.§#@§;
               return _loc5_;
            case §+!5§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§>]§;
               _loc6_.Initialize(param1.§<!I§(),param2.§<!I§(),param1.§<!I§().GetWorldCenter(),new b2Vec2(this.§,#§,this.§ a§));
               _loc6_.enableLimit = !!this.§?@§ ? false : Boolean(this.§%6§);
               _loc6_.lowerTranslation = this.§?^§;
               _loc6_.upperTranslation = this.§;J§;
               _loc6_.enableMotor = this.§^!B§;
               _loc6_.maxMotorForce = this.§#@§;
               _loc6_.motorSpeed = this.§6!L§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
