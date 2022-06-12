package §3"5§
{
   import § !V§.b2DistanceJointDef;
   import § !V§.b2JointDef;
   import § !V§.b2PrismaticJointDef;
   import § !V§.b2RevoluteJointDef;
   import § !V§.b2WeldJointDef;
   import §+!o§.§]"5§;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import flash.geom.Point;
   
   public class §6O§
   {
      
      public static const §#b§:uint = 1;
      
      public static const §+k§:uint = 2;
      
      public static const §4N§:uint = 3;
      
      public static const §2!+§:uint = 4;
      
      public static const §]I§:uint = 5;
       
      
      private var §#!W§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §!!§:Boolean;
      
      private var §0+§:Number;
      
      private var §%!E§:Number;
      
      private var §6!2§:Boolean;
      
      private var §3"0§:Number;
      
      private var §1!C§:Boolean;
      
      private var §7"!§:Boolean;
      
      private var §3!k§:Number;
      
      private var §?'§:Number;
      
      private var §6Z§:Number;
      
      private var § !W§:Number;
      
      public function §6O§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§#!W§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§!!§ = param7;
         this.§0+§ = param8;
         this.§%!E§ = param9;
         this.§6!2§ = param10;
         this.§3"0§ = param11;
         this.§1!C§ = param12;
         this.§7"!§ = param6;
         this.§3!k§ = param13;
      }
      
      public function get type() : int
      {
         return this.§#!W§;
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
      
      public function get §<"3§() : Boolean
      {
         return this.§!!§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§0+§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§%!E§;
      }
      
      public function get §1!j§() : Boolean
      {
         return this.§6!2§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§3"0§;
      }
      
      public function get §1!e§() : Boolean
      {
         return this.§1!C§;
      }
      
      public function get §8![§() : Boolean
      {
         return this.§7"!§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§3!k§;
      }
      
      public function get axisX() : Number
      {
         return this.§?'§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§?'§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§6Z§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§6Z§ = param1;
      }
      
      public function get §1!Q§() : Number
      {
         return this.§ !W§;
      }
      
      public function set §1!Q§(param1:Number) : void
      {
         this.§ !W§ = param1;
      }
      
      public function §3"#§(param1:§]"5§, param2:§]"5§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§#!W§)
         {
            case §#b§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§7"!§;
               _loc3_.§2!5§ = 4;
               _loc3_.§9!J§ = 0.5;
               _loc3_.length = §!w§.§@H§(param1,param2);
               _loc3_.§1o§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
               return _loc3_;
            case §+k§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§7"!§;
               _loc4_.§1o§(param1.getBody(),param2.getBody(),param1.getBody().§=!q§());
               return _loc4_;
            case §4N§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§7"!§;
               _loc5_.§1o§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§4!E§ = this.§!!§;
               _loc5_.§7!S§ = this.§6!2§;
               _loc5_.motorSpeed = this.§3"0§;
               _loc5_.§6!#§ = this.§%!E§;
               _loc5_.§@!U§ = this.§0+§;
               _loc5_.§1a§ = this.§3!k§;
               return _loc5_;
            case §2!+§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§7"!§;
               _loc6_.§1o§(param1.getBody(),param2.getBody(),param1.getBody().§=!q§(),new b2Vec2(this.§?'§,this.§6Z§));
               _loc6_.§4!E§ = !!this.§1!C§ ? false : Boolean(this.§!!§);
               _loc6_.§32§ = this.§0+§;
               _loc6_.§[!8§ = this.§%!E§;
               _loc6_.§7!S§ = this.§6!2§;
               _loc6_.§&E§ = this.§3!k§;
               _loc6_.motorSpeed = this.§3"0§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
