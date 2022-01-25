package §`!C§
{
   import §&!L§.b2Vec2;
   import §4A§.§&_§;
   import §6$§.b2DistanceJointDef;
   import §6$§.b2JointDef;
   import §6$§.b2PrismaticJointDef;
   import §6$§.b2RevoluteJointDef;
   import §6$§.b2WeldJointDef;
   import §;+§.§[!3§;
   import flash.geom.Point;
   
   public class §2!K§
   {
      
      public static const §'%§:uint = 1;
      
      public static const §%!Y§:uint = 2;
      
      public static const §!!6§:uint = 3;
      
      public static const §^!`§:uint = 4;
      
      public static const §6m§:uint = 5;
       
      
      private var §!4§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §?!W§:Boolean;
      
      private var §0!8§:Number;
      
      private var §2J§:Number;
      
      private var §^!0§:Boolean;
      
      private var §^8§:Number;
      
      private var §"2§:Boolean;
      
      private var §7w§:Boolean;
      
      private var §4!$§:Number;
      
      private var §8!G§:Number;
      
      private var §8!N§:Number;
      
      private var §+!9§:Number;
      
      public function §2!K§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§!4§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§?!W§ = param7;
         this.§0!8§ = param8;
         this.§2J§ = param9;
         this.§^!0§ = param10;
         this.§^8§ = param11;
         this.§"2§ = param12;
         this.§7w§ = param6;
         this.§4!$§ = param13;
      }
      
      public function get type() : int
      {
         return this.§!4§;
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
      
      public function get §6x§() : Boolean
      {
         return this.§?!W§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§0!8§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§2J§;
      }
      
      public function get §5H§() : Boolean
      {
         return this.§^!0§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§^8§;
      }
      
      public function get §;!7§() : Boolean
      {
         return this.§"2§;
      }
      
      public function get §6;§() : Boolean
      {
         return this.§7w§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§4!$§;
      }
      
      public function get axisX() : Number
      {
         return this.§8!G§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§8!G§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§8!N§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§8!N§ = param1;
      }
      
      public function get §`y§() : Number
      {
         return this.§+!9§;
      }
      
      public function set §`y§(param1:Number) : void
      {
         this.§+!9§ = param1;
      }
      
      public function §2!Z§(param1:§[!3§, param2:§[!3§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§!4§)
         {
            case §'%§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§7w§;
               _loc3_.§#;§ = 4;
               _loc3_.§8u§ = 0.5;
               _loc3_.length = §&_§.§4!F§(param1,param2);
               _loc3_.§1!5§(param1.§1!d§(),param2.§1!d§(),param1.§1!d§().GetPosition(),param2.§1!d§().GetPosition());
               return _loc3_;
            case §%!Y§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§7w§;
               _loc4_.§1!5§(param1.§1!d§(),param2.§1!d§(),param1.§1!d§().GetWorldCenter());
               return _loc4_;
            case §!!6§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§7w§;
               _loc5_.§1!5§(param1.§1!d§(),param2.§1!d§(),param1.§1!d§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§>C§ = this.§?!W§;
               _loc5_.§+g§ = this.§^!0§;
               _loc5_.motorSpeed = this.§^8§;
               _loc5_.§'!7§ = this.§2J§;
               _loc5_.§=!P§ = this.§0!8§;
               _loc5_.§'!N§ = this.§4!$§;
               return _loc5_;
            case §^!`§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§7w§;
               _loc6_.§1!5§(param1.§1!d§(),param2.§1!d§(),param1.§1!d§().GetWorldCenter(),new b2Vec2(this.§8!G§,this.§8!N§));
               _loc6_.§>C§ = !!this.§"2§ ? false : Boolean(this.§?!W§);
               _loc6_.§"!Y§ = this.§0!8§;
               _loc6_.§[%§ = this.§2J§;
               _loc6_.§+g§ = this.§^!0§;
               _loc6_.§15§ = this.§4!$§;
               _loc6_.motorSpeed = this.§^8§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
