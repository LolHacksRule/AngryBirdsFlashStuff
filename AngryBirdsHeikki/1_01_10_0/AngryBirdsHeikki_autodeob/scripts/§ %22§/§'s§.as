package § "§
{
   import §"!I§.§^!2§;
   import §"d§.b2DistanceJointDef;
   import §"d§.b2JointDef;
   import §"d§.b2PrismaticJointDef;
   import §"d§.b2RevoluteJointDef;
   import §"d§.b2WeldJointDef;
   import §+!8§.§,_§;
   import §6A§.b2Vec2;
   import flash.geom.Point;
   
   public class §'s§
   {
      
      public static const §>X§:uint = 1;
      
      public static const §7!K§:uint = 2;
      
      public static const §3J§:uint = 3;
      
      public static const §`!d§:uint = 4;
      
      public static const §>t§:uint = 5;
       
      
      private var §>A§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §?5§:Boolean;
      
      private var §<<§:Number;
      
      private var §1y§:Number;
      
      private var §"C§:Boolean;
      
      private var §<X§:Number;
      
      private var §<!N§:Boolean;
      
      private var §-![§:Boolean;
      
      private var §]Y§:Number;
      
      private var §!!!§:Number;
      
      private var §@&§:Number;
      
      private var §0o§:Number;
      
      public function §'s§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§>A§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§?5§ = param7;
         this.§<<§ = param8;
         this.§1y§ = param9;
         this.§"C§ = param10;
         this.§<X§ = param11;
         this.§<!N§ = param12;
         this.§-![§ = param6;
         this.§]Y§ = param13;
      }
      
      public function get type() : int
      {
         return this.§>A§;
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
      
      public function get §2!;§() : Boolean
      {
         return this.§?5§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§<<§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§1y§;
      }
      
      public function get §[z§() : Boolean
      {
         return this.§"C§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§<X§;
      }
      
      public function get §%0§() : Boolean
      {
         return this.§<!N§;
      }
      
      public function get §>!S§() : Boolean
      {
         return this.§-![§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§]Y§;
      }
      
      public function get axisX() : Number
      {
         return this.§!!!§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§!!!§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§@&§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§@&§ = param1;
      }
      
      public function get §07§() : Number
      {
         return this.§0o§;
      }
      
      public function set §07§(param1:Number) : void
      {
         this.§0o§ = param1;
      }
      
      public function §7z§(param1:§,_§, param2:§,_§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§>A§)
         {
            case §>X§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§-![§;
               _loc3_.§&!a§ = 4;
               _loc3_.§0J§ = 0.5;
               _loc3_.length = §^!2§.§2X§(param1,param2);
               _loc3_.§';§(param1.§0c§(),param2.§0c§(),param1.§0c§().GetPosition(),param2.§0c§().GetPosition());
               return _loc3_;
            case §7!K§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§-![§;
               _loc4_.§';§(param1.§0c§(),param2.§0c§(),param1.§0c§().§ g§());
               return _loc4_;
            case §3J§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§-![§;
               _loc5_.§';§(param1.§0c§(),param2.§0c§(),param1.§0c§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§3L§ = this.§?5§;
               _loc5_.§;`§ = this.§"C§;
               _loc5_.motorSpeed = this.§<X§;
               _loc5_.§ b§ = this.§1y§;
               _loc5_.§"!0§ = this.§<<§;
               _loc5_.§'Y§ = this.§]Y§;
               return _loc5_;
            case §`!d§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§-![§;
               _loc6_.§';§(param1.§0c§(),param2.§0c§(),param1.§0c§().§ g§(),new b2Vec2(this.§!!!§,this.§@&§));
               _loc6_.§3L§ = !!this.§<!N§ ? false : Boolean(this.§?5§);
               _loc6_.§<T§ = this.§<<§;
               _loc6_.§[g§ = this.§1y§;
               _loc6_.§;`§ = this.§"C§;
               _loc6_.include = this.§]Y§;
               _loc6_.motorSpeed = this.§<X§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
