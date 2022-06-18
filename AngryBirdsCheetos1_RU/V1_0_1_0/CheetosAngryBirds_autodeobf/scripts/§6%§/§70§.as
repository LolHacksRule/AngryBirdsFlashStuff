package §6%§
{
   import §!!V§.§&I§;
   import §&!B§.b2Vec2;
   import §,!8§.b2DistanceJointDef;
   import §,!8§.b2JointDef;
   import §,!8§.b2PrismaticJointDef;
   import §,!8§.b2RevoluteJointDef;
   import §,!8§.b2WeldJointDef;
   import §]!+§.§";§;
   import flash.geom.Point;
   
   public class §70§
   {
      
      public static const §%$§:uint = 1;
      
      public static const §#B§:uint = 2;
      
      public static const § do§:uint = 3;
      
      public static const §?c§:uint = 4;
      
      public static const §@K§:uint = 5;
       
      
      private var §>!X§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §8i§:Boolean;
      
      private var §+i§:Number;
      
      private var §&!6§:Number;
      
      private var §>t§:Boolean;
      
      private var §8Q§:Number;
      
      private var §6X§:Boolean;
      
      private var §,m§:Boolean;
      
      private var §'5§:Number;
      
      private var §]^§:Number;
      
      private var §%5§:Number;
      
      private var §;!P§:Number;
      
      public function §70§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§>!X§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§8i§ = param7;
         this.§+i§ = param8;
         this.§&!6§ = param9;
         this.§>t§ = param10;
         this.§8Q§ = param11;
         this.§6X§ = param12;
         this.§,m§ = param6;
         this.§'5§ = param13;
      }
      
      public function get type() : int
      {
         return this.§>!X§;
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
      
      public function get §+!,§() : Boolean
      {
         return this.§8i§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§+i§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§&!6§;
      }
      
      public function get §5=§() : Boolean
      {
         return this.§>t§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§8Q§;
      }
      
      public function get §75§() : Boolean
      {
         return this.§6X§;
      }
      
      public function get §4=§() : Boolean
      {
         return this.§,m§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§'5§;
      }
      
      public function get axisX() : Number
      {
         return this.§]^§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§]^§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§%5§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§%5§ = param1;
      }
      
      public function get §2[§() : Number
      {
         return this.§;!P§;
      }
      
      public function set §2[§(param1:Number) : void
      {
         this.§;!P§ = param1;
      }
      
      public function §[S§(param1:§";§, param2:§";§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§>!X§)
         {
            case §%$§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§,m§;
               _loc3_.§5![§ = 4;
               _loc3_.§-?§ = 0.5;
               _loc3_.length = §&I§.§6!"§(param1,param2);
               _loc3_.§8#§(param1.§?A§(),param2.§?A§(),param1.§?A§().GetPosition(),param2.§?A§().GetPosition());
               return _loc3_;
            case §#B§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§,m§;
               _loc4_.§8#§(param1.§?A§(),param2.§?A§(),param1.§?A§().§9!H§());
               return _loc4_;
            case § do§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§,m§;
               _loc5_.§8#§(param1.§?A§(),param2.§?A§(),param1.§?A§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§!O§ = this.§8i§;
               _loc5_.§3!@§ = this.§>t§;
               _loc5_.motorSpeed = this.§8Q§;
               _loc5_.§9!§ = this.§&!6§;
               _loc5_.§@!V§ = this.§+i§;
               _loc5_.§9!J§ = this.§'5§;
               return _loc5_;
            case §?c§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§,m§;
               _loc6_.§8#§(param1.§?A§(),param2.§?A§(),param1.§?A§().§9!H§(),new b2Vec2(this.§]^§,this.§%5§));
               _loc6_.§!O§ = !!this.§6X§ ? false : Boolean(this.§8i§);
               _loc6_.§'A§ = this.§+i§;
               _loc6_.§>!M§ = this.§&!6§;
               _loc6_.§3!@§ = this.§>t§;
               _loc6_.§0d§ = this.§'5§;
               _loc6_.motorSpeed = this.§8Q§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
