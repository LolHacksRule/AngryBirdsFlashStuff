package §]7§
{
   import §9!?§.§^]§;
   import §`"§.§"e§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §3V§
   {
      
      public static const §!N§:uint = 1;
      
      public static const §9<§:uint = 2;
      
      public static const §?&§:uint = 3;
       
      
      private var §[!0§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §?'§:Boolean;
      
      private var §[@§:Number;
      
      private var §7S§:Number;
      
      private var §3!8§:Boolean;
      
      private var §"I§:Number;
      
      private var §!w§:Boolean;
      
      private var §]!'§:Boolean;
      
      private var §[>§:Number;
      
      public function §3V§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§[!0§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§?'§ = param7;
         this.§[@§ = param8;
         this.§7S§ = param9;
         this.§3!8§ = param10;
         this.§"I§ = param11;
         this.§!w§ = param12;
         this.§]!'§ = param6;
         this.§[>§ = param13;
      }
      
      public function get type() : int
      {
         return this.§[!0§;
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
      
      public function get §!z§() : Boolean
      {
         return this.§?'§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§[@§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§7S§;
      }
      
      public function get §73§() : Boolean
      {
         return this.§3!8§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§"I§;
      }
      
      public function get §"'§() : Boolean
      {
         return this.§!w§;
      }
      
      public function get §,!#§() : Boolean
      {
         return this.§]!'§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§[>§;
      }
      
      public function §!D§(param1:§"e§, param2:§"e§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         switch(this.§[!0§)
         {
            case §!N§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§]!'§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §^]§.§]+§(param1,param2);
               _loc3_.Initialize(param1.§]d§(),param2.§]d§(),param1.§]d§().GetPosition(),param2.§]d§().GetPosition());
               return _loc3_;
            case §9<§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§]!'§;
               _loc4_.Initialize(param1.§]d§(),param2.§]d§(),param1.§]d§().GetWorldCenter());
               return _loc4_;
            case §?&§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§]!'§;
               _loc5_.Initialize(param1.§]d§(),param2.§]d§(),param1.§]d§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§?'§;
               _loc5_.enableMotor = this.§3!8§;
               _loc5_.motorSpeed = this.§"I§;
               _loc5_.upperAngle = this.§7S§;
               _loc5_.lowerAngle = this.§[@§;
               _loc5_.maxMotorTorque = this.§[>§;
               return _loc5_;
            default:
               return null;
         }
      }
   }
}
