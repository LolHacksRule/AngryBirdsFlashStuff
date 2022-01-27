package §%y§
{
   import §,!F§.§#§;
   import §8x§.§8C§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §@Q§
   {
      
      public static const §&0§:uint = 1;
      
      public static const §2!@§:uint = 2;
      
      public static const §!1§:uint = 3;
      
      public static const §+-§:uint = 4;
      
      public static const §57§:uint = 5;
       
      
      private var §5L§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §^+§:Boolean;
      
      private var §@j§:Number;
      
      private var §8i§:Number;
      
      private var §]E§:Boolean;
      
      private var §,I§:Number;
      
      private var §8! §:Boolean;
      
      private var §`!§:Boolean;
      
      private var §5z§:Number;
      
      private var §%!§:Number;
      
      private var §`! §:Number;
      
      private var §^!A§:Number;
      
      public function §@Q§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§5L§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§^+§ = param7;
         this.§@j§ = param8;
         this.§8i§ = param9;
         this.§]E§ = param10;
         this.§,I§ = param11;
         this.§8! § = param12;
         this.§`!§ = param6;
         this.§5z§ = param13;
      }
      
      public function get type() : int
      {
         return this.§5L§;
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
      
      public function get §`f§() : Boolean
      {
         return this.§^+§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§@j§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§8i§;
      }
      
      public function get §!r§() : Boolean
      {
         return this.§]E§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§,I§;
      }
      
      public function get § -§() : Boolean
      {
         return this.§8! §;
      }
      
      public function get §3?§() : Boolean
      {
         return this.§`!§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§5z§;
      }
      
      public function get axisX() : Number
      {
         return this.§%!§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§%!§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§`! §;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§`! § = param1;
      }
      
      public function get §^L§() : Number
      {
         return this.§^!A§;
      }
      
      public function set §^L§(param1:Number) : void
      {
         this.§^!A§ = param1;
      }
      
      public function §&!7§(param1:§8C§, param2:§8C§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§5L§)
         {
            case §&0§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§`!§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §#§.§29§(param1,param2);
               _loc3_.Initialize(param1.§]!7§(),param2.§]!7§(),param1.§]!7§().GetPosition(),param2.§]!7§().GetPosition());
               return _loc3_;
            case §2!@§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§`!§;
               _loc4_.Initialize(param1.§]!7§(),param2.§]!7§(),param1.§]!7§().GetWorldCenter());
               return _loc4_;
            case §!1§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§`!§;
               _loc5_.Initialize(param1.§]!7§(),param2.§]!7§(),param1.§]!7§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§^+§;
               _loc5_.enableMotor = this.§]E§;
               _loc5_.motorSpeed = this.§,I§;
               _loc5_.upperAngle = this.§8i§;
               _loc5_.lowerAngle = this.§@j§;
               _loc5_.maxMotorTorque = this.§5z§;
               return _loc5_;
            case §+-§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§`!§;
               _loc6_.Initialize(param1.§]!7§(),param2.§]!7§(),param1.§]!7§().GetWorldCenter(),new b2Vec2(this.§%!§,this.§`! §));
               _loc6_.enableLimit = !!this.§8! § ? false : Boolean(this.§^+§);
               _loc6_.lowerTranslation = this.§@j§;
               _loc6_.upperTranslation = this.§8i§;
               _loc6_.enableMotor = this.§]E§;
               _loc6_.maxMotorForce = this.§5z§;
               _loc6_.motorSpeed = this.§,I§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
