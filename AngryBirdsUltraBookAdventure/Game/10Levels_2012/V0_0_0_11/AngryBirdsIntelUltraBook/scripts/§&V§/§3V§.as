package §&V§
{
   import §%t§.b2DistanceJointDef;
   import §%t§.b2JointDef;
   import §%t§.b2PrismaticJointDef;
   import §%t§.b2RevoluteJointDef;
   import §%t§.b2WeldJointDef;
   import §&L§.b2Vec2;
   import §2!H§.LevelMain;
   import §3p§.LevelObject;
   import flash.geom.Point;
   
   public class §3V§
   {
      
      public static const §[§:uint = 1;
      
      public static const §9`§:uint = 2;
      
      public static const §!U§:uint = 3;
      
      public static const §]C§:uint = 4;
      
      public static const §@+§:uint = 5;
       
      
      private var §00§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §<6§:Boolean;
      
      private var §+!%§:Number;
      
      private var §`+§:Number;
      
      private var §9!O§:Boolean;
      
      private var § !F§:Number;
      
      private var §8U§:Boolean;
      
      private var §"!Y§:Boolean;
      
      private var §0![§:Number;
      
      private var §+P§:Number;
      
      private var §%!a§:Number;
      
      private var §[Q§:Number;
      
      public function §3V§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§00§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§<6§ = param7;
         this.§+!%§ = param8;
         this.§`+§ = param9;
         this.§9!O§ = param10;
         this.§ !F§ = param11;
         this.§8U§ = param12;
         this.§"!Y§ = param6;
         this.§0![§ = param13;
      }
      
      public function get type() : int
      {
         return this.§00§;
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
      
      public function get §in §() : Boolean
      {
         return this.§<6§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§+!%§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§`+§;
      }
      
      public function get §3-§() : Boolean
      {
         return this.§9!O§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§ !F§;
      }
      
      public function get §=!h§() : Boolean
      {
         return this.§8U§;
      }
      
      public function get §>!H§() : Boolean
      {
         return this.§"!Y§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§0![§;
      }
      
      public function get axisX() : Number
      {
         return this.§+P§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§+P§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§%!a§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§%!a§ = param1;
      }
      
      public function get §]!f§() : Number
      {
         return this.§[Q§;
      }
      
      public function set §]!f§(param1:Number) : void
      {
         this.§[Q§ = param1;
      }
      
      public function §0§(param1:LevelObject, param2:LevelObject) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§00§)
         {
            case §[§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§"!Y§;
               _loc3_.§?!J§ = 4;
               _loc3_.§9!7§ = 0.5;
               _loc3_.length = LevelMain.§+$§(param1,param2);
               _loc3_.§;o§(param1.§9f§(),param2.§9f§(),param1.§9f§().GetPosition(),param2.§9f§().GetPosition());
               return _loc3_;
            case §9`§:
               _loc4_ = new b2WeldJointDef();
               _loc4_.collideConnected = this.§"!Y§;
               _loc4_.§;o§(param1.§9f§(),param2.§9f§(),param1.§9f§().§]!8§());
               return _loc4_;
            case §!U§:
               _loc5_ = new b2RevoluteJointDef();
               _loc5_.collideConnected = this.§"!Y§;
               _loc5_.§;o§(param1.§9f§(),param2.§9f§(),param1.§9f§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§?P§ = this.§<6§;
               _loc5_.§"!<§ = this.§9!O§;
               _loc5_.motorSpeed = this.§ !F§;
               _loc5_.§@!A§ = this.§`+§;
               _loc5_.§%^§ = this.§+!%§;
               _loc5_.§4§ = this.§0![§;
               return _loc5_;
            case §]C§:
               _loc6_ = new b2PrismaticJointDef();
               _loc6_.collideConnected = this.§"!Y§;
               _loc6_.§;o§(param1.§9f§(),param2.§9f§(),param1.§9f§().§]!8§(),new b2Vec2(this.§+P§,this.§%!a§));
               _loc6_.§?P§ = !!this.§8U§ ? Boolean(false) : Boolean(this.§<6§);
               _loc6_.§8!`§ = this.§+!%§;
               _loc6_.§?7§ = this.§`+§;
               _loc6_.§"!<§ = this.§9!O§;
               _loc6_.§;!9§ = this.§0![§;
               _loc6_.motorSpeed = this.§ !F§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
