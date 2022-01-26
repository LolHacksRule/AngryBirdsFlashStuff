package §@I§
{
   import §!6§.b2DistanceJointDef;
   import §!6§.b2JointDef;
   import §!6§.b2PrismaticJointDef;
   import §!6§.b2RevoluteJointDef;
   import §!6§.b2WeldJointDef;
   import §"C§.§?w§;
   import §%b§.§0!Z§;
   import §+,§.b2Vec2;
   import flash.geom.Point;
   
   public class §0!L§
   {
      
      public static const §!!R§:uint = 1;
      
      public static const §8§:uint = 2;
      
      public static const §3H§:uint = 3;
      
      public static const §#!^§:uint = 4;
      
      public static const §`!H§:uint = 5;
       
      
      private var §[!P§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §>2§:Boolean;
      
      private var §5!3§:Number;
      
      private var §3@§:Number;
      
      private var §1!?§:Boolean;
      
      private var §3w§:Number;
      
      private var §9O§:Boolean;
      
      private var §4&§:Boolean;
      
      private var §97§:Number;
      
      private var §!y§:Number;
      
      private var §#V§:Number;
      
      private var §%J§:Number;
      
      public function §0!L§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§[!P§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§>2§ = param7;
         this.§5!3§ = param8;
         this.§3@§ = param9;
         this.§1!?§ = param10;
         this.§3w§ = param11;
         this.§9O§ = param12;
         this.§4&§ = param6;
         this.§97§ = param13;
      }
      
      public function get type() : int
      {
         return this.§[!P§;
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
      
      public function get §%!"§() : Boolean
      {
         return this.§>2§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§5!3§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§3@§;
      }
      
      public function get §-!5§() : Boolean
      {
         return this.§1!?§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§3w§;
      }
      
      public function get §1l§() : Boolean
      {
         return this.§9O§;
      }
      
      public function get §^![§() : Boolean
      {
         return this.§4&§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§97§;
      }
      
      public function get axisX() : Number
      {
         return this.§!y§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§!y§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§#V§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§#V§ = param1;
      }
      
      public function get §,!N§() : Number
      {
         return this.§%J§;
      }
      
      public function set §,!N§(param1:Number) : void
      {
         this.§%J§ = param1;
      }
      
      public function §2Z§(param1:§?w§, param2:§?w§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§[!P§)
         {
            case §!!R§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§4&§;
               _loc3_.§6!+§ = 4;
               _loc3_.§&!U§ = 0.5;
               _loc3_.length = §0!Z§.§0o§(param1,param2);
               _loc3_.§+!R§(param1.§?@§(),param2.§?@§(),param1.§?@§().GetPosition(),param2.§?@§().GetPosition());
               return _loc3_;
            case §8§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§4&§;
               _loc4_.§+!R§(param1.§?@§(),param2.§?@§(),param1.§?@§().§@!_§());
               return _loc4_;
            case §3H§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§4&§;
               _loc5_.§+!R§(param1.§?@§(),param2.§?@§(),param1.§?@§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§9o§ = this.§>2§;
               _loc5_.§=!;§ = this.§1!?§;
               _loc5_.motorSpeed = this.§3w§;
               _loc5_.§5-§ = this.§3@§;
               _loc5_.§1![§ = this.§5!3§;
               _loc5_.§>^§ = this.§97§;
               return _loc5_;
            case §#!^§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§4&§;
               _loc6_.§+!R§(param1.§?@§(),param2.§?@§(),param1.§?@§().§@!_§(),new b2Vec2(this.§!y§,this.§#V§));
               _loc6_.§9o§ = !!this.§9O§ ? false : Boolean(this.§>2§);
               _loc6_.§,X§ = this.§5!3§;
               _loc6_.§>!`§ = this.§3@§;
               _loc6_.§=!;§ = this.§1!?§;
               _loc6_.§'!R§ = this.§97§;
               _loc6_.motorSpeed = this.§3w§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
