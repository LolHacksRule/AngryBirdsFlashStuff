package §^G§
{
   import §6A§.§ !§;
   import §^!A§.§;!%§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §`8§
   {
      
      public static const §3r§:uint = 1;
      
      public static const §'X§:uint = 2;
      
      public static const §12§:uint = 3;
      
      public static const §#!K§:uint = 4;
      
      public static const §9!+§:uint = 5;
       
      
      private var §<"§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §'! §:Boolean;
      
      private var §?N§:Number;
      
      private var §"M§:Number;
      
      private var §8x§:Boolean;
      
      private var §-J§:Number;
      
      private var § var§:Boolean;
      
      private var §@y§:Boolean;
      
      private var §,"§:Number;
      
      private var §<!J§:Number;
      
      private var §?!§:Number;
      
      private var §&G§:Number;
      
      public function §`8§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§<"§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§'! § = param7;
         this.§?N§ = param8;
         this.§"M§ = param9;
         this.§8x§ = param10;
         this.§-J§ = param11;
         this.§ var§ = param12;
         this.§@y§ = param6;
         this.§,"§ = param13;
      }
      
      public function get type() : int
      {
         return this.§<"§;
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
      
      public function get §1D§() : Boolean
      {
         return this.§'! §;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§?N§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§"M§;
      }
      
      public function get §8l§() : Boolean
      {
         return this.§8x§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§-J§;
      }
      
      public function get §',§() : Boolean
      {
         return this.§ var§;
      }
      
      public function get §@=§() : Boolean
      {
         return this.§@y§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§,"§;
      }
      
      public function get axisX() : Number
      {
         return this.§<!J§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§<!J§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§?!§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§?!§ = param1;
      }
      
      public function get §=e§() : Number
      {
         return this.§&G§;
      }
      
      public function set §=e§(param1:Number) : void
      {
         this.§&G§ = param1;
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
         _loc1_.limit = this.§1D§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.motor = this.§8l§;
         _loc1_.motorSpeed = this.motorSpeed;
         _loc1_.backAndForth = this.§',§;
         _loc1_.collideConnected = this.§@=§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.axisX = this.axisX;
         _loc1_.axisY = this.axisY;
         if(!isNaN(this.§=e§))
         {
            _loc1_.destroyTimer = this.§=e§;
         }
         return _loc1_;
      }
      
      public function §?7§(param1:§;!%§, param2:§;!%§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§<"§)
         {
            case §3r§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§@y§;
               _loc3_.frequencyHz = 4;
               _loc3_.dampingRatio = 0.5;
               _loc3_.length = § !§.§7F§(param1,param2);
               _loc3_.Initialize(param1.§'[§(),param2.§'[§(),param1.§'[§().GetPosition(),param2.§'[§().GetPosition());
               return _loc3_;
            case §'X§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§@y§;
               _loc4_.Initialize(param1.§'[§(),param2.§'[§(),param1.§'[§().GetWorldCenter());
               return _loc4_;
            case §12§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§@y§;
               _loc5_.Initialize(param1.§'[§(),param2.§'[§(),param1.§'[§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.enableLimit = !!this.§ var§ ? false : Boolean(this.§'! §);
               _loc5_.enableMotor = this.§8x§;
               _loc5_.motorSpeed = this.§-J§;
               _loc5_.upperAngle = this.§"M§;
               _loc5_.lowerAngle = this.§?N§;
               _loc5_.maxMotorTorque = this.§,"§;
               return _loc5_;
            case §#!K§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§@y§;
               _loc6_.Initialize(param1.§'[§(),param2.§'[§(),param1.§'[§().GetWorldCenter(),new b2Vec2(this.§<!J§,this.§?!§));
               _loc6_.enableLimit = !!this.§ var§ ? false : Boolean(this.§'! §);
               _loc6_.lowerTranslation = this.§?N§;
               _loc6_.upperTranslation = this.§"M§;
               _loc6_.enableMotor = this.§8x§;
               _loc6_.maxMotorForce = this.§,"§;
               _loc6_.motorSpeed = this.§-J§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
