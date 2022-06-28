package § use§
{
   import §%Q§.§`!<§;
   import §,!5§.§^g§;
   import §9!"§.b2DistanceJointDef;
   import §9!"§.b2JointDef;
   import §9!"§.b2PrismaticJointDef;
   import §9!"§.b2RevoluteJointDef;
   import §9!"§.b2WeldJointDef;
   import §>H§.b2Vec2;
   import flash.geom.Point;
   
   public class §+N§
   {
      
      public static const §'m§:uint = 1;
      
      public static const §,a§:uint = 2;
      
      public static const §!p§:uint = 3;
      
      public static const §0!'§:uint = 4;
      
      public static const §3!!§:uint = 5;
       
      
      private var §,s§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §1=§:Boolean;
      
      private var §>Y§:Number;
      
      private var §5+§:Number;
      
      private var §5p§:Boolean;
      
      private var §-f§:Number;
      
      private var §"V§:Boolean;
      
      private var §!!§:Boolean;
      
      private var §%!=§:Number;
      
      private var §,!d§:Number;
      
      private var §1!t§:Number;
      
      private var §;!,§:Number;
      
      public function §+N§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§,s§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§1=§ = param7;
         this.§>Y§ = param8;
         this.§5+§ = param9;
         this.§5p§ = param10;
         this.§-f§ = param11;
         this.§"V§ = param12;
         this.§!!§ = param6;
         this.§%!=§ = param13;
      }
      
      public function get type() : int
      {
         return this.§,s§;
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
      
      public function get §,!X§() : Boolean
      {
         return this.§1=§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§>Y§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§5+§;
      }
      
      public function get §7!H§() : Boolean
      {
         return this.§5p§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§-f§;
      }
      
      public function get §9!J§() : Boolean
      {
         return this.§"V§;
      }
      
      public function get §%!d§() : Boolean
      {
         return this.§!!§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§%!=§;
      }
      
      public function get axisX() : Number
      {
         return this.§,!d§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§,!d§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§1!t§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§1!t§ = param1;
      }
      
      public function get §5l§() : Number
      {
         return this.§;!,§;
      }
      
      public function set §5l§(param1:Number) : void
      {
         this.§;!,§ = param1;
      }
      
      public function §6-§(param1:§`!<§, param2:§`!<§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§,s§)
         {
            case §'m§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§!!§;
               _loc3_.§ y§ = 4;
               _loc3_.§`!X§ = 0.5;
               _loc3_.length = §^g§.§[&§(param1,param2);
               _loc3_.§%%§(param1.§5b§(),param2.§5b§(),param1.§5b§().GetPosition(),param2.§5b§().GetPosition());
               return _loc3_;
            case §,a§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§!!§;
               _loc4_.§%%§(param1.§5b§(),param2.§5b§(),param1.§5b§().§[!S§());
               return _loc4_;
            case §!p§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§!!§;
               _loc5_.§%%§(param1.§5b§(),param2.§5b§(),param1.§5b§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§&%§ = this.§1=§;
               _loc5_.§!;§ = this.§5p§;
               _loc5_.motorSpeed = this.§-f§;
               _loc5_.§#f§ = this.§5+§;
               _loc5_.§6!x§ = this.§>Y§;
               _loc5_.§5!?§ = this.§%!=§;
               return _loc5_;
            case §0!'§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§!!§;
               _loc6_.§%%§(param1.§5b§(),param2.§5b§(),param1.§5b§().§[!S§(),new b2Vec2(this.§,!d§,this.§1!t§));
               _loc6_.§&%§ = !!this.§"V§ ? false : Boolean(this.§1=§);
               _loc6_.§ !B§ = this.§>Y§;
               _loc6_.§!!l§ = this.§5+§;
               _loc6_.§!;§ = this.§5p§;
               _loc6_.§>!a§ = this.§%!=§;
               _loc6_.motorSpeed = this.§-f§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
