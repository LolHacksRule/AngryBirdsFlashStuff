package §`!C§
{
   import §"U§.b2Vec2;
   import §%`§.§"s§;
   import §'a§.§0!f§;
   import §`!Z§.b2DistanceJointDef;
   import §`!Z§.b2JointDef;
   import §`!Z§.b2PrismaticJointDef;
   import §`!Z§.b2RevoluteJointDef;
   import §`!Z§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §"!5§
   {
      
      public static const §?#§:uint = 1;
      
      public static const § !'§:uint = 2;
      
      public static const §=c§:uint = 3;
      
      public static const §@3§:uint = 4;
      
      public static const §=a§:uint = 5;
       
      
      private var §91§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var § !#§:Boolean;
      
      private var §^!5§:Number;
      
      private var §]G§:Number;
      
      private var §1!Q§:Boolean;
      
      private var §9!]§:Number;
      
      private var §`_§:Boolean;
      
      private var §#!H§:Boolean;
      
      private var §@0§:Number;
      
      private var §-!e§:Number;
      
      private var §%?§:Number;
      
      private var §[!N§:Number;
      
      public function §"!5§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§91§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§ !#§ = param7;
         this.§^!5§ = param8;
         this.§]G§ = param9;
         this.§1!Q§ = param10;
         this.§9!]§ = param11;
         this.§`_§ = param12;
         this.§#!H§ = param6;
         this.§@0§ = param13;
      }
      
      public function get type() : int
      {
         return this.§91§;
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
      
      public function get §#Q§() : Boolean
      {
         return this.§ !#§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§^!5§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§]G§;
      }
      
      public function get §[!=§() : Boolean
      {
         return this.§1!Q§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§9!]§;
      }
      
      public function get § b§() : Boolean
      {
         return this.§`_§;
      }
      
      public function get §0!I§() : Boolean
      {
         return this.§#!H§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§@0§;
      }
      
      public function get axisX() : Number
      {
         return this.§-!e§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§-!e§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§%?§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§%?§ = param1;
      }
      
      public function get §&V§() : Number
      {
         return this.§[!N§;
      }
      
      public function set §&V§(param1:Number) : void
      {
         this.§[!N§ = param1;
      }
      
      public function §46§(param1:§"s§, param2:§"s§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§91§)
         {
            case §?#§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§#!H§;
               _loc3_.§2b§ = 4;
               _loc3_.§5N§ = 0.5;
               _loc3_.length = §0!f§.§;!k§(param1,param2);
               _loc3_.§6!_§(param1.§%9§(),param2.§%9§(),param1.§%9§().GetPosition(),param2.§%9§().GetPosition());
               return _loc3_;
            case § !'§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§#!H§;
               _loc4_.§6!_§(param1.§%9§(),param2.§%9§(),param1.§%9§().GetWorldCenter());
               return _loc4_;
            case §=c§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§#!H§;
               _loc5_.§6!_§(param1.§%9§(),param2.§%9§(),param1.§%9§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§2!;§ = this.§ !#§;
               _loc5_.§>!e§ = this.§1!Q§;
               _loc5_.motorSpeed = this.§9!]§;
               _loc5_.§#! § = this.§]G§;
               _loc5_.§-!j§ = this.§^!5§;
               _loc5_.§%2§ = this.§@0§;
               return _loc5_;
            case §@3§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§#!H§;
               _loc6_.§6!_§(param1.§%9§(),param2.§%9§(),param1.§%9§().GetWorldCenter(),new b2Vec2(this.§-!e§,this.§%?§));
               _loc6_.§2!;§ = !!this.§`_§ ? false : Boolean(this.§ !#§);
               _loc6_.§[!Q§ = this.§^!5§;
               _loc6_.§;;§ = this.§]G§;
               _loc6_.§>!e§ = this.§1!Q§;
               _loc6_.§7!!§ = this.§@0§;
               _loc6_.motorSpeed = this.§9!]§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
