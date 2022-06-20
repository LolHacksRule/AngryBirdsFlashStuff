package §8g§
{
   import §#]§.b2Vec2;
   import §8k§.b2DistanceJointDef;
   import §8k§.b2JointDef;
   import §8k§.b2PrismaticJointDef;
   import §8k§.b2RevoluteJointDef;
   import §8k§.b2WeldJointDef;
   import §9"!§.§9"3§;
   import §9"%§.§&!r§;
   import flash.geom.Point;
   
   public class §?!V§
   {
      
      public static const §<,§:uint = 1;
      
      public static const §6P§:uint = 2;
      
      public static const §#!g§:uint = 3;
      
      public static const §+&§:uint = 4;
      
      public static const §3!x§:uint = 5;
       
      
      private var §%8§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §`0§:Boolean;
      
      private var §#"#§:Number;
      
      private var §`!_§:Number;
      
      private var §8"§:Boolean;
      
      private var §2]§:Number;
      
      private var §4B§:Boolean;
      
      private var §+!8§:Boolean;
      
      private var §<H§:Number;
      
      private var §-q§:Number;
      
      private var §2"0§:Number;
      
      private var §8!e§:Number;
      
      public function §?!V§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§%8§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§`0§ = param7;
         this.§#"#§ = param8;
         this.§`!_§ = param9;
         this.§8"§ = param10;
         this.§2]§ = param11;
         this.§4B§ = param12;
         this.§+!8§ = param6;
         this.§<H§ = param13;
      }
      
      public function get type() : int
      {
         return this.§%8§;
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
      
      public function get §2!&§() : Boolean
      {
         return this.§`0§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§#"#§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§`!_§;
      }
      
      public function get §!!F§() : Boolean
      {
         return this.§8"§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§2]§;
      }
      
      public function get §3U§() : Boolean
      {
         return this.§4B§;
      }
      
      public function get §;i§() : Boolean
      {
         return this.§+!8§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§<H§;
      }
      
      public function get axisX() : Number
      {
         return this.§-q§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§-q§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§2"0§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§2"0§ = param1;
      }
      
      public function get §]A§() : Number
      {
         return this.§8!e§;
      }
      
      public function set §]A§(param1:Number) : void
      {
         this.§8!e§ = param1;
      }
      
      public function §]0§(param1:§&!r§, param2:§&!r§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§%8§)
         {
            case §<,§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§+!8§;
               _loc3_.§>"9§ = 4;
               _loc3_.§""2§ = 0.5;
               _loc3_.length = §9"3§.§8&§(param1,param2);
               _loc3_.§`!r§(param1.§=!y§(),param2.§=!y§(),param1.§=!y§().GetPosition(),param2.§=!y§().GetPosition());
               return _loc3_;
            case §6P§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§+!8§;
               _loc4_.§`!r§(param1.§=!y§(),param2.§=!y§(),param1.§=!y§().§6!j§());
               return _loc4_;
            case §#!g§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§+!8§;
               _loc5_.§`!r§(param1.§=!y§(),param2.§=!y§(),param1.§=!y§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§3"%§ = this.§`0§;
               _loc5_.§[!c§ = this.§8"§;
               _loc5_.motorSpeed = this.§2]§;
               _loc5_.§,!=§ = this.§`!_§;
               _loc5_.§"!A§ = this.§#"#§;
               _loc5_.§3$§ = this.§<H§;
               return _loc5_;
            case §+&§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§+!8§;
               _loc6_.§`!r§(param1.§=!y§(),param2.§=!y§(),param1.§=!y§().§6!j§(),new b2Vec2(this.§-q§,this.§2"0§));
               _loc6_.§3"%§ = !!this.§4B§ ? false : Boolean(this.§`0§);
               _loc6_.§[!7§ = this.§#"#§;
               _loc6_.§<!T§ = this.§`!_§;
               _loc6_.§[!c§ = this.§8"§;
               _loc6_.§22§ = this.§<H§;
               _loc6_.motorSpeed = this.§2]§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
