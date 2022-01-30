package §%!I§
{
   import §4!s§.§%I§;
   import §="§.§`T§;
   import §?!h§.b2Vec2;
   import §^!2§.b2DistanceJointDef;
   import §^!2§.b2JointDef;
   import §^!2§.b2PrismaticJointDef;
   import §^!2§.b2RevoluteJointDef;
   import §^!2§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class § C§
   {
      
      public static const §<!w§:uint = 1;
      
      public static const §7!t§:uint = 2;
      
      public static const §;%§:uint = 3;
      
      public static const §<!&§:uint = 4;
      
      public static const §<" §:uint = 5;
       
      
      private var §5!d§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §<§:Boolean;
      
      private var § ^§:Number;
      
      private var §0!h§:Number;
      
      private var §+!]§:Boolean;
      
      private var § u§:Number;
      
      private var §,"!§:Boolean;
      
      private var §@! §:Boolean;
      
      private var § !0§:Number;
      
      private var §9!?§:Number;
      
      private var §%7§:Number;
      
      private var §8o§:Number;
      
      public function § C§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§5!d§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§<§ = param7;
         this.§ ^§ = param8;
         this.§0!h§ = param9;
         this.§+!]§ = param10;
         this.§ u§ = param11;
         this.§,"!§ = param12;
         this.§@! § = param6;
         this.§ !0§ = param13;
      }
      
      public function get type() : int
      {
         return this.§5!d§;
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
      
      public function get §^"2§() : Boolean
      {
         return this.§<§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§ ^§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§0!h§;
      }
      
      public function get §!'§() : Boolean
      {
         return this.§+!]§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§ u§;
      }
      
      public function get §'!Y§() : Boolean
      {
         return this.§,"!§;
      }
      
      public function get §5y§() : Boolean
      {
         return this.§@! §;
      }
      
      public function get maxTorque() : Number
      {
         return this.§ !0§;
      }
      
      public function get axisX() : Number
      {
         return this.§9!?§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§9!?§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§%7§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§%7§ = param1;
      }
      
      public function get §-^§() : Number
      {
         return this.§8o§;
      }
      
      public function set §-^§(param1:Number) : void
      {
         this.§8o§ = param1;
      }
      
      public function §>I§(param1:§`T§, param2:§`T§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§5!d§)
         {
            case §<!w§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§@! §;
               _loc3_.§`!j§ = 4;
               _loc3_.§#T§ = 0.5;
               _loc3_.length = §%I§.§>!J§(param1,param2);
               _loc3_.§6"8§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
               return _loc3_;
            case §7!t§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§@! §;
               _loc4_.§6"8§(param1.getBody(),param2.getBody(),param1.getBody().§^§());
               return _loc4_;
            case §;%§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§@! §;
               _loc5_.§6"8§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§2!Z§ = this.§<§;
               _loc5_.§"z§ = this.§+!]§;
               _loc5_.motorSpeed = this.§ u§;
               _loc5_.§&I§ = this.§0!h§;
               _loc5_.§@!m§ = this.§ ^§;
               _loc5_.§^""§ = this.§ !0§;
               return _loc5_;
            case §<!&§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§@! §;
               _loc6_.§6"8§(param1.getBody(),param2.getBody(),param1.getBody().§^§(),new b2Vec2(this.§9!?§,this.§%7§));
               _loc6_.§2!Z§ = !!this.§,"!§ ? false : Boolean(this.§<§);
               _loc6_.§]T§ = this.§ ^§;
               _loc6_.§^!,§ = this.§0!h§;
               _loc6_.§"z§ = this.§+!]§;
               _loc6_.§>!N§ = this.§ !0§;
               _loc6_.motorSpeed = this.§ u§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
