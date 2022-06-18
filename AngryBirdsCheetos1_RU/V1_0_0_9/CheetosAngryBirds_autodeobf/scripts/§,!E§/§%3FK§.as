package §,!E§
{
   import §!H§.b2DistanceJointDef;
   import §!H§.b2JointDef;
   import §!H§.b2PrismaticJointDef;
   import §!H§.b2RevoluteJointDef;
   import §!H§.b2WeldJointDef;
   import §#!P§.§2!W§;
   import §3E§.§6w§;
   import §;U§.b2Vec2;
   import flash.geom.Point;
   
   public class §?K§
   {
      
      public static const §[k§:uint = 1;
      
      public static const § f§:uint = 2;
      
      public static const §4H§:uint = 3;
      
      public static const §`K§:uint = 4;
      
      public static const §<!D§:uint = 5;
       
      
      private var §&1§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §!0§:Boolean;
      
      private var §#H§:Number;
      
      private var §7!5§:Number;
      
      private var §>q§:Boolean;
      
      private var §<b§:Number;
      
      private var §1D§:Boolean;
      
      private var §2E§:Boolean;
      
      private var §7!@§:Number;
      
      private var §!!M§:Number;
      
      private var § !=§:Number;
      
      private var §=c§:Number;
      
      public function §?K§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§&1§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§!0§ = param7;
         this.§#H§ = param8;
         this.§7!5§ = param9;
         this.§>q§ = param10;
         this.§<b§ = param11;
         this.§1D§ = param12;
         this.§2E§ = param6;
         this.§7!@§ = param13;
      }
      
      public function get type() : int
      {
         return this.§&1§;
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
      
      public function get §6V§() : Boolean
      {
         return this.§!0§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§#H§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§7!5§;
      }
      
      public function get §-q§() : Boolean
      {
         return this.§>q§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§<b§;
      }
      
      public function get § !T§() : Boolean
      {
         return this.§1D§;
      }
      
      public function get §3D§() : Boolean
      {
         return this.§2E§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§7!@§;
      }
      
      public function get axisX() : Number
      {
         return this.§!!M§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§!!M§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§ !=§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§ !=§ = param1;
      }
      
      public function get §5"§() : Number
      {
         return this.§=c§;
      }
      
      public function set §5"§(param1:Number) : void
      {
         this.§=c§ = param1;
      }
      
      public function §<!2§(param1:§2!W§, param2:§2!W§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§&1§)
         {
            case §[k§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§2E§;
               _loc3_.§!;§ = 4;
               _loc3_.§=h§ = 0.5;
               _loc3_.length = §6w§.§!I§(param1,param2);
               _loc3_.§`!0§(param1.§84§(),param2.§84§(),param1.§84§().GetPosition(),param2.§84§().GetPosition());
               return _loc3_;
            case § f§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§2E§;
               _loc4_.§`!0§(param1.§84§(),param2.§84§(),param1.§84§().§8Y§());
               return _loc4_;
            case §4H§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§2E§;
               _loc5_.§`!0§(param1.§84§(),param2.§84§(),param1.§84§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§^+§ = this.§!0§;
               _loc5_.§+!6§ = this.§>q§;
               _loc5_.motorSpeed = this.§<b§;
               _loc5_.§'!'§ = this.§7!5§;
               _loc5_.§0q§ = this.§#H§;
               _loc5_.§[4§ = this.§7!@§;
               return _loc5_;
            case §`K§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§2E§;
               _loc6_.§`!0§(param1.§84§(),param2.§84§(),param1.§84§().§8Y§(),new b2Vec2(this.§!!M§,this.§ !=§));
               _loc6_.§^+§ = !!this.§1D§ ? false : Boolean(this.§!0§);
               _loc6_.§^h§ = this.§#H§;
               _loc6_.§`!;§ = this.§7!5§;
               _loc6_.§+!6§ = this.§>q§;
               _loc6_.§+!0§ = this.§7!@§;
               _loc6_.motorSpeed = this.§<b§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
