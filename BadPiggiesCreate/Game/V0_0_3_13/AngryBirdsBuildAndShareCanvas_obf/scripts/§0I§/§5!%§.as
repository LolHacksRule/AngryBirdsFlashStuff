package §0I§
{
   import §1!z§.b2Vec2;
   import §8!E§.§?!X§;
   import §?"&§.§"!q§;
   import §^%§.b2DistanceJointDef;
   import §^%§.b2JointDef;
   import §^%§.b2PrismaticJointDef;
   import §^%§.b2RevoluteJointDef;
   import §^%§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §5!%§
   {
      
      public static const §6!P§:uint = 1;
      
      public static const §@"2§:uint = 2;
      
      public static const §-!%§:uint = 3;
      
      public static const §%U§:uint = 4;
      
      public static const §=$§:uint = 5;
       
      
      private var §4!I§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §>!"§:Boolean;
      
      private var §7v§:Number;
      
      private var §4!;§:Number;
      
      private var §8"'§:Boolean;
      
      private var §3L§:Number;
      
      private var §6U§:Boolean;
      
      private var §?N§:Boolean;
      
      private var §<4§:Number;
      
      private var §6!a§:Number;
      
      private var §>!^§:Number;
      
      private var §9"9§:Number;
      
      public function §5!%§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§4!I§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§>!"§ = param7;
         this.§7v§ = param8;
         this.§4!;§ = param9;
         this.§8"'§ = param10;
         this.§3L§ = param11;
         this.§6U§ = param12;
         this.§?N§ = param6;
         this.§<4§ = param13;
      }
      
      public function get type() : int
      {
         return this.§4!I§;
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
      
      public function get §@"1§() : Boolean
      {
         return this.§>!"§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§7v§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§4!;§;
      }
      
      public function get §;!f§() : Boolean
      {
         return this.§8"'§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§3L§;
      }
      
      public function get §8<§() : Boolean
      {
         return this.§6U§;
      }
      
      public function get §#!I§() : Boolean
      {
         return this.§?N§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§<4§;
      }
      
      public function get axisX() : Number
      {
         return this.§6!a§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§6!a§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§>!^§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§>!^§ = param1;
      }
      
      public function get §^_§() : Number
      {
         return this.§9"9§;
      }
      
      public function set §^_§(param1:Number) : void
      {
         this.§9"9§ = param1;
      }
      
      public function §+!D§(param1:§"!q§, param2:§"!q§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§4!I§)
         {
            case §6!P§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§?N§;
               _loc3_.§>&§ = 4;
               _loc3_.§ o§ = 0.5;
               _loc3_.length = §?!X§.§,!Y§(param1,param2);
               _loc3_.§`!O§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
               return _loc3_;
            case §@"2§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§?N§;
               _loc4_.§`!O§(param1.getBody(),param2.getBody(),param1.getBody().§<t§());
               return _loc4_;
            case §-!%§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§?N§;
               _loc5_.§`!O§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§;5§ = this.§>!"§;
               _loc5_.§>!g§ = this.§8"'§;
               _loc5_.motorSpeed = this.§3L§;
               _loc5_.§=u§ = this.§4!;§;
               _loc5_.§6!W§ = this.§7v§;
               _loc5_.§]";§ = this.§<4§;
               return _loc5_;
            case §%U§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§?N§;
               _loc6_.§`!O§(param1.getBody(),param2.getBody(),param1.getBody().§<t§(),new b2Vec2(this.§6!a§,this.§>!^§));
               _loc6_.§;5§ = !!this.§6U§ ? false : Boolean(this.§>!"§);
               _loc6_.§ +§ = this.§7v§;
               _loc6_.§@0§ = this.§4!;§;
               _loc6_.§>!g§ = this.§8"'§;
               _loc6_.§[!<§ = this.§<4§;
               _loc6_.motorSpeed = this.§3L§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
