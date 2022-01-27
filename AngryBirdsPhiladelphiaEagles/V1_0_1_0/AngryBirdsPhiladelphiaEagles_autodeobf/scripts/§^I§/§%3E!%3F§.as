package §^I§
{
   import §3F§.§2!3§;
   import §>2§.§4h§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §>!?§
   {
      
      public static const §>l§:uint = 1;
      
      public static const § ^§:uint = 2;
      
      public static const §;a§:uint = 3;
      
      public static const §;k§:uint = 4;
      
      public static const §9!H§:uint = 5;
       
      
      private var §0J§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §7!7§:Boolean;
      
      private var §9m§:Number;
      
      private var §,'§:Number;
      
      private var §#;§:Boolean;
      
      private var §>!>§:Number;
      
      private var §]!$§:Boolean;
      
      private var §>B§:Boolean;
      
      private var §,V§:Number;
      
      private var §^!1§:Number;
      
      private var §&!#§:Number;
      
      private var §<!;§:Number;
      
      public function §>!?§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§0J§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§7!7§ = param7;
         this.§9m§ = param8;
         this.§,'§ = param9;
         this.§#;§ = param10;
         this.§>!>§ = param11;
         this.§]!$§ = param12;
         this.§>B§ = param6;
         this.§,V§ = param13;
      }
      
      public function get type() : int
      {
         return this.§0J§;
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
      
      public function get §[!9§() : Boolean
      {
         return this.§7!7§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§9m§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§,'§;
      }
      
      public function get §&u§() : Boolean
      {
         return this.§#;§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§>!>§;
      }
      
      public function get §1!1§() : Boolean
      {
         return this.§]!$§;
      }
      
      public function get §=`§() : Boolean
      {
         return this.§>B§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§,V§;
      }
      
      public function get axisX() : Number
      {
         return this.§^!1§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§^!1§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§&!#§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§&!#§ = param1;
      }
      
      public function get §9!3§() : Number
      {
         return this.§<!;§;
      }
      
      public function set §9!3§(param1:Number) : void
      {
         this.§<!;§ = param1;
      }
      
      public function §3c§(param1:§2!3§, param2:§2!3§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§0J§)
         {
            case §>l§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§>B§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §4h§.§?d§(param1,param2);
               _loc3_.Initialize(param1.§?!M§(),param2.§?!M§(),param1.§?!M§().GetPosition(),param2.§?!M§().GetPosition());
               return _loc3_;
            case § ^§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§>B§;
               _loc4_.Initialize(param1.§?!M§(),param2.§?!M§(),param1.§?!M§().GetWorldCenter());
               return _loc4_;
            case §;a§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§>B§;
               _loc5_.Initialize(param1.§?!M§(),param2.§?!M§(),param1.§?!M§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§7!7§;
               _loc5_.enableMotor = this.§#;§;
               _loc5_.motorSpeed = this.§>!>§;
               _loc5_.upperAngle = this.§,'§;
               _loc5_.lowerAngle = this.§9m§;
               _loc5_.maxMotorTorque = this.§,V§;
               return _loc5_;
            case §;k§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§>B§;
               _loc6_.Initialize(param1.§?!M§(),param2.§?!M§(),param1.§?!M§().GetWorldCenter(),new b2Vec2(this.§^!1§,this.§&!#§));
               _loc6_.enableLimit = !!this.§]!$§ ? false : Boolean(this.§7!7§);
               _loc6_.lowerTranslation = this.§9m§;
               _loc6_.upperTranslation = this.§,'§;
               _loc6_.enableMotor = this.§#;§;
               _loc6_.maxMotorForce = this.§,V§;
               _loc6_.motorSpeed = this.§>!>§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
