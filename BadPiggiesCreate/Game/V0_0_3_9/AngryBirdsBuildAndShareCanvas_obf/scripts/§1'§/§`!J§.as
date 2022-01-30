package §1'§
{
   import §-!G§.b2Vec2;
   import §8!k§.b2DistanceJointDef;
   import §8!k§.b2JointDef;
   import §8!k§.b2PrismaticJointDef;
   import §8!k§.b2RevoluteJointDef;
   import §8!k§.b2WeldJointDef;
   import §=b§.§-!K§;
   import §]r§.§9!R§;
   import flash.geom.Point;
   
   public class §`!J§
   {
      
      public static const §7!t§:uint = 1;
      
      public static const §]4§:uint = 2;
      
      public static const §#l§:uint = 3;
      
      public static const §="#§:uint = 4;
      
      public static const §6Q§:uint = 5;
       
      
      private var §[!G§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §7I§:Boolean;
      
      private var §]o§:Number;
      
      private var §;"§:Number;
      
      private var §#!7§:Boolean;
      
      private var §5+§:Number;
      
      private var §4!=§:Boolean;
      
      private var §=!H§:Boolean;
      
      private var §3V§:Number;
      
      private var §3!g§:Number;
      
      private var §2!§:Number;
      
      private var §43§:Number;
      
      public function §`!J§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§[!G§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§7I§ = param7;
         this.§]o§ = param8;
         this.§;"§ = param9;
         this.§#!7§ = param10;
         this.§5+§ = param11;
         this.§4!=§ = param12;
         this.§=!H§ = param6;
         this.§3V§ = param13;
      }
      
      public function get type() : int
      {
         return this.§[!G§;
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
      
      public function get §-u§() : Boolean
      {
         return this.§7I§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§]o§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§;"§;
      }
      
      public function get §"T§() : Boolean
      {
         return this.§#!7§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§5+§;
      }
      
      public function get §!"4§() : Boolean
      {
         return this.§4!=§;
      }
      
      public function get §`!@§() : Boolean
      {
         return this.§=!H§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§3V§;
      }
      
      public function get axisX() : Number
      {
         return this.§3!g§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§3!g§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§2!§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§2!§ = param1;
      }
      
      public function get §9"%§() : Number
      {
         return this.§43§;
      }
      
      public function set §9"%§(param1:Number) : void
      {
         this.§43§ = param1;
      }
      
      public function §!!f§(param1:§9!R§, param2:§9!R§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§[!G§)
         {
            case §7!t§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§=!H§;
               _loc3_.§-"%§ = 4;
               _loc3_.§0"3§ = 0.5;
               _loc3_.length = §-!K§.§9@§(param1,param2);
               _loc3_.§+"'§(param1.getBody(),param2.getBody(),param1.getBody().GetPosition(),param2.getBody().GetPosition());
               return _loc3_;
            case §]4§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§=!H§;
               _loc4_.§+"'§(param1.getBody(),param2.getBody(),param1.getBody().§%!d§());
               return _loc4_;
            case §#l§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§=!H§;
               _loc5_.§+"'§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§=!4§ = this.§7I§;
               _loc5_.§[!b§ = this.§#!7§;
               _loc5_.motorSpeed = this.§5+§;
               _loc5_.§+!Q§ = this.§;"§;
               _loc5_.§8!!§ = this.§]o§;
               _loc5_.§+!O§ = this.§3V§;
               return _loc5_;
            case §="#§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§=!H§;
               _loc6_.§+"'§(param1.getBody(),param2.getBody(),param1.getBody().§%!d§(),new b2Vec2(this.§3!g§,this.§2!§));
               _loc6_.§=!4§ = !!this.§4!=§ ? false : Boolean(this.§7I§);
               _loc6_.§8!f§ = this.§]o§;
               _loc6_.§""6§ = this.§;"§;
               _loc6_.§[!b§ = this.§#!7§;
               _loc6_.§'!I§ = this.§3V§;
               _loc6_.motorSpeed = this.§5+§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
