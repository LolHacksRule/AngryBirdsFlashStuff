package §"!P§
{
   import §3q§.b2Vec2;
   import §8!`§.§4J§;
   import §9A§.b2DistanceJointDef;
   import §9A§.b2JointDef;
   import §9A§.b2PrismaticJointDef;
   import §9A§.b2RevoluteJointDef;
   import §9A§.b2WeldJointDef;
   import §]!D§.§@!]§;
   import flash.geom.Point;
   
   public class §-!+§
   {
      
      public static const §[N§:uint = 1;
      
      public static const §,<§:uint = 2;
      
      public static const §[!<§:uint = 3;
      
      public static const §%!E§:uint = 4;
      
      public static const § !H§:uint = 5;
       
      
      private var §#!S§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §#^§:Boolean;
      
      private var §,L§:Number;
      
      private var §"6§:Number;
      
      private var §`!#§:Boolean;
      
      private var §0!5§:Number;
      
      private var §"W§:Boolean;
      
      private var §0§:Boolean;
      
      private var §,j§:Number;
      
      private var §?&§:Number;
      
      private var §0!K§:Number;
      
      private var §8j§:Number;
      
      public function §-!+§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§#!S§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§#^§ = param7;
         this.§,L§ = param8;
         this.§"6§ = param9;
         this.§`!#§ = param10;
         this.§0!5§ = param11;
         this.§"W§ = param12;
         this.§0§ = param6;
         this.§,j§ = param13;
      }
      
      public function get type() : int
      {
         return this.§#!S§;
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
      
      public function get §9D§() : Boolean
      {
         return this.§#^§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§,L§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§"6§;
      }
      
      public function get §47§() : Boolean
      {
         return this.§`!#§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§0!5§;
      }
      
      public function get §`,§() : Boolean
      {
         return this.§"W§;
      }
      
      public function get §7=§() : Boolean
      {
         return this.§0§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§,j§;
      }
      
      public function get axisX() : Number
      {
         return this.§?&§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§?&§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§0!K§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§0!K§ = param1;
      }
      
      public function get §>4§() : Number
      {
         return this.§8j§;
      }
      
      public function set §>4§(param1:Number) : void
      {
         this.§8j§ = param1;
      }
      
      public function §"!>§(param1:§@!]§, param2:§@!]§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§#!S§)
         {
            case §[N§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§0§;
               _loc3_.§60§ = 4;
               _loc3_.§>F§ = 0.5;
               _loc3_.length = §4J§.§<G§(param1,param2);
               _loc3_.§;!W§(param1.§^!_§(),param2.§^!_§(),param1.§^!_§().GetPosition(),param2.§^!_§().GetPosition());
               return _loc3_;
            case §,<§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§0§;
               _loc4_.§;!W§(param1.§^!_§(),param2.§^!_§(),param1.§^!_§().§'!I§());
               return _loc4_;
            case §[!<§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§0§;
               _loc5_.§;!W§(param1.§^!_§(),param2.§^!_§(),param1.§^!_§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§-$§ = this.§#^§;
               _loc5_.§2l§ = this.§`!#§;
               _loc5_.motorSpeed = this.§0!5§;
               _loc5_.§14§ = this.§"6§;
               _loc5_.§+!J§ = this.§,L§;
               _loc5_.§ ]§ = this.§,j§;
               return _loc5_;
            case §%!E§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§0§;
               _loc6_.§;!W§(param1.§^!_§(),param2.§^!_§(),param1.§^!_§().§'!I§(),new b2Vec2(this.§?&§,this.§0!K§));
               _loc6_.§-$§ = !!this.§"W§ ? false : Boolean(this.§#^§);
               _loc6_.§;r§ = this.§,L§;
               _loc6_.§92§ = this.§"6§;
               _loc6_.§2l§ = this.§`!#§;
               _loc6_.§4R§ = this.§,j§;
               _loc6_.motorSpeed = this.§0!5§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
