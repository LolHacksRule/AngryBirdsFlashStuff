package §9§
{
   import §!!7§.b2DistanceJointDef;
   import §!!7§.b2JointDef;
   import §!!7§.b2PrismaticJointDef;
   import §!!7§.b2RevoluteJointDef;
   import §!!7§.b2WeldJointDef;
   import §5!L§.§,!&§;
   import §<L§.§!!G§;
   import §@![§.b2Vec2;
   import flash.geom.Point;
   
   public class §67§
   {
      
      public static const §&I§:uint = 1;
      
      public static const §2-§:uint = 2;
      
      public static const §5'§:uint = 3;
      
      public static const §;!n§:uint = 4;
      
      public static const §3!9§:uint = 5;
       
      
      private var §8!`§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §>!L§:Boolean;
      
      private var §#-§:Number;
      
      private var §!]§:Number;
      
      private var §6_§:Boolean;
      
      private var §?G§:Number;
      
      private var §9!#§:Boolean;
      
      private var §9f§:Boolean;
      
      private var §-,§:Number;
      
      private var §`I§:Number;
      
      private var §'C§:Number;
      
      private var §&&§:Number;
      
      public function §67§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§8!`§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§>!L§ = param7;
         this.§#-§ = param8;
         this.§!]§ = param9;
         this.§6_§ = param10;
         this.§?G§ = param11;
         this.§9!#§ = param12;
         this.§9f§ = param6;
         this.§-,§ = param13;
      }
      
      public function get type() : int
      {
         return this.§8!`§;
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
      
      public function get §&n§() : Boolean
      {
         return this.§>!L§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§#-§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§!]§;
      }
      
      public function get §8$§() : Boolean
      {
         return this.§6_§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§?G§;
      }
      
      public function get §'R§() : Boolean
      {
         return this.§9!#§;
      }
      
      public function get §>F§() : Boolean
      {
         return this.§9f§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§-,§;
      }
      
      public function get axisX() : Number
      {
         return this.§`I§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§`I§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§'C§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§'C§ = param1;
      }
      
      public function get §?!O§() : Number
      {
         return this.§&&§;
      }
      
      public function set §?!O§(param1:Number) : void
      {
         this.§&&§ = param1;
      }
      
      public function §@!W§(param1:§,!&§, param2:§,!&§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§8!`§)
         {
            case §&I§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§9f§;
               _loc3_.§6U§ = 4;
               _loc3_.§%R§ = 0.5;
               _loc3_.length = §!!G§.§+!8§(param1,param2);
               _loc3_.§1!O§(param1.§;G§(),param2.§;G§(),param1.§;G§().GetPosition(),param2.§;G§().GetPosition());
               return _loc3_;
            case §2-§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§9f§;
               _loc4_.§1!O§(param1.§;G§(),param2.§;G§(),param1.§;G§().GetWorldCenter());
               return _loc4_;
            case §5'§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§9f§;
               _loc5_.§1!O§(param1.§;G§(),param2.§;G§(),param1.§;G§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§#!D§ = this.§>!L§;
               _loc5_.get = this.§6_§;
               _loc5_.motorSpeed = this.§?G§;
               _loc5_.§>f§ = this.§!]§;
               _loc5_.§@!'§ = this.§#-§;
               _loc5_.§[!G§ = this.§-,§;
               return _loc5_;
            case §;!n§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§9f§;
               _loc6_.§1!O§(param1.§;G§(),param2.§;G§(),param1.§;G§().GetWorldCenter(),new b2Vec2(this.§`I§,this.§'C§));
               _loc6_.§#!D§ = !!this.§9!#§ ? false : Boolean(this.§>!L§);
               _loc6_.§^!e§ = this.§#-§;
               _loc6_.§'!T§ = this.§!]§;
               _loc6_.get = this.§6_§;
               _loc6_.§3!8§ = this.§-,§;
               _loc6_.motorSpeed = this.§?G§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
