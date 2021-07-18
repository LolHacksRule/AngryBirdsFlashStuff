package §&o§
{
   import §-!&§.§3!,§;
   import §9T§.§1r§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §3,§
   {
      
      public static const §!!D§:uint = 1;
      
      public static const §'!!§:uint = 2;
      
      public static const §]K§:uint = 3;
      
      public static const §0!9§:uint = 4;
      
      public static const §>R§:uint = 5;
       
      
      private var §6!'§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §`#§:Boolean;
      
      private var § !R§:Number;
      
      private var §'!,§:Number;
      
      private var §4+§:Boolean;
      
      private var §;!N§:Number;
      
      private var §]&§:Boolean;
      
      private var §%P§:Boolean;
      
      private var §#3§:Number;
      
      private var §]o§:Number;
      
      private var §[n§:Number;
      
      private var §+!I§:Number;
      
      public function §3,§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§6!'§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§`#§ = param7;
         this.§ !R§ = param8;
         this.§'!,§ = param9;
         this.§4+§ = param10;
         this.§;!N§ = param11;
         this.§]&§ = param12;
         this.§%P§ = param6;
         this.§#3§ = param13;
      }
      
      public function get type() : int
      {
         return this.§6!'§;
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
      
      public function get §%H§() : Boolean
      {
         return this.§`#§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§ !R§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§'!,§;
      }
      
      public function get §9!0§() : Boolean
      {
         return this.§4+§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§;!N§;
      }
      
      public function get §@L§() : Boolean
      {
         return this.§]&§;
      }
      
      public function get §<!#§() : Boolean
      {
         return this.§%P§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§#3§;
      }
      
      public function get axisX() : Number
      {
         return this.§]o§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§]o§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§[n§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§[n§ = param1;
      }
      
      public function get §9"§() : Number
      {
         return this.§+!I§;
      }
      
      public function set §9"§(param1:Number) : void
      {
         this.§+!I§ = param1;
      }
      
      public function §<,§(param1:§3!,§, param2:§3!,§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§6!'§)
         {
            case §!!D§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§%P§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §1r§.§?!&§(param1,param2);
               _loc3_.Initialize(param1.§`%§(),param2.§`%§(),param1.§`%§().GetPosition(),param2.§`%§().GetPosition());
               return _loc3_;
            case §'!!§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§%P§;
               _loc4_.Initialize(param1.§`%§(),param2.§`%§(),param1.§`%§().GetWorldCenter());
               return _loc4_;
            case §]K§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§%P§;
               _loc5_.Initialize(param1.§`%§(),param2.§`%§(),param1.§`%§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§`#§;
               _loc5_.enableMotor = this.§4+§;
               _loc5_.motorSpeed = this.§;!N§;
               _loc5_.upperAngle = this.§'!,§;
               _loc5_.lowerAngle = this.§ !R§;
               _loc5_.maxMotorTorque = this.§#3§;
               return _loc5_;
            case §0!9§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§%P§;
               _loc6_.Initialize(param1.§`%§(),param2.§`%§(),param1.§`%§().GetWorldCenter(),new b2Vec2(this.§]o§,this.§[n§));
               _loc6_.enableLimit = !!this.§]&§ ? false : Boolean(this.§`#§);
               _loc6_.lowerTranslation = this.§ !R§;
               _loc6_.upperTranslation = this.§'!,§;
               _loc6_.enableMotor = this.§4+§;
               _loc6_.maxMotorForce = this.§#3§;
               _loc6_.motorSpeed = this.§;!N§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
