package §1!A§
{
   import §4n§.§@!4§;
   import §;'§.§?!D§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §9P§
   {
      
      public static const §3!8§:uint = 1;
      
      public static const §=f§:uint = 2;
      
      public static const §@M§:uint = 3;
      
      public static const §1p§:uint = 4;
      
      public static const §7!7§:uint = 5;
       
      
      private var §`_§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §+n§:Boolean;
      
      private var §,i§:Number;
      
      private var §5!!§:Number;
      
      private var §1!<§:Boolean;
      
      private var §;!9§:Number;
      
      private var §6!;§:Boolean;
      
      private var § !&§:Boolean;
      
      private var §1!'§:Number;
      
      private var §6k§:Number;
      
      private var §,!N§:Number;
      
      private var §@!;§:Number;
      
      public function §9P§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§`_§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§+n§ = param7;
         this.§,i§ = param8;
         this.§5!!§ = param9;
         this.§1!<§ = param10;
         this.§;!9§ = param11;
         this.§6!;§ = param12;
         this.§ !&§ = param6;
         this.§1!'§ = param13;
      }
      
      public function get type() : int
      {
         return this.§`_§;
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
      
      public function get §-$§() : Boolean
      {
         return this.§+n§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§,i§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§5!!§;
      }
      
      public function get §<D§() : Boolean
      {
         return this.§1!<§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§;!9§;
      }
      
      public function get §!!!§() : Boolean
      {
         return this.§6!;§;
      }
      
      public function get §2!9§() : Boolean
      {
         return this.§ !&§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§1!'§;
      }
      
      public function get axisX() : Number
      {
         return this.§6k§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§6k§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§,!N§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§,!N§ = param1;
      }
      
      public function get §&!!§() : Number
      {
         return this.§@!;§;
      }
      
      public function set §&!!§(param1:Number) : void
      {
         this.§@!;§ = param1;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.type = this.type;
         _loc1_.index1 = this.index1;
         _loc1_.index2 = this.index2;
         _loc1_.x1 = this.point1.x;
         _loc1_.x2 = this.point2.x;
         _loc1_.y1 = this.point1.y;
         _loc1_.y2 = this.point2.y;
         _loc1_.limit = this.§-$§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.motor = this.§<D§;
         _loc1_.motorSpeed = this.motorSpeed;
         _loc1_.backAndForth = this.§!!!§;
         _loc1_.collideConnected = this.§2!9§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.axisX = this.axisX;
         _loc1_.axisY = this.axisY;
         if(!isNaN(this.§&!!§))
         {
            _loc1_.destroyTimer = this.§&!!§;
         }
         return _loc1_;
      }
      
      public function §?`§(param1:§@!4§, param2:§@!4§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§`_§)
         {
            case §3!8§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§ !&§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = §?!D§.§-r§(param1,param2);
               _loc3_.Initialize(param1.§^C§(),param2.§^C§(),param1.§^C§().GetPosition(),param2.§^C§().GetPosition());
               return _loc3_;
            case §=f§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§ !&§;
               _loc4_.Initialize(param1.§^C§(),param2.§^C§(),param1.§^C§().GetWorldCenter());
               return _loc4_;
            case §@M§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§ !&§;
               _loc5_.Initialize(param1.§^C§(),param2.§^C§(),param1.§^C§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = !!this.§6!;§ ? false : Boolean(this.§+n§);
               _loc5_.enableMotor = this.§1!<§;
               _loc5_.motorSpeed = this.§;!9§;
               _loc5_.upperAngle = this.§5!!§;
               _loc5_.lowerAngle = this.§,i§;
               _loc5_.maxMotorTorque = this.§1!'§;
               return _loc5_;
            case §1p§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§ !&§;
               _loc6_.Initialize(param1.§^C§(),param2.§^C§(),param1.§^C§().GetWorldCenter(),new b2Vec2(this.§6k§,this.§,!N§));
               _loc6_.enableLimit = !!this.§6!;§ ? false : Boolean(this.§+n§);
               _loc6_.lowerTranslation = this.§,i§;
               _loc6_.upperTranslation = this.§5!!§;
               _loc6_.enableMotor = this.§1!<§;
               _loc6_.maxMotorForce = this.§1!'§;
               _loc6_.motorSpeed = this.§;!9§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
