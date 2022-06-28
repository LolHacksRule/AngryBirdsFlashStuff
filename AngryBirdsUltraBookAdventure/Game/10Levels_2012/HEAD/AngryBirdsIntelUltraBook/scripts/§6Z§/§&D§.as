package §6Z§
{
   import §3Y§.LevelObject;
   import §5!_§.b2DistanceJointDef;
   import §5!_§.b2JointDef;
   import §5!_§.b2PrismaticJointDef;
   import §5!_§.b2RevoluteJointDef;
   import §5!_§.b2WeldJointDef;
   import §?!&§.b2Vec2;
   import §?A§.LevelMain;
   import flash.geom.Point;
   
   public class §&D§
   {
      
      public static const §=!0§:uint = 1;
      
      public static const §9!-§:uint = 2;
      
      public static const §'!j§:uint = 3;
      
      public static const §;!I§:uint = 4;
      
      public static const §-0§:uint = 5;
       
      
      private var §9!Q§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §36§:Boolean;
      
      private var §,O§:Number;
      
      private var §]§:Number;
      
      private var §<I§:Boolean;
      
      private var §2j§:Number;
      
      private var §^!J§:Boolean;
      
      private var §>!!§:Boolean;
      
      private var §[!§:Number;
      
      private var §>!P§:Number;
      
      private var §&!9§:Number;
      
      private var §[4§:Number;
      
      public function §&D§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§9!Q§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§36§ = param7;
         this.§,O§ = param8;
         this.§]§ = param9;
         this.§<I§ = param10;
         this.§2j§ = param11;
         this.§^!J§ = param12;
         this.§>!!§ = param6;
         this.§[!§ = param13;
      }
      
      public function get type() : int
      {
         return this.§9!Q§;
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
      
      public function get §5J§() : Boolean
      {
         return this.§36§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§,O§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§]§;
      }
      
      public function get §=E§() : Boolean
      {
         return this.§<I§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§2j§;
      }
      
      public function get §8!&§() : Boolean
      {
         return this.§^!J§;
      }
      
      public function get §4!Q§() : Boolean
      {
         return this.§>!!§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§[!§;
      }
      
      public function get axisX() : Number
      {
         return this.§>!P§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§>!P§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§&!9§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§&!9§ = param1;
      }
      
      public function get §1_§() : Number
      {
         return this.§[4§;
      }
      
      public function set §1_§(param1:Number) : void
      {
         this.§[4§ = param1;
      }
      
      public function §2b§(param1:LevelObject, param2:LevelObject) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§9!Q§)
         {
            case §=!0§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§>!!§;
               _loc3_.§!N§ = 4;
               _loc3_.§^c§ = 0.5;
               _loc3_.length = LevelMain.§4!U§(param1,param2);
               _loc3_.§3!a§(param1.§8!N§(),param2.§8!N§(),param1.§8!N§().GetPosition(),param2.§8!N§().GetPosition());
               return _loc3_;
            case §9!-§:
               _loc4_ = new b2WeldJointDef();
               _loc4_.collideConnected = this.§>!!§;
               _loc4_.§3!a§(param1.§8!N§(),param2.§8!N§(),param1.§8!N§().§5!Q§());
               return _loc4_;
            case §'!j§:
               _loc5_ = new b2RevoluteJointDef();
               _loc5_.collideConnected = this.§>!!§;
               _loc5_.§3!a§(param1.§8!N§(),param2.§8!N§(),param1.§8!N§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§!X§ = this.§36§;
               _loc5_.§0e§ = this.§<I§;
               _loc5_.motorSpeed = this.§2j§;
               _loc5_.§ !>§ = this.§]§;
               _loc5_.§&;§ = this.§,O§;
               _loc5_.§?!h§ = this.§[!§;
               return _loc5_;
            case §;!I§:
               _loc6_ = new b2PrismaticJointDef();
               _loc6_.collideConnected = this.§>!!§;
               _loc6_.§3!a§(param1.§8!N§(),param2.§8!N§(),param1.§8!N§().§5!Q§(),new b2Vec2(this.§>!P§,this.§&!9§));
               _loc6_.§!X§ = !!this.§^!J§ ? Boolean(false) : Boolean(this.§36§);
               _loc6_.§1!D§ = this.§,O§;
               _loc6_.§#g§ = this.§]§;
               _loc6_.§0e§ = this.§<I§;
               _loc6_.§#M§ = this.§[!§;
               _loc6_.motorSpeed = this.§2j§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
