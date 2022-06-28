package §4!C§
{
   import §6!!§.LevelObject;
   import §=;§.b2DistanceJointDef;
   import §=;§.b2JointDef;
   import §=;§.b2PrismaticJointDef;
   import §=;§.b2RevoluteJointDef;
   import §=;§.b2WeldJointDef;
   import §>!8§.b2Vec2;
   import §]!@§.LevelMain;
   import flash.geom.Point;
   
   public class §7W§
   {
      
      public static const §2!^§:uint = 1;
      
      public static const §]!0§:uint = 2;
      
      public static const §'!5§:uint = 3;
      
      public static const §=N§:uint = 4;
      
      public static const §9c§:uint = 5;
       
      
      private var §?!%§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §"v§:Boolean;
      
      private var § #§:Number;
      
      private var §;!]§:Number;
      
      private var §;!=§:Boolean;
      
      private var §"!$§:Number;
      
      private var §,]§:Boolean;
      
      private var §60§:Boolean;
      
      private var §>e§:Number;
      
      private var §5?§:Number;
      
      private var §";§:Number;
      
      private var §>b§:Number;
      
      public function §7W§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§?!%§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§"v§ = param7;
         this.§ #§ = param8;
         this.§;!]§ = param9;
         this.§;!=§ = param10;
         this.§"!$§ = param11;
         this.§,]§ = param12;
         this.§60§ = param6;
         this.§>e§ = param13;
      }
      
      public function get type() : int
      {
         return this.§?!%§;
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
      
      public function get §#§() : Boolean
      {
         return this.§"v§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§ #§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§;!]§;
      }
      
      public function get §>'§() : Boolean
      {
         return this.§;!=§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§"!$§;
      }
      
      public function get §-!D§() : Boolean
      {
         return this.§,]§;
      }
      
      public function get §"x§() : Boolean
      {
         return this.§60§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§>e§;
      }
      
      public function get axisX() : Number
      {
         return this.§5?§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§5?§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§";§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§";§ = param1;
      }
      
      public function get §6G§() : Number
      {
         return this.§>b§;
      }
      
      public function set §6G§(param1:Number) : void
      {
         this.§>b§ = param1;
      }
      
      public function §#!C§(param1:LevelObject, param2:LevelObject) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§?!%§)
         {
            case §2!^§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§60§;
               _loc3_.§5Q§ = 4;
               _loc3_.§=$§ = 0.5;
               _loc3_.length = LevelMain.§ v§(param1,param2);
               _loc3_.§2@§(param1.§@!'§(),param2.§@!'§(),param1.§@!'§().GetPosition(),param2.§@!'§().GetPosition());
               return _loc3_;
            case §]!0§:
               _loc4_ = new b2WeldJointDef();
               _loc4_.collideConnected = this.§60§;
               _loc4_.§2@§(param1.§@!'§(),param2.§@!'§(),param1.§@!'§().§"!'§());
               return _loc4_;
            case §'!5§:
               _loc5_ = new b2RevoluteJointDef();
               _loc5_.collideConnected = this.§60§;
               _loc5_.§2@§(param1.§@!'§(),param2.§@!'§(),param1.§@!'§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§0$§ = this.§"v§;
               _loc5_.§ in§ = this.§;!=§;
               _loc5_.motorSpeed = this.§"!$§;
               _loc5_.§+!9§ = this.§;!]§;
               _loc5_.§!!e§ = this.§ #§;
               _loc5_.§`!?§ = this.§>e§;
               return _loc5_;
            case §=N§:
               _loc6_ = new b2PrismaticJointDef();
               _loc6_.collideConnected = this.§60§;
               _loc6_.§2@§(param1.§@!'§(),param2.§@!'§(),param1.§@!'§().§"!'§(),new b2Vec2(this.§5?§,this.§";§));
               _loc6_.§0$§ = !!this.§,]§ ? Boolean(false) : Boolean(this.§"v§);
               _loc6_.§[9§ = this.§ #§;
               _loc6_.§@!f§ = this.§;!]§;
               _loc6_.§ in§ = this.§;!=§;
               _loc6_.each = this.§>e§;
               _loc6_.motorSpeed = this.§"!$§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
