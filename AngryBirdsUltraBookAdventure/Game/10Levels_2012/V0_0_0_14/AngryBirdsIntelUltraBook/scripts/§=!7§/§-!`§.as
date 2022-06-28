package §=!7§
{
   import §+&§.§-!7§;
   import §8>§.b2Vec2;
   import §[!N§.b2DistanceJointDef;
   import §[!N§.b2JointDef;
   import §[!N§.b2PrismaticJointDef;
   import §[!N§.b2RevoluteJointDef;
   import §[!N§.b2WeldJointDef;
   import §]![§.§4!H§;
   import flash.geom.Point;
   
   public class §-!`§
   {
      
      public static const §`!?§:uint = 1;
      
      public static const §,!w§:uint = 2;
      
      public static const §5h§:uint = 3;
      
      public static const §+!]§:uint = 4;
      
      public static const §,_§:uint = 5;
       
      
      private var §2§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §^!M§:Boolean;
      
      private var §<!c§:Number;
      
      private var §+!U§:Number;
      
      private var §>!"§:Boolean;
      
      private var §7!b§:Number;
      
      private var §+!V§:Boolean;
      
      private var §[!$§:Boolean;
      
      private var §+!i§:Number;
      
      private var §8L§:Number;
      
      private var §]!R§:Number;
      
      private var §7!k§:Number;
      
      public function §-!`§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§2§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§^!M§ = param7;
         this.§<!c§ = param8;
         this.§+!U§ = param9;
         this.§>!"§ = param10;
         this.§7!b§ = param11;
         this.§+!V§ = param12;
         this.§[!$§ = param6;
         this.§+!i§ = param13;
      }
      
      public function get type() : int
      {
         return this.§2§;
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
      
      public function get §]!L§() : Boolean
      {
         return this.§^!M§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§<!c§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§+!U§;
      }
      
      public function get §0w§() : Boolean
      {
         return this.§>!"§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§7!b§;
      }
      
      public function get §8!A§() : Boolean
      {
         return this.§+!V§;
      }
      
      public function get §2!Q§() : Boolean
      {
         return this.§[!$§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§+!i§;
      }
      
      public function get axisX() : Number
      {
         return this.§8L§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§8L§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§]!R§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§]!R§ = param1;
      }
      
      public function get §;!4§() : Number
      {
         return this.§7!k§;
      }
      
      public function set §;!4§(param1:Number) : void
      {
         this.§7!k§ = param1;
      }
      
      public function §+!@§(param1:§4!H§, param2:§4!H§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§2§)
         {
            case §`!?§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§[!$§;
               _loc3_.§ $§ = 4;
               _loc3_.§7B§ = 0.5;
               _loc3_.length = §-!7§.§<!U§(param1,param2);
               _loc3_.§7R§(param1.§+$§(),param2.§+$§(),param1.§+$§().GetPosition(),param2.§+$§().GetPosition());
               return _loc3_;
            case §,!w§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§[!$§;
               _loc4_.§7R§(param1.§+$§(),param2.§+$§(),param1.§+$§().§=,§());
               return _loc4_;
            case §5h§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§[!$§;
               _loc5_.§7R§(param1.§+$§(),param2.§+$§(),param1.§+$§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§"!8§ = this.§^!M§;
               _loc5_.§;!J§ = this.§>!"§;
               _loc5_.motorSpeed = this.§7!b§;
               _loc5_.§'!w§ = this.§+!U§;
               _loc5_.§8!7§ = this.§<!c§;
               _loc5_.§%!9§ = this.§+!i§;
               return _loc5_;
            case §+!]§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§[!$§;
               _loc6_.§7R§(param1.§+$§(),param2.§+$§(),param1.§+$§().§=,§(),new b2Vec2(this.§8L§,this.§]!R§));
               _loc6_.§"!8§ = !!this.§+!V§ ? false : Boolean(this.§^!M§);
               _loc6_.§#!e§ = this.§<!c§;
               _loc6_.§5!y§ = this.§+!U§;
               _loc6_.§;!J§ = this.§>!"§;
               _loc6_.§'&§ = this.§+!i§;
               _loc6_.motorSpeed = this.§7!b§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
