package §[d§
{
   import §+D§.§5!P§;
   import §,!3§.b2Vec2;
   import §9!T§.§;!"§;
   import §@!]§.b2DistanceJointDef;
   import §@!]§.b2JointDef;
   import §@!]§.b2PrismaticJointDef;
   import §@!]§.b2RevoluteJointDef;
   import §@!]§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §57§
   {
      
      public static const §5n§:uint = 1;
      
      public static const §]!c§:uint = 2;
      
      public static const §0!+§:uint = 3;
      
      public static const §;!<§:uint = 4;
      
      public static const §#!$§:uint = 5;
       
      
      private var §'a§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §2!`§:Boolean;
      
      private var §%`§:Number;
      
      private var §8#§:Number;
      
      private var §#L§:Boolean;
      
      private var §>?§:Number;
      
      private var §1!4§:Boolean;
      
      private var §2D§:Boolean;
      
      private var §2!P§:Number;
      
      private var §"!Z§:Number;
      
      private var §8?§:Number;
      
      private var §0!O§:Number;
      
      public function §57§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§'a§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§2!`§ = param7;
         this.§%`§ = param8;
         this.§8#§ = param9;
         this.§#L§ = param10;
         this.§>?§ = param11;
         this.§1!4§ = param12;
         this.§2D§ = param6;
         this.§2!P§ = param13;
      }
      
      public function get type() : int
      {
         return this.§'a§;
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
      
      public function get §`!`§() : Boolean
      {
         return this.§2!`§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§%`§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§8#§;
      }
      
      public function get §2N§() : Boolean
      {
         return this.§#L§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§>?§;
      }
      
      public function get §3^§() : Boolean
      {
         return this.§1!4§;
      }
      
      public function get §37§() : Boolean
      {
         return this.§2D§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§2!P§;
      }
      
      public function get axisX() : Number
      {
         return this.§"!Z§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§"!Z§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§8?§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§8?§ = param1;
      }
      
      public function get §"!Q§() : Number
      {
         return this.§0!O§;
      }
      
      public function set §"!Q§(param1:Number) : void
      {
         this.§0!O§ = param1;
      }
      
      public function §`t§(param1:§;!"§, param2:§;!"§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§'a§)
         {
            case §5n§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§2D§;
               _loc3_.§?1§ = 4;
               _loc3_.§%m§ = 0.5;
               _loc3_.length = §5!P§.§+!H§(param1,param2);
               _loc3_.§^!R§(param1.§<k§(),param2.§<k§(),param1.§<k§().GetPosition(),param2.§<k§().GetPosition());
               return _loc3_;
            case §]!c§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§2D§;
               _loc4_.§^!R§(param1.§<k§(),param2.§<k§(),param1.§<k§().§`g§());
               return _loc4_;
            case §0!+§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§2D§;
               _loc5_.§^!R§(param1.§<k§(),param2.§<k§(),param1.§<k§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§8!&§ = this.§2!`§;
               _loc5_.§`!Y§ = this.§#L§;
               _loc5_.motorSpeed = this.§>?§;
               _loc5_.§'S§ = this.§8#§;
               _loc5_.§>A§ = this.§%`§;
               _loc5_.§5z§ = this.§2!P§;
               return _loc5_;
            case §;!<§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§2D§;
               _loc6_.§^!R§(param1.§<k§(),param2.§<k§(),param1.§<k§().§`g§(),new b2Vec2(this.§"!Z§,this.§8?§));
               _loc6_.§8!&§ = !!this.§1!4§ ? false : Boolean(this.§2!`§);
               _loc6_.§!s§ = this.§%`§;
               _loc6_.§7h§ = this.§8#§;
               _loc6_.§`!Y§ = this.§#L§;
               _loc6_.§7![§ = this.§2!P§;
               _loc6_.motorSpeed = this.§>?§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
