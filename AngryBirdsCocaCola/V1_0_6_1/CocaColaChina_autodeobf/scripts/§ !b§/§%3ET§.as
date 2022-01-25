package § !b§
{
   import §"!4§.b2DistanceJointDef;
   import §"!4§.b2JointDef;
   import §"!4§.b2PrismaticJointDef;
   import §"!4§.b2RevoluteJointDef;
   import §"!4§.b2WeldJointDef;
   import §#B§.§ ]§;
   import §2!G§.§2!V§;
   import §;h§.b2Vec2;
   import flash.geom.Point;
   
   public class §>T§
   {
      
      public static const §'!P§:uint = 1;
      
      public static const §#!?§:uint = 2;
      
      public static const §20§:uint = 3;
      
      public static const §+O§:uint = 4;
      
      public static const §,<§:uint = 5;
       
      
      private var §+!I§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §2I§:Boolean;
      
      private var §@!P§:Number;
      
      private var § !T§:Number;
      
      private var §0!T§:Boolean;
      
      private var §]X§:Number;
      
      private var §^]§:Boolean;
      
      private var §6K§:Boolean;
      
      private var §?"§:Number;
      
      private var §][§:Number;
      
      private var §^u§:Number;
      
      private var §&x§:Number;
      
      public function §>T§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§+!I§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§2I§ = param7;
         this.§@!P§ = param8;
         this.§ !T§ = param9;
         this.§0!T§ = param10;
         this.§]X§ = param11;
         this.§^]§ = param12;
         this.§6K§ = param6;
         this.§?"§ = param13;
      }
      
      public function get type() : int
      {
         return this.§+!I§;
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
      
      public function get §1V§() : Boolean
      {
         return this.§2I§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§@!P§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§ !T§;
      }
      
      public function get §^@§() : Boolean
      {
         return this.§0!T§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§]X§;
      }
      
      public function get §%!7§() : Boolean
      {
         return this.§^]§;
      }
      
      public function get §3Q§() : Boolean
      {
         return this.§6K§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§?"§;
      }
      
      public function get axisX() : Number
      {
         return this.§][§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§][§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§^u§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§^u§ = param1;
      }
      
      public function get §#E§() : Number
      {
         return this.§&x§;
      }
      
      public function set §#E§(param1:Number) : void
      {
         this.§&x§ = param1;
      }
      
      public function §8!Y§(param1:§ ]§, param2:§ ]§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§+!I§)
         {
            case §'!P§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§6K§;
               _loc3_.§^!,§ = 4;
               _loc3_.§1z§ = 0.5;
               _loc3_.length = §2!V§.§>!@§(param1,param2);
               _loc3_.§#§(param1.§4g§(),param2.§4g§(),param1.§4g§().GetPosition(),param2.§4g§().GetPosition());
               return _loc3_;
            case §#!?§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§6K§;
               _loc4_.§#§(param1.§4g§(),param2.§4g§(),param1.§4g§().GetWorldCenter());
               return _loc4_;
            case §20§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§6K§;
               _loc5_.§#§(param1.§4g§(),param2.§4g§(),param1.§4g§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§@H§ = this.§2I§;
               _loc5_.§#!5§ = this.§0!T§;
               _loc5_.motorSpeed = this.§]X§;
               _loc5_.§6Z§ = this.§ !T§;
               _loc5_.§&J§ = this.§@!P§;
               _loc5_.§&!4§ = this.§?"§;
               return _loc5_;
            case §+O§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§6K§;
               _loc6_.§#§(param1.§4g§(),param2.§4g§(),param1.§4g§().GetWorldCenter(),new b2Vec2(this.§][§,this.§^u§));
               _loc6_.§@H§ = !!this.§^]§ ? false : Boolean(this.§2I§);
               _loc6_.§=!8§ = this.§@!P§;
               _loc6_.§,,§ = this.§ !T§;
               _loc6_.§#!5§ = this.§0!T§;
               _loc6_.§8'§ = this.§?"§;
               _loc6_.motorSpeed = this.§]X§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
