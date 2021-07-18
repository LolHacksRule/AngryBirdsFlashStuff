package §%J§
{
   import §!X§.§86§;
   import §,h§.§+0§;
   import §0!G§.b2Vec2;
   import §[!8§.b2DistanceJointDef;
   import §[!8§.b2JointDef;
   import §[!8§.b2PrismaticJointDef;
   import §[!8§.b2RevoluteJointDef;
   import §[!8§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §8C§
   {
      
      public static const §?!5§:uint = 1;
      
      public static const §3!H§:uint = 2;
      
      public static const §2u§:uint = 3;
      
      public static const §=G§:uint = 4;
      
      public static const §[!S§:uint = 5;
       
      
      private var §`Z§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §^!Q§:Boolean;
      
      private var §05§:Number;
      
      private var §?S§:Number;
      
      private var §>K§:Boolean;
      
      private var §!=§:Number;
      
      private var § U§:Boolean;
      
      private var §12§:Boolean;
      
      private var §!r§:Number;
      
      private var §"!8§:Number;
      
      private var §1!#§:Number;
      
      private var §4!#§:Number;
      
      public function §8C§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§`Z§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§^!Q§ = param7;
         this.§05§ = param8;
         this.§?S§ = param9;
         this.§>K§ = param10;
         this.§!=§ = param11;
         this.§ U§ = param12;
         this.§12§ = param6;
         this.§!r§ = param13;
      }
      
      public function get type() : int
      {
         return this.§`Z§;
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
      
      public function get § h§() : Boolean
      {
         return this.§^!Q§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§05§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§?S§;
      }
      
      public function get §5Q§() : Boolean
      {
         return this.§>K§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§!=§;
      }
      
      public function get §6!'§() : Boolean
      {
         return this.§ U§;
      }
      
      public function get §]!,§() : Boolean
      {
         return this.§12§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§!r§;
      }
      
      public function get axisX() : Number
      {
         return this.§"!8§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§"!8§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§1!#§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§1!#§ = param1;
      }
      
      public function get §-7§() : Number
      {
         return this.§4!#§;
      }
      
      public function set §-7§(param1:Number) : void
      {
         this.§4!#§ = param1;
      }
      
      public function §&!$§(param1:§+0§, param2:§+0§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§`Z§)
         {
            case §?!5§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§12§;
               _loc3_.§!k§ = 4;
               _loc3_.§-C§ = 0.5;
               _loc3_.length = §86§.§6!M§(param1,param2);
               _loc3_.§>b§(param1.§?!7§(),param2.§?!7§(),param1.§?!7§().GetPosition(),param2.§?!7§().GetPosition());
               return _loc3_;
            case §3!H§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§12§;
               _loc4_.§>b§(param1.§?!7§(),param2.§?!7§(),param1.§?!7§().§2!K§());
               return _loc4_;
            case §2u§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§12§;
               _loc5_.§>b§(param1.§?!7§(),param2.§?!7§(),param1.§?!7§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§1&§ = this.§^!Q§;
               _loc5_.§^=§ = this.§>K§;
               _loc5_.motorSpeed = this.§!=§;
               _loc5_.§0"§ = this.§?S§;
               _loc5_.§4O§ = this.§05§;
               _loc5_.§5!F§ = this.§!r§;
               return _loc5_;
            case §=G§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§12§;
               _loc6_.§>b§(param1.§?!7§(),param2.§?!7§(),param1.§?!7§().§2!K§(),new b2Vec2(this.§"!8§,this.§1!#§));
               _loc6_.§1&§ = !!this.§ U§ ? false : Boolean(this.§^!Q§);
               _loc6_.§[F§ = this.§05§;
               _loc6_.§>Z§ = this.§?S§;
               _loc6_.§^=§ = this.§>K§;
               _loc6_.§>!Y§ = this.§!r§;
               _loc6_.motorSpeed = this.§!=§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
