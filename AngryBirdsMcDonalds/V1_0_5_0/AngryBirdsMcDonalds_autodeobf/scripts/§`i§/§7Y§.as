package §`i§
{
   import §#!K§.b2DistanceJointDef;
   import §#!K§.b2JointDef;
   import §#!K§.b2PrismaticJointDef;
   import §#!K§.b2RevoluteJointDef;
   import §#!K§.b2WeldJointDef;
   import §'!`§.§%!H§;
   import §55§.§>![§;
   import §^!%§.b2Vec2;
   import flash.geom.Point;
   
   public class §7Y§
   {
      
      public static const §3u§:uint = 1;
      
      public static const §`!3§:uint = 2;
      
      public static const §6!b§:uint = 3;
      
      public static const §"h§:uint = 4;
      
      public static const §=!;§:uint = 5;
       
      
      private var §4!O§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §5!2§:Boolean;
      
      private var §'!a§:Number;
      
      private var §[!p§:Number;
      
      private var §9g§:Boolean;
      
      private var §"4§:Number;
      
      private var §9!5§:Boolean;
      
      private var §]F§:Boolean;
      
      private var §43§:Number;
      
      private var §9!Q§:Number;
      
      private var §`m§:Number;
      
      private var §3!>§:Number;
      
      public function §7Y§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§4!O§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§5!2§ = param7;
         this.§'!a§ = param8;
         this.§[!p§ = param9;
         this.§9g§ = param10;
         this.§"4§ = param11;
         this.§9!5§ = param12;
         this.§]F§ = param6;
         this.§43§ = param13;
      }
      
      public function get type() : int
      {
         return this.§4!O§;
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
      
      public function get §8m§() : Boolean
      {
         return this.§5!2§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§'!a§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§[!p§;
      }
      
      public function get §&m§() : Boolean
      {
         return this.§9g§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§"4§;
      }
      
      public function get §finally§() : Boolean
      {
         return this.§9!5§;
      }
      
      public function get §!!-§() : Boolean
      {
         return this.§]F§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§43§;
      }
      
      public function get axisX() : Number
      {
         return this.§9!Q§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§9!Q§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§`m§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§`m§ = param1;
      }
      
      public function get §+!i§() : Number
      {
         return this.§3!>§;
      }
      
      public function set §+!i§(param1:Number) : void
      {
         this.§3!>§ = param1;
      }
      
      public function §%!S§(param1:§%!H§, param2:§%!H§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§4!O§)
         {
            case §3u§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§]F§;
               _loc3_.§^!H§ = 4;
               _loc3_.§"! § = 0.5;
               _loc3_.length = §>![§.§5t§(param1,param2);
               _loc3_.§08§(param1.§&!p§(),param2.§&!p§(),param1.§&!p§().GetPosition(),param2.§&!p§().GetPosition());
               return _loc3_;
            case §`!3§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§]F§;
               _loc4_.§08§(param1.§&!p§(),param2.§&!p§(),param1.§&!p§().GetWorldCenter());
               return _loc4_;
            case §6!b§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§]F§;
               _loc5_.§08§(param1.§&!p§(),param2.§&!p§(),param1.§&!p§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§=c§ = this.§5!2§;
               _loc5_.§4=§ = this.§9g§;
               _loc5_.motorSpeed = this.§"4§;
               _loc5_.§`W§ = this.§[!p§;
               _loc5_.§'7§ = this.§'!a§;
               _loc5_.§]9§ = this.§43§;
               return _loc5_;
            case §"h§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§]F§;
               _loc6_.§08§(param1.§&!p§(),param2.§&!p§(),param1.§&!p§().GetWorldCenter(),new b2Vec2(this.§9!Q§,this.§`m§));
               _loc6_.§=c§ = !!this.§9!5§ ? false : Boolean(this.§5!2§);
               _loc6_.§;!$§ = this.§'!a§;
               _loc6_.§<!>§ = this.§[!p§;
               _loc6_.§4=§ = this.§9g§;
               _loc6_.§9#§ = this.§43§;
               _loc6_.motorSpeed = this.§"4§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
