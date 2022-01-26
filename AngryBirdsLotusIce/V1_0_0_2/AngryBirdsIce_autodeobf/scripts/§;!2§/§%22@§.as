package §;!2§
{
   import §"o§.§ M§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import §finally§.§%!7§;
   import flash.geom.Point;
   
   public class §"@§
   {
      
      public static const §3!6§:uint = 1;
      
      public static const §^+§:uint = 2;
      
      public static const §6B§:uint = 3;
      
      public static const §'B§:uint = 4;
      
      public static const §0!6§:uint = 5;
       
      
      private var §>F§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §&!6§:Boolean;
      
      private var §6M§:Number;
      
      private var §=I§:Number;
      
      private var §&!+§:Boolean;
      
      private var §+&§:Number;
      
      private var §[i§:Boolean;
      
      private var §@-§:Boolean;
      
      private var §`M§:Number;
      
      private var §6%§:Number;
      
      private var §<!B§:Number;
      
      private var §]J§:Number;
      
      public function §"@§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§>F§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§&!6§ = param7;
         this.§6M§ = param8;
         this.§=I§ = param9;
         this.§&!+§ = param10;
         this.§+&§ = param11;
         this.§[i§ = param12;
         this.§@-§ = param6;
         this.§`M§ = param13;
      }
      
      public function get type() : int
      {
         return this.§>F§;
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
      
      public function get §8#§() : Boolean
      {
         return this.§&!6§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§6M§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§=I§;
      }
      
      public function get §]w§() : Boolean
      {
         return this.§&!+§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§+&§;
      }
      
      public function get §'Z§() : Boolean
      {
         return this.§[i§;
      }
      
      public function get §<y§() : Boolean
      {
         return this.§@-§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§`M§;
      }
      
      public function get axisX() : Number
      {
         return this.§6%§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§6%§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§<!B§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§<!B§ = param1;
      }
      
      public function get §&@§() : Number
      {
         return this.§]J§;
      }
      
      public function set §&@§(param1:Number) : void
      {
         this.§]J§ = param1;
      }
      
      public function §3H§(param1:§%!7§, param2:§%!7§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§>F§)
         {
            case §3!6§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§@-§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = § M§.§-d§(param1,param2);
               _loc3_.Initialize(param1.§+!-§(),param2.§+!-§(),param1.§+!-§().GetPosition(),param2.§+!-§().GetPosition());
               return _loc3_;
            case §^+§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§@-§;
               _loc4_.Initialize(param1.§+!-§(),param2.§+!-§(),param1.§+!-§().GetWorldCenter());
               return _loc4_;
            case §6B§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§@-§;
               _loc5_.Initialize(param1.§+!-§(),param2.§+!-§(),param1.§+!-§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = this.§&!6§;
               _loc5_.enableMotor = this.§&!+§;
               _loc5_.motorSpeed = this.§+&§;
               _loc5_.upperAngle = this.§=I§;
               _loc5_.lowerAngle = this.§6M§;
               _loc5_.maxMotorTorque = this.§`M§;
               return _loc5_;
            case §'B§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§@-§;
               _loc6_.Initialize(param1.§+!-§(),param2.§+!-§(),param1.§+!-§().GetWorldCenter(),new b2Vec2(this.§6%§,this.§<!B§));
               _loc6_.enableLimit = this.§&!6§;
               _loc6_.lowerTranslation = this.§6M§;
               _loc6_.upperTranslation = this.§=I§;
               _loc6_.enableMotor = this.§&!+§;
               _loc6_.maxMotorForce = this.§`M§;
               _loc6_.motorSpeed = this.§+&§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
