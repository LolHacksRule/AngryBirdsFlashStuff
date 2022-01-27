package §?!R§
{
   import §+!#§.§9!5§;
   import §0!=§.b2Vec2;
   import §2z§.§2!U§;
   import §8<§.b2DistanceJointDef;
   import §8<§.b2JointDef;
   import §8<§.b2PrismaticJointDef;
   import §8<§.b2RevoluteJointDef;
   import §8<§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §2!L§
   {
      
      public static const §+5§:uint = 1;
      
      public static const §=!<§:uint = 2;
      
      public static const §%-§:uint = 3;
      
      public static const §<!G§:uint = 4;
      
      public static const §+!6§:uint = 5;
       
      
      private var §<!#§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §`!-§:Boolean;
      
      private var § N§:Number;
      
      private var §%i§:Number;
      
      private var §&F§:Boolean;
      
      private var §9!2§:Number;
      
      private var §=!0§:Boolean;
      
      private var §8b§:Boolean;
      
      private var §'c§:Number;
      
      private var §null §:Number;
      
      private var §@!S§:Number;
      
      private var §@_§:Number;
      
      public function §2!L§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§<!#§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§`!-§ = param7;
         this.§ N§ = param8;
         this.§%i§ = param9;
         this.§&F§ = param10;
         this.§9!2§ = param11;
         this.§=!0§ = param12;
         this.§8b§ = param6;
         this.§'c§ = param13;
      }
      
      public function get type() : int
      {
         return this.§<!#§;
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
      
      public function get §&!V§() : Boolean
      {
         return this.§`!-§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§ N§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§%i§;
      }
      
      public function get §"J§() : Boolean
      {
         return this.§&F§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§9!2§;
      }
      
      public function get §<!>§() : Boolean
      {
         return this.§=!0§;
      }
      
      public function get §]!!§() : Boolean
      {
         return this.§8b§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§'c§;
      }
      
      public function get axisX() : Number
      {
         return this.§null §;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§null § = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§@!S§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§@!S§ = param1;
      }
      
      public function get §1!S§() : Number
      {
         return this.§@_§;
      }
      
      public function set §1!S§(param1:Number) : void
      {
         this.§@_§ = param1;
      }
      
      public function §,+§(param1:§9!5§, param2:§9!5§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§<!#§)
         {
            case §+5§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§8b§;
               _loc3_.§else§ = 4;
               _loc3_.§`3§ = 0.5;
               _loc3_.length = §2!U§.§5S§(param1,param2);
               _loc3_.§8!6§(param1.§[!H§(),param2.§[!H§(),param1.§[!H§().GetPosition(),param2.§[!H§().GetPosition());
               return _loc3_;
            case §=!<§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§8b§;
               _loc4_.§8!6§(param1.§[!H§(),param2.§[!H§(),param1.§[!H§().§^l§());
               return _loc4_;
            case §%-§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§8b§;
               _loc5_.§8!6§(param1.§[!H§(),param2.§[!H§(),param1.§[!H§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§`!c§ = this.§`!-§;
               _loc5_.§%s§ = this.§&F§;
               _loc5_.motorSpeed = this.§9!2§;
               _loc5_.§8!0§ = this.§%i§;
               _loc5_.§&"§ = this.§ N§;
               _loc5_.§`>§ = this.§'c§;
               return _loc5_;
            case §<!G§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§8b§;
               _loc6_.§8!6§(param1.§[!H§(),param2.§[!H§(),param1.§[!H§().§^l§(),new b2Vec2(this.§null §,this.§@!S§));
               _loc6_.§`!c§ = !!this.§=!0§ ? false : Boolean(this.§`!-§);
               _loc6_.§#!W§ = this.§ N§;
               _loc6_.§`X§ = this.§%i§;
               _loc6_.§%s§ = this.§&F§;
               _loc6_.§^x§ = this.§'c§;
               _loc6_.motorSpeed = this.§9!2§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
