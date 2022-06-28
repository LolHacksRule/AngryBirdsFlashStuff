package §5<§
{
   import § var§.§!u§;
   import §&H§.b2Vec2;
   import §2!'§.b2DistanceJointDef;
   import §2!'§.b2JointDef;
   import §2!'§.b2PrismaticJointDef;
   import §2!'§.b2RevoluteJointDef;
   import §2!'§.b2WeldJointDef;
   import §40§.§5G§;
   import flash.geom.Point;
   
   public class §-H§
   {
      
      public static const §@!L§:uint = 1;
      
      public static const §3!W§:uint = 2;
      
      public static const §2h§:uint = 3;
      
      public static const §'"#§:uint = 4;
      
      public static const §1!4§:uint = 5;
       
      
      private var §;!L§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §9!h§:Boolean;
      
      private var §%!a§:Number;
      
      private var §37§:Number;
      
      private var §!7§:Boolean;
      
      private var §1#§:Number;
      
      private var §4%§:Boolean;
      
      private var §"8§:Boolean;
      
      private var §-9§:Number;
      
      private var § S§:Number;
      
      private var §2!"§:Number;
      
      private var §<!'§:Number;
      
      public function §-H§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§;!L§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§9!h§ = param7;
         this.§%!a§ = param8;
         this.§37§ = param9;
         this.§!7§ = param10;
         this.§1#§ = param11;
         this.§4%§ = param12;
         this.§"8§ = param6;
         this.§-9§ = param13;
      }
      
      public function get type() : int
      {
         return this.§;!L§;
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
      
      public function get §0![§() : Boolean
      {
         return this.§9!h§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§%!a§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§37§;
      }
      
      public function get §3A§() : Boolean
      {
         return this.§!7§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§1#§;
      }
      
      public function get §9!O§() : Boolean
      {
         return this.§4%§;
      }
      
      public function get §&!F§() : Boolean
      {
         return this.§"8§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§-9§;
      }
      
      public function get axisX() : Number
      {
         return this.§ S§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§ S§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§2!"§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§2!"§ = param1;
      }
      
      public function get §2,§() : Number
      {
         return this.§<!'§;
      }
      
      public function set §2,§(param1:Number) : void
      {
         this.§<!'§ = param1;
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
         _loc1_.limit = this.§0![§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.motor = this.§3A§;
         _loc1_.motorSpeed = this.motorSpeed;
         _loc1_.backAndForth = this.§9!O§;
         _loc1_.collideConnected = this.§&!F§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.axisX = this.axisX;
         _loc1_.axisY = this.axisY;
         if(!isNaN(this.§2,§))
         {
            _loc1_.destroyTimer = this.§2,§;
         }
         return _loc1_;
      }
      
      public function §`!h§(param1:§!u§, param2:§!u§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§;!L§)
         {
            case §@!L§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§"8§;
               _loc3_.§'S§ = 4;
               _loc3_.§&!u§ = 0.5;
               _loc3_.length = §5G§.§7!g§(param1,param2);
               _loc3_.§`!D§(param1.§63§(),param2.§63§(),param1.§63§().GetPosition(),param2.§63§().GetPosition());
               return _loc3_;
            case §3!W§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§"8§;
               _loc4_.§`!D§(param1.§63§(),param2.§63§(),param1.§63§().§58§());
               return _loc4_;
            case §2h§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§"8§;
               _loc5_.§`!D§(param1.§63§(),param2.§63§(),param1.§63§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§&!A§ = !!this.§4%§ ? false : Boolean(this.§9!h§);
               _loc5_.§ !q§ = this.§!7§;
               _loc5_.motorSpeed = this.§1#§;
               _loc5_.§6V§ = this.§37§;
               _loc5_.§9!@§ = this.§%!a§;
               _loc5_.§;U§ = this.§-9§;
               return _loc5_;
            case §'"#§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§"8§;
               _loc6_.§`!D§(param1.§63§(),param2.§63§(),param1.§63§().§58§(),new b2Vec2(this.§ S§,this.§2!"§));
               _loc6_.§&!A§ = !!this.§4%§ ? false : Boolean(this.§9!h§);
               _loc6_.§;!R§ = this.§%!a§;
               _loc6_.§ use§ = this.§37§;
               _loc6_.§ !q§ = this.§!7§;
               _loc6_.§;!Q§ = this.§-9§;
               _loc6_.motorSpeed = this.§1#§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
