package §+!U§
{
   import § T§.§"!2§;
   import §5!K§.b2Vec2;
   import §5n§.b2DistanceJointDef;
   import §5n§.b2JointDef;
   import §5n§.b2PrismaticJointDef;
   import §5n§.b2RevoluteJointDef;
   import §5n§.b2WeldJointDef;
   import §7z§.§]!-§;
   import flash.geom.Point;
   
   public class § ]§
   {
      
      public static const §+h§:uint = 1;
      
      public static const §"!R§:uint = 2;
      
      public static const §set §:uint = 3;
      
      public static const §[j§:uint = 4;
      
      public static const §7!P§:uint = 5;
       
      
      private var §-]§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §`e§:Boolean;
      
      private var §'!]§:Number;
      
      private var §#C§:Number;
      
      private var §@?§:Boolean;
      
      private var §'B§:Number;
      
      private var §3!K§:Boolean;
      
      private var §?!R§:Boolean;
      
      private var §7P§:Number;
      
      private var §%K§:Number;
      
      private var §5W§:Number;
      
      private var § f§:Number;
      
      public function § ]§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§-]§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§`e§ = param7;
         this.§'!]§ = param8;
         this.§#C§ = param9;
         this.§@?§ = param10;
         this.§'B§ = param11;
         this.§3!K§ = param12;
         this.§?!R§ = param6;
         this.§7P§ = param13;
      }
      
      public function get type() : int
      {
         return this.§-]§;
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
      
      public function get §--§() : Boolean
      {
         return this.§`e§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§'!]§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§#C§;
      }
      
      public function get §`A§() : Boolean
      {
         return this.§@?§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§'B§;
      }
      
      public function get §+!C§() : Boolean
      {
         return this.§3!K§;
      }
      
      public function get §]!'§() : Boolean
      {
         return this.§?!R§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§7P§;
      }
      
      public function get axisX() : Number
      {
         return this.§%K§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§%K§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§5W§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§5W§ = param1;
      }
      
      public function get each() : Number
      {
         return this.§ f§;
      }
      
      public function set each(param1:Number) : void
      {
         this.§ f§ = param1;
      }
      
      public function §<D§(param1:§"!2§, param2:§"!2§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§-]§)
         {
            case §+h§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§?!R§;
               _loc3_.§+!§ = 4;
               _loc3_.§1!J§ = 0.5;
               _loc3_.length = §]!-§.§&6§(param1,param2);
               _loc3_.§2![§(param1.§][§(),param2.§][§(),param1.§][§().GetPosition(),param2.§][§().GetPosition());
               return _loc3_;
            case §"!R§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§?!R§;
               _loc4_.§2![§(param1.§][§(),param2.§][§(),param1.§][§().§97§());
               return _loc4_;
            case §set §:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§?!R§;
               _loc5_.§2![§(param1.§][§(),param2.§][§(),param1.§][§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§64§ = this.§`e§;
               _loc5_.§ in§ = this.§@?§;
               _loc5_.motorSpeed = this.§'B§;
               _loc5_.§ !"§ = this.§#C§;
               _loc5_.§!!+§ = this.§'!]§;
               _loc5_.§0!E§ = this.§7P§;
               return _loc5_;
            case §[j§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§?!R§;
               _loc6_.§2![§(param1.§][§(),param2.§][§(),param1.§][§().§97§(),new b2Vec2(this.§%K§,this.§5W§));
               _loc6_.§64§ = !!this.§3!K§ ? false : Boolean(this.§`e§);
               _loc6_.§12§ = this.§'!]§;
               _loc6_.§do § = this.§#C§;
               _loc6_.§ in§ = this.§@?§;
               _loc6_.§'R§ = this.§7P§;
               _loc6_.motorSpeed = this.§'B§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
