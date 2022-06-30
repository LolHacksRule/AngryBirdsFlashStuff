package §@!"§
{
   import § !_§.b2Vec2;
   import § d§.§'!"§;
   import §"W§.§;N§;
   import §3!A§.b2DistanceJointDef;
   import §3!A§.b2JointDef;
   import §3!A§.b2PrismaticJointDef;
   import §3!A§.b2RevoluteJointDef;
   import §3!A§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §0!%§
   {
      
      public static const §<W§:uint = 1;
      
      public static const §4!8§:uint = 2;
      
      public static const §'!'§:uint = 3;
      
      public static const §'!d§:uint = 4;
      
      public static const §[C§:uint = 5;
       
      
      private var §!,§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §+§:Boolean;
      
      private var § U§:Number;
      
      private var §?o§:Number;
      
      private var §`Z§:Boolean;
      
      private var §?0§:Number;
      
      private var §]!9§:Boolean;
      
      private var §8h§:Boolean;
      
      private var §;B§:Number;
      
      private var §super§:Number;
      
      private var §='§:Number;
      
      private var §#W§:Number;
      
      public function §0!%§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§!,§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§+§ = param7;
         this.§ U§ = param8;
         this.§?o§ = param9;
         this.§`Z§ = param10;
         this.§?0§ = param11;
         this.§]!9§ = param12;
         this.§8h§ = param6;
         this.§;B§ = param13;
      }
      
      public function get type() : int
      {
         return this.§!,§;
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
      
      public function get §?!L§() : Boolean
      {
         return this.§+§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§ U§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§?o§;
      }
      
      public function get §#e§() : Boolean
      {
         return this.§`Z§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§?0§;
      }
      
      public function get §9]§() : Boolean
      {
         return this.§]!9§;
      }
      
      public function get §8!c§() : Boolean
      {
         return this.§8h§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§;B§;
      }
      
      public function get axisX() : Number
      {
         return this.§super§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§super§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§='§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§='§ = param1;
      }
      
      public function get §%L§() : Number
      {
         return this.§#W§;
      }
      
      public function set §%L§(param1:Number) : void
      {
         this.§#W§ = param1;
      }
      
      public function §throw§(param1:§;N§, param2:§;N§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§!,§)
         {
            case §<W§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§8h§;
               _loc3_.§&!=§ = 4;
               _loc3_.§1b§ = 0.5;
               _loc3_.length = §'!"§.§>t§(param1,param2);
               _loc3_.§8_§(param1.§"!H§(),param2.§"!H§(),param1.§"!H§().GetPosition(),param2.§"!H§().GetPosition());
               return _loc3_;
            case §4!8§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§8h§;
               _loc4_.§8_§(param1.§"!H§(),param2.§"!H§(),param1.§"!H§().§#!R§());
               return _loc4_;
            case §'!'§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§8h§;
               _loc5_.§8_§(param1.§"!H§(),param2.§"!H§(),param1.§"!H§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§1!<§ = this.§+§;
               _loc5_.§6!O§ = this.§`Z§;
               _loc5_.motorSpeed = this.§?0§;
               _loc5_.§>!D§ = this.§?o§;
               _loc5_.§?y§ = this.§ U§;
               _loc5_.§3z§ = this.§;B§;
               return _loc5_;
            case §'!d§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§8h§;
               _loc6_.§8_§(param1.§"!H§(),param2.§"!H§(),param1.§"!H§().§#!R§(),new b2Vec2(this.§super§,this.§='§));
               _loc6_.§1!<§ = !!this.§]!9§ ? false : Boolean(this.§+§);
               _loc6_.§#!0§ = this.§ U§;
               _loc6_.§5f§ = this.§?o§;
               _loc6_.§6!O§ = this.§`Z§;
               _loc6_.§!k§ = this.§;B§;
               _loc6_.motorSpeed = this.§?0§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
