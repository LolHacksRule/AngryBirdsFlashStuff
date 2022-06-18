package §>!H§
{
   import §8<§.b2DistanceJointDef;
   import §8<§.b2JointDef;
   import §8<§.b2PrismaticJointDef;
   import §8<§.b2RevoluteJointDef;
   import §8<§.b2WeldJointDef;
   import §9T§.§=!^§;
   import §[>§.§`,§;
   import §[R§.b2Vec2;
   import flash.geom.Point;
   
   public class §7D§
   {
      
      public static const §'!!§:uint = 1;
      
      public static const §2%§:uint = 2;
      
      public static const §-O§:uint = 3;
      
      public static const §#V§:uint = 4;
      
      public static const §8!E§:uint = 5;
       
      
      private var §%@§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §"P§:Boolean;
      
      private var §]!_§:Number;
      
      private var §'j§:Number;
      
      private var §`B§:Boolean;
      
      private var §"5§:Number;
      
      private var §07§:Boolean;
      
      private var §0!9§:Boolean;
      
      private var §implements§:Number;
      
      private var §9!H§:Number;
      
      private var §!^§:Number;
      
      private var §3S§:Number;
      
      public function §7D§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§%@§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§"P§ = param7;
         this.§]!_§ = param8;
         this.§'j§ = param9;
         this.§`B§ = param10;
         this.§"5§ = param11;
         this.§07§ = param12;
         this.§0!9§ = param6;
         this.§implements§ = param13;
      }
      
      public function get type() : int
      {
         return this.§%@§;
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
      
      public function get §#!!§() : Boolean
      {
         return this.§"P§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§]!_§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§'j§;
      }
      
      public function get §>!A§() : Boolean
      {
         return this.§`B§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§"5§;
      }
      
      public function get §]r§() : Boolean
      {
         return this.§07§;
      }
      
      public function get §6?§() : Boolean
      {
         return this.§0!9§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§implements§;
      }
      
      public function get axisX() : Number
      {
         return this.§9!H§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§9!H§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§!^§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§!^§ = param1;
      }
      
      public function get § S§() : Number
      {
         return this.§3S§;
      }
      
      public function set § S§(param1:Number) : void
      {
         this.§3S§ = param1;
      }
      
      public function §"X§(param1:§`,§, param2:§`,§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§%@§)
         {
            case §'!!§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§0!9§;
               _loc3_.§-=§ = 4;
               _loc3_.§99§ = 0.5;
               _loc3_.length = §=!^§.§6!H§(param1,param2);
               _loc3_.§9!K§(param1.§7!<§(),param2.§7!<§(),param1.§7!<§().GetPosition(),param2.§7!<§().GetPosition());
               return _loc3_;
            case §2%§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§0!9§;
               _loc4_.§9!K§(param1.§7!<§(),param2.§7!<§(),param1.§7!<§().§9Q§());
               return _loc4_;
            case §-O§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§0!9§;
               _loc5_.§9!K§(param1.§7!<§(),param2.§7!<§(),param1.§7!<§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§21§ = this.§"P§;
               _loc5_.§ '§ = this.§`B§;
               _loc5_.motorSpeed = this.§"5§;
               _loc5_.§5!D§ = this.§'j§;
               _loc5_.§[5§ = this.§]!_§;
               _loc5_.§4!Y§ = this.§implements§;
               return _loc5_;
            case §#V§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§0!9§;
               _loc6_.§9!K§(param1.§7!<§(),param2.§7!<§(),param1.§7!<§().§9Q§(),new b2Vec2(this.§9!H§,this.§!^§));
               _loc6_.§21§ = !!this.§07§ ? false : Boolean(this.§"P§);
               _loc6_.§]!<§ = this.§]!_§;
               _loc6_.§%!2§ = this.§'j§;
               _loc6_.§ '§ = this.§`B§;
               _loc6_.§^X§ = this.§implements§;
               _loc6_.motorSpeed = this.§"5§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
