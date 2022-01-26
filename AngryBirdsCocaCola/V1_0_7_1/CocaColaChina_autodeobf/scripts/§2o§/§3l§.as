package §2o§
{
   import §4A§.§&_§;
   import §6$§.b2DistanceJointDef;
   import §6$§.b2JointDef;
   import §6$§.b2PrismaticJointDef;
   import §6$§.b2RevoluteJointDef;
   import §6$§.b2WeldJointDef;
   import §9C§.§4!G§;
   import §<!8§.b2Vec2;
   import flash.geom.Point;
   
   public class §3l§
   {
      
      public static const §6x§:uint = 1;
      
      public static const §5H§:uint = 2;
      
      public static const §;!7§:uint = 3;
      
      public static const §6;§:uint = 4;
      
      public static const §`y§:uint = 5;
       
      
      private var §%!5§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §"Y§:Boolean;
      
      private var §7B§:Number;
      
      private var §3G§:Number;
      
      private var §`!C§:Boolean;
      
      private var §2!K§:Number;
      
      private var §!4§:Boolean;
      
      private var §?!W§:Boolean;
      
      private var §0!8§:Number;
      
      private var §2J§:Number;
      
      private var §^!0§:Number;
      
      private var §^8§:Number;
      
      public function §3l§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§%!5§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§"Y§ = param7;
         this.§7B§ = param8;
         this.§3G§ = param9;
         this.§`!C§ = param10;
         this.§2!K§ = param11;
         this.§!4§ = param12;
         this.§?!W§ = param6;
         this.§0!8§ = param13;
      }
      
      public function get type() : int
      {
         return this.§%!5§;
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
      
      public function get §"2§() : Boolean
      {
         return this.§"Y§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§7B§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§3G§;
      }
      
      public function get §7w§() : Boolean
      {
         return this.§`!C§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§2!K§;
      }
      
      public function get §4!$§() : Boolean
      {
         return this.§!4§;
      }
      
      public function get §8!G§() : Boolean
      {
         return this.§?!W§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§0!8§;
      }
      
      public function get axisX() : Number
      {
         return this.§2J§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§2J§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§^!0§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§^!0§ = param1;
      }
      
      public function get §8!N§() : Number
      {
         return this.§^8§;
      }
      
      public function set §8!N§(param1:Number) : void
      {
         this.§^8§ = param1;
      }
      
      public function §+!9§(param1:§4!G§, param2:§4!G§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§%!5§)
         {
            case §6x§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§?!W§;
               _loc3_.§#;§ = 4;
               _loc3_.§8u§ = 0.5;
               _loc3_.length = §&_§.§4!F§(param1,param2);
               _loc3_.§,?§(param1.§@!?§(),param2.§@!?§(),param1.§@!?§().GetPosition(),param2.§@!?§().GetPosition());
               return _loc3_;
            case §5H§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§?!W§;
               _loc4_.§,?§(param1.§@!?§(),param2.§@!?§(),param1.§@!?§().GetWorldCenter());
               return _loc4_;
            case §;!7§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§?!W§;
               _loc5_.§,?§(param1.§@!?§(),param2.§@!?§(),param1.§@!?§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§>C§ = this.§"Y§;
               _loc5_.§+g§ = this.§`!C§;
               _loc5_.motorSpeed = this.§2!K§;
               _loc5_.§'!7§ = this.§3G§;
               _loc5_.§=!P§ = this.§7B§;
               _loc5_.§'!N§ = this.§0!8§;
               return _loc5_;
            case §6;§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§?!W§;
               _loc6_.§,?§(param1.§@!?§(),param2.§@!?§(),param1.§@!?§().GetWorldCenter(),new b2Vec2(this.§2J§,this.§^!0§));
               _loc6_.§>C§ = !!this.§!4§ ? false : Boolean(this.§"Y§);
               _loc6_.§"!Y§ = this.§7B§;
               _loc6_.§[%§ = this.§3G§;
               _loc6_.§+g§ = this.§`!C§;
               _loc6_.§15§ = this.§0!8§;
               _loc6_.motorSpeed = this.§2!K§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
