package §=?§
{
   import §0V§.§`!O§;
   import §3d§.§20§;
   import §=!P§.b2DistanceJointDef;
   import §=!P§.b2JointDef;
   import §=!P§.b2PrismaticJointDef;
   import §=!P§.b2RevoluteJointDef;
   import §=!P§.b2WeldJointDef;
   import §^q§.b2Vec2;
   import flash.geom.Point;
   
   public class §-u§
   {
      
      public static const §6!;§:uint = 1;
      
      public static const §9K§:uint = 2;
      
      public static const §4!H§:uint = 3;
      
      public static const §@1§:uint = 4;
      
      public static const §'D§:uint = 5;
       
      
      private var §9!@§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §?!'§:Boolean;
      
      private var §7!W§:Number;
      
      private var § J§:Number;
      
      private var §8_§:Boolean;
      
      private var §9!T§:Number;
      
      private var §"a§:Boolean;
      
      private var §9!%§:Boolean;
      
      private var §'0§:Number;
      
      private var §`B§:Number;
      
      private var §-!>§:Number;
      
      private var §<!a§:Number;
      
      public function §-u§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§9!@§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§?!'§ = param7;
         this.§7!W§ = param8;
         this.§ J§ = param9;
         this.§8_§ = param10;
         this.§9!T§ = param11;
         this.§"a§ = param12;
         this.§9!%§ = param6;
         this.§'0§ = param13;
      }
      
      public function get type() : int
      {
         return this.§9!@§;
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
      
      public function get §6!D§() : Boolean
      {
         return this.§?!'§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§7!W§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§ J§;
      }
      
      public function get §1;§() : Boolean
      {
         return this.§8_§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§9!T§;
      }
      
      public function get §"2§() : Boolean
      {
         return this.§"a§;
      }
      
      public function get §]!&§() : Boolean
      {
         return this.§9!%§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§'0§;
      }
      
      public function get axisX() : Number
      {
         return this.§`B§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§`B§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§-!>§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§-!>§ = param1;
      }
      
      public function get §;;§() : Number
      {
         return this.§<!a§;
      }
      
      public function set §;;§(param1:Number) : void
      {
         this.§<!a§ = param1;
      }
      
      public function §[G§(param1:§20§, param2:§20§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§9!@§)
         {
            case §6!;§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§9!%§;
               _loc3_.§&!$§ = 4;
               _loc3_.§@Y§ = 0.5;
               _loc3_.length = §`!O§.§'F§(param1,param2);
               _loc3_.§in §(param1.§=!,§(),param2.§=!,§(),param1.§=!,§().GetPosition(),param2.§=!,§().GetPosition());
               return _loc3_;
            case §9K§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§9!%§;
               _loc4_.§in §(param1.§=!,§(),param2.§=!,§(),param1.§=!,§().§]&§());
               return _loc4_;
            case §4!H§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§9!%§;
               _loc5_.§in §(param1.§=!,§(),param2.§=!,§(),param1.§=!,§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§'!`§ = this.§?!'§;
               _loc5_.§@<§ = this.§8_§;
               _loc5_.motorSpeed = this.§9!T§;
               _loc5_.§>K§ = this.§ J§;
               _loc5_.§^!]§ = this.§7!W§;
               _loc5_.§^!Y§ = this.§'0§;
               return _loc5_;
            case §@1§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§9!%§;
               _loc6_.§in §(param1.§=!,§(),param2.§=!,§(),param1.§=!,§().§]&§(),new b2Vec2(this.§`B§,this.§-!>§));
               _loc6_.§'!`§ = !!this.§"a§ ? false : Boolean(this.§?!'§);
               _loc6_.§ 0§ = this.§7!W§;
               _loc6_.§%,§ = this.§ J§;
               _loc6_.§@<§ = this.§8_§;
               _loc6_.§7[§ = this.§'0§;
               _loc6_.motorSpeed = this.§9!T§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
