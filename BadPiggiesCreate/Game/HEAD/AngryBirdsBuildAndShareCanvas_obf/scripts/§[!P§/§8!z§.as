package §[!P§
{
   import §%!0§.§,4§;
   import §&!P§.§``§;
   import §,!0§.b2DistanceJointDef;
   import §,!0§.b2JointDef;
   import §,!0§.b2PrismaticJointDef;
   import §,!0§.b2RevoluteJointDef;
   import §,!0§.b2WeldJointDef;
   import §<!a§.b2Vec2;
   import flash.geom.Point;
   
   public class §8!z§
   {
      
      public static const §8v§:uint = 1;
      
      public static const §`,§:uint = 2;
      
      public static const §%!^§:uint = 3;
      
      public static const §%_§:uint = 4;
      
      public static const §3I§:uint = 5;
       
      
      private var §%!G§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §-g§:Boolean;
      
      private var §1=§:Number;
      
      private var §6_§:Number;
      
      private var § T§:Boolean;
      
      private var §+![§:Number;
      
      private var §@!m§:Boolean;
      
      private var §1!Z§:Boolean;
      
      private var §8P§:Number;
      
      private var §2![§:Number;
      
      private var §2!,§:Number;
      
      private var §6!N§:Number;
      
      public function §8!z§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§%!G§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§-g§ = param7;
         this.§1=§ = param8;
         this.§6_§ = param9;
         this.§ T§ = param10;
         this.§+![§ = param11;
         this.§@!m§ = param12;
         this.§1!Z§ = param6;
         this.§8P§ = param13;
      }
      
      public function get type() : int
      {
         return this.§%!G§;
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
      
      public function get §!z§() : Boolean
      {
         return this.§-g§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§1=§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§6_§;
      }
      
      public function get §=@§() : Boolean
      {
         return this.§ T§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§+![§;
      }
      
      public function get §!!H§() : Boolean
      {
         return this.§@!m§;
      }
      
      public function get §=Z§() : Boolean
      {
         return this.§1!Z§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§8P§;
      }
      
      public function get axisX() : Number
      {
         return this.§2![§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§2![§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§2!,§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§2!,§ = param1;
      }
      
      public function get §%!B§() : Number
      {
         return this.§6!N§;
      }
      
      public function set §%!B§(param1:Number) : void
      {
         this.§6!N§ = param1;
      }
      
      public function §8G§(param1:§``§, param2:§``§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§%!G§)
         {
            case §8v§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§1!Z§;
               _loc3_.§@!8§ = 4;
               _loc3_.§+!n§ = 0.5;
               _loc3_.length = §,4§.§#F§(param1,param2);
               _loc3_.§&!§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
               return _loc3_;
            case §`,§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§1!Z§;
               _loc4_.§&!§(param1.getBody(),param2.getBody(),param1.getBody().§?Q§());
               return _loc4_;
            case §%!^§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§1!Z§;
               _loc5_.§&!§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§2<§ = this.§-g§;
               _loc5_.§#a§ = this.§ T§;
               _loc5_.motorSpeed = this.§+![§;
               _loc5_.§ !A§ = this.§6_§;
               _loc5_.§9"!§ = this.§1=§;
               _loc5_.§@!U§ = this.§8P§;
               return _loc5_;
            case §%_§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§1!Z§;
               _loc6_.§&!§(param1.getBody(),param2.getBody(),param1.getBody().§?Q§(),new b2Vec2(this.§2![§,this.§2!,§));
               _loc6_.§2<§ = !!this.§@!m§ ? false : Boolean(this.§-g§);
               _loc6_.§?"'§ = this.§1=§;
               _loc6_.§-!§ = this.§6_§;
               _loc6_.§#a§ = this.§ T§;
               _loc6_.§<!S§ = this.§8P§;
               _loc6_.motorSpeed = this.§+![§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
