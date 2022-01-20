package §=!9§
{
   import § !J§.§%M§;
   import §!!M§.b2DistanceJointDef;
   import §!!M§.b2JointDef;
   import §!!M§.b2PrismaticJointDef;
   import §!!M§.b2RevoluteJointDef;
   import §!!M§.b2WeldJointDef;
   import §+S§.b2Vec2;
   import §4j§.§9M§;
   import flash.geom.Point;
   
   public class §=g§
   {
      
      public static const §<!V§:uint = 1;
      
      public static const §-!k§:uint = 2;
      
      public static const §@<§:uint = 3;
      
      public static const §0!Q§:uint = 4;
      
      public static const § ![§:uint = 5;
       
      
      private var §8!4§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §>[§:Boolean;
      
      private var §@B§:Number;
      
      private var §6!$§:Number;
      
      private var §`Y§:Boolean;
      
      private var §'!&§:Number;
      
      private var § "§:Boolean;
      
      private var §0J§:Boolean;
      
      private var §0'§:Number;
      
      private var §2!@§:Number;
      
      private var §^!S§:Number;
      
      private var §`!7§:Number;
      
      public function §=g§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§8!4§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§>[§ = param7;
         this.§@B§ = param8;
         this.§6!$§ = param9;
         this.§`Y§ = param10;
         this.§'!&§ = param11;
         this.§ "§ = param12;
         this.§0J§ = param6;
         this.§0'§ = param13;
      }
      
      public function get type() : int
      {
         return this.§8!4§;
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
      
      public function get §!0§() : Boolean
      {
         return this.§>[§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§@B§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§6!$§;
      }
      
      public function get §6L§() : Boolean
      {
         return this.§`Y§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§'!&§;
      }
      
      public function get §=M§() : Boolean
      {
         return this.§ "§;
      }
      
      public function get §]!V§() : Boolean
      {
         return this.§0J§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§0'§;
      }
      
      public function get axisX() : Number
      {
         return this.§2!@§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§2!@§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§^!S§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§^!S§ = param1;
      }
      
      public function get §>!B§() : Number
      {
         return this.§`!7§;
      }
      
      public function set §>!B§(param1:Number) : void
      {
         this.§`!7§ = param1;
      }
      
      public function §,!I§(param1:§9M§, param2:§9M§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§8!4§)
         {
            case §<!V§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§0J§;
               _loc3_.§"j§ = 4;
               _loc3_.§%6§ = 0.5;
               _loc3_.length = §%M§.§^!g§(param1,param2);
               _loc3_.§`!9§(param1.§3H§(),param2.§3H§(),param1.§3H§().GetPosition(),param2.§3H§().GetPosition());
               return _loc3_;
            case §-!k§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§0J§;
               _loc4_.§`!9§(param1.§3H§(),param2.§3H§(),param1.§3H§().GetWorldCenter());
               return _loc4_;
            case §@<§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§0J§;
               _loc5_.§`!9§(param1.§3H§(),param2.§3H§(),param1.§3H§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§5X§ = this.§>[§;
               _loc5_.§,!9§ = this.§`Y§;
               _loc5_.motorSpeed = this.§'!&§;
               _loc5_.§6g§ = this.§6!$§;
               _loc5_.§'s§ = this.§@B§;
               _loc5_.§1%§ = this.§0'§;
               return _loc5_;
            case §0!Q§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§0J§;
               _loc6_.§`!9§(param1.§3H§(),param2.§3H§(),param1.§3H§().GetWorldCenter(),new b2Vec2(this.§2!@§,this.§^!S§));
               _loc6_.§5X§ = !!this.§ "§ ? false : Boolean(this.§>[§);
               _loc6_.§#!b§ = this.§@B§;
               _loc6_.§,!S§ = this.§6!$§;
               _loc6_.§,!9§ = this.§`Y§;
               _loc6_.§8!L§ = this.§0'§;
               _loc6_.motorSpeed = this.§'!&§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
