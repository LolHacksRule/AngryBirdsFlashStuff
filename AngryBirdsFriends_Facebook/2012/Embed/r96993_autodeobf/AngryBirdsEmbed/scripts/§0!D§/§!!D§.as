package §0!D§
{
   import §#!1§.§4!,§;
   import §`i§.§2W§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §!!D§
   {
      
      public static const §`t§:uint = 1;
      
      public static const §-z§:uint = 2;
      
      public static const §2%§:uint = 3;
      
      public static const § else§:uint = 4;
      
      public static const §[C§:uint = 5;
       
      
      private var §3]§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §?'§:Boolean;
      
      private var § w§:Number;
      
      private var §4!9§:Number;
      
      private var §!!I§:Boolean;
      
      private var §3,§:Number;
      
      private var §'j§:Boolean;
      
      private var §^X§:Boolean;
      
      private var §"[§:Number;
      
      private var §-c§:Number;
      
      private var §<w§:Number;
      
      private var §2!#§:Number;
      
      public function §!!D§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§3]§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§?'§ = param7;
         this.§ w§ = param8;
         this.§4!9§ = param9;
         this.§!!I§ = param10;
         this.§3,§ = param11;
         this.§'j§ = param12;
         this.§^X§ = param6;
         this.§"[§ = param13;
      }
      
      public function get type() : int
      {
         return this.§3]§;
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
      
      public function get §#!"§() : Boolean
      {
         return this.§?'§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§ w§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§4!9§;
      }
      
      public function get §#c§() : Boolean
      {
         return this.§!!I§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§3,§;
      }
      
      public function get §<%§() : Boolean
      {
         return this.§'j§;
      }
      
      public function get get() : Boolean
      {
         return this.§^X§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§"[§;
      }
      
      public function get axisX() : Number
      {
         return this.§-c§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§-c§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§<w§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§<w§ = param1;
      }
      
      public function get §9L§() : Number
      {
         return this.§2!#§;
      }
      
      public function set §9L§(param1:Number) : void
      {
         this.§2!#§ = param1;
      }
      
      public function §`n§(param1:§4!,§, param2:§4!,§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§3]§)
         {
            case §`t§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§^X§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §2W§.§&5§(param1,param2);
               _loc3_.Initialize(param1.§!v§(),param2.§!v§(),param1.§!v§().GetPosition(),param2.§!v§().GetPosition());
               return _loc3_;
            case §-z§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§^X§;
               _loc4_.Initialize(param1.§!v§(),param2.§!v§(),param1.§!v§().GetWorldCenter());
               return _loc4_;
            case §2%§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§^X§;
               _loc5_.Initialize(param1.§!v§(),param2.§!v§(),param1.§!v§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§?'§;
               _loc5_.enableMotor = this.§!!I§;
               _loc5_.motorSpeed = this.§3,§;
               _loc5_.upperAngle = this.§4!9§;
               _loc5_.lowerAngle = this.§ w§;
               _loc5_.maxMotorTorque = this.§"[§;
               return _loc5_;
            case § else§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§^X§;
               _loc6_.Initialize(param1.§!v§(),param2.§!v§(),param1.§!v§().GetWorldCenter(),new b2Vec2(this.§-c§,this.§<w§));
               _loc6_.enableLimit = !!this.§'j§ ? false : Boolean(this.§?'§);
               _loc6_.lowerTranslation = this.§ w§;
               _loc6_.upperTranslation = this.§4!9§;
               _loc6_.enableMotor = this.§!!I§;
               _loc6_.maxMotorForce = this.§"[§;
               _loc6_.motorSpeed = this.§3,§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
