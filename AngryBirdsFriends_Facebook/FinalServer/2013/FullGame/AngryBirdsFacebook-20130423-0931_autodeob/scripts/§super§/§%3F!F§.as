package §super§
{
   import §,,§.b2DistanceJointDef;
   import §,,§.b2JointDef;
   import §,,§.b2PrismaticJointDef;
   import §,,§.b2RevoluteJointDef;
   import §,,§.b2WeldJointDef;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §`!G§.§[!8§;
   import flash.geom.Point;
   
   public class §?!F§
   {
      
      public static const §=!m§:uint = 1;
      
      public static const §>!8§:uint = 2;
      
      public static const §?<§:uint = 3;
      
      public static const §5!b§:uint = 4;
      
      public static const §8!B§:uint = 5;
       
      
      private var §'!'§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §8F§:Boolean;
      
      private var §8!q§:Number;
      
      private var §!!#§:Number;
      
      private var §2!u§:Boolean;
      
      private var §-!`§:Number;
      
      private var §>!s§:Boolean;
      
      private var §@B§:Boolean;
      
      private var §1"E§:Number;
      
      private var §&$§:Number;
      
      private var §&">§:Number;
      
      private var § !]§:Number;
      
      public function §?!F§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§'!'§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§8F§ = param7;
         this.§8!q§ = param8;
         this.§!!#§ = param9;
         this.§2!u§ = param10;
         this.§-!`§ = param11;
         this.§>!s§ = param12;
         this.§@B§ = param6;
         this.§1"E§ = param13;
      }
      
      public function get type() : int
      {
         return this.§'!'§;
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
      
      public function get §`^§() : Boolean
      {
         return this.§8F§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§8!q§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§!!#§;
      }
      
      public function get §]!T§() : Boolean
      {
         return this.§2!u§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§-!`§;
      }
      
      public function get §13§() : Boolean
      {
         return this.§>!s§;
      }
      
      public function get §+k§() : Boolean
      {
         return this.§@B§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§1"E§;
      }
      
      public function get axisX() : Number
      {
         return this.§&$§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§&$§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§&">§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§&">§ = param1;
      }
      
      public function get §<3§() : Number
      {
         return this.§ !]§;
      }
      
      public function set §<3§(param1:Number) : void
      {
         this.§ !]§ = param1;
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
         _loc1_.limit = this.§`^§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.motor = this.§]!T§;
         _loc1_.motorSpeed = this.motorSpeed;
         _loc1_.backAndForth = this.§13§;
         _loc1_.collideConnected = this.§+k§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.axisX = this.axisX;
         _loc1_.axisY = this.axisY;
         if(!isNaN(this.§<3§))
         {
            _loc1_.destroyTimer = this.§<3§;
         }
         return _loc1_;
      }
      
      public function §7"S§(param1:§[!8§, param2:§[!8§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§'!'§)
         {
            case §=!m§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§@B§;
               _loc3_.§0c§ = 4;
               _loc3_.§6!i§ = 0.5;
               _loc3_.length = §'!S§.§+'§(param1,param2);
               _loc3_.§6!Q§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
               return _loc3_;
            case §>!8§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§@B§;
               _loc4_.§6!Q§(param1.getBody(),param2.getBody(),param1.getBody().§2]§());
               return _loc4_;
            case §?<§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§@B§;
               _loc5_.§6!Q§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§5!!§ = !!this.§>!s§ ? false : Boolean(this.§8F§);
               _loc5_.§<!0§ = this.§2!u§;
               _loc5_.motorSpeed = this.§-!`§;
               _loc5_.§>p§ = this.§!!#§;
               _loc5_.§?X§ = this.§8!q§;
               _loc5_.§4f§ = this.§1"E§;
               return _loc5_;
            case §5!b§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§@B§;
               _loc6_.§6!Q§(param1.getBody(),param2.getBody(),param1.getBody().§2]§(),new b2Vec2(this.§&$§,this.§&">§));
               _loc6_.§5!!§ = !!this.§>!s§ ? false : Boolean(this.§8F§);
               _loc6_.§9V§ = this.§8!q§;
               _loc6_.§3!t§ = this.§!!#§;
               _loc6_.§<!0§ = this.§2!u§;
               _loc6_.§%!7§ = this.§1"E§;
               _loc6_.motorSpeed = this.§-!`§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
