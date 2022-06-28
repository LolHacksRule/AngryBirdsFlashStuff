package §`6§
{
   import §3G§.§!E§;
   import §8u§.§0r§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §&!?§
   {
      
      public static const §<m§:uint = 1;
      
      public static const §%+§:uint = 2;
      
      public static const §%!5§:uint = 3;
      
      public static const §?9§:uint = 4;
      
      public static const §`!$§:uint = 5;
       
      
      private var §[!+§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §@$§:Boolean;
      
      private var §function§:Number;
      
      private var §7! §:Number;
      
      private var §7!I§:Boolean;
      
      private var § Q§:Number;
      
      private var §<e§:Boolean;
      
      private var §[1§:Boolean;
      
      private var §4v§:Number;
      
      private var §5!E§:Number;
      
      private var §&3§:Number;
      
      private var native:Number;
      
      public function §&!?§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§[!+§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§@$§ = param7;
         this.§function§ = param8;
         this.§7! § = param9;
         this.§7!I§ = param10;
         this.§ Q§ = param11;
         this.§<e§ = param12;
         this.§[1§ = param6;
         this.§4v§ = param13;
      }
      
      public function get type() : int
      {
         return this.§[!+§;
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
      
      public function get § !C§() : Boolean
      {
         return this.§@$§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§function§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§7! §;
      }
      
      public function get §>]§() : Boolean
      {
         return this.§7!I§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§ Q§;
      }
      
      public function get §[7§() : Boolean
      {
         return this.§<e§;
      }
      
      public function get §%!7§() : Boolean
      {
         return this.§[1§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§4v§;
      }
      
      public function get axisX() : Number
      {
         return this.§5!E§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§5!E§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§&3§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§&3§ = param1;
      }
      
      public function get §@M§() : Number
      {
         return this.native;
      }
      
      public function set §@M§(param1:Number) : void
      {
         this.native = param1;
      }
      
      public function §1O§(param1:§0r§, param2:§0r§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§[!+§)
         {
            case §<m§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§[1§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §!E§.§">§(param1,param2);
               _loc3_.Initialize(param1.§?n§(),param2.§?n§(),param1.§?n§().GetPosition(),param2.§?n§().GetPosition());
               return _loc3_;
            case §%+§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§[1§;
               _loc4_.Initialize(param1.§?n§(),param2.§?n§(),param1.§?n§().GetWorldCenter());
               return _loc4_;
            case §%!5§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§[1§;
               _loc5_.Initialize(param1.§?n§(),param2.§?n§(),param1.§?n§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§@$§;
               _loc5_.enableMotor = this.§7!I§;
               _loc5_.motorSpeed = this.§ Q§;
               _loc5_.upperAngle = this.§7! §;
               _loc5_.lowerAngle = this.§function§;
               _loc5_.maxMotorTorque = this.§4v§;
               return _loc5_;
            case §?9§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§[1§;
               _loc6_.Initialize(param1.§?n§(),param2.§?n§(),param1.§?n§().GetWorldCenter(),new b2Vec2(this.§5!E§,this.§&3§));
               _loc6_.enableLimit = !!this.§<e§ ? false : Boolean(this.§@$§);
               _loc6_.lowerTranslation = this.§function§;
               _loc6_.upperTranslation = this.§7! §;
               _loc6_.enableMotor = this.§7!I§;
               _loc6_.maxMotorForce = this.§4v§;
               _loc6_.motorSpeed = this.§ Q§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
