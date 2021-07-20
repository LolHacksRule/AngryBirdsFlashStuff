package §@-§
{
   import §"G§.b2DistanceJointDef;
   import §"G§.b2JointDef;
   import §"G§.b2PrismaticJointDef;
   import §"G§.b2RevoluteJointDef;
   import §"G§.b2WeldJointDef;
   import §0!2§.§5"L§;
   import §3!#§.§5"A§;
   import §7F§.b2Vec2;
   import flash.geom.Point;
   
   public class §&!g§
   {
      
      public static const §&![§:uint = 1;
      
      public static const §%f§:uint = 2;
      
      public static const §0"<§:uint = 3;
      
      public static const §3"8§:uint = 4;
      
      public static const §[! §:uint = 5;
       
      
      private var §6#§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §&"F§:Boolean;
      
      private var §#%§:Number;
      
      private var §@!L§:Number;
      
      private var §&D§:Boolean;
      
      private var §%o§:Number;
      
      private var §;@§:Boolean;
      
      private var §;"C§:Boolean;
      
      private var §1"8§:Number;
      
      private var §-&§:Number;
      
      private var §&8§:Number;
      
      private var §9i§:Number;
      
      public function §&!g§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§6#§ = param1;
         this.mIndex1 = param2;
         this.mIndex2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§&"F§ = param7;
         this.§#%§ = param8;
         this.§@!L§ = param9;
         this.§&D§ = param10;
         this.§%o§ = param11;
         this.§;@§ = param12;
         this.§;"C§ = param6;
         this.§1"8§ = param13;
      }
      
      public function get type() : int
      {
         return this.§6#§;
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
      
      public function get §!e§() : Boolean
      {
         return this.§&"F§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§#%§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§@!L§;
      }
      
      public function get §"!F§() : Boolean
      {
         return this.§&D§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§%o§;
      }
      
      public function get §=B§() : Boolean
      {
         return this.§;@§;
      }
      
      public function get §!X§() : Boolean
      {
         return this.§;"C§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§1"8§;
      }
      
      public function get axisX() : Number
      {
         return this.§-&§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§-&§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§&8§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§&8§ = param1;
      }
      
      public function get §="5§() : Number
      {
         return this.§9i§;
      }
      
      public function set §="5§(param1:Number) : void
      {
         this.§9i§ = param1;
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.type = this.type;
         _loc1_.index1 = this.index1;
         _loc1_.index2 = this.index2;
         _loc1_.x1 = this.point1.x;
         _loc1_.x2 = this.point2.y;
         _loc1_.y1 = this.point1.x;
         _loc1_.y2 = this.point2.y;
         _loc1_.limit = this.§!e§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.motor = this.§"!F§;
         _loc1_.motorSpeed = this.motorSpeed;
         _loc1_.backAndForth = this.§=B§;
         _loc1_.collideConnected = this.§!X§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.axisX = this.axisX;
         _loc1_.axisY = this.axisY;
         if(!isNaN(this.§="5§))
         {
            _loc1_.destroyTimer = this.§="5§;
         }
         return _loc1_;
      }
      
      public function §>F§(param1:§5"A§, param2:§5"A§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         switch(this.§6#§)
         {
            case §&![§:
               _loc3_ = new b2DistanceJointDef();
               _loc3_.collideConnected = this.§;"C§;
               _loc3_.§[!p§ = 4;
               _loc3_.§<!7§ = 0.5;
               _loc3_.length = §5"L§.§[!i§(param1,param2);
               _loc3_.§,!9§(param1.§`!y§(),param2.§`!y§(),param1.§`!y§().GetPosition(),param2.§`!y§().GetPosition());
               return _loc3_;
            case §%f§:
               (_loc4_ = new b2WeldJointDef()).collideConnected = this.§;"C§;
               _loc4_.§,!9§(param1.§`!y§(),param2.§`!y§(),param1.§`!y§().§[P§());
               return _loc4_;
            case §0"<§:
               (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§;"C§;
               _loc5_.§,!9§(param1.§`!y§(),param2.§`!y§(),param1.§`!y§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
               _loc5_.§5a§ = !!this.§;@§ ? false : Boolean(this.§&"F§);
               _loc5_.§-q§ = this.§&D§;
               _loc5_.motorSpeed = this.§%o§;
               _loc5_.§6c§ = this.§@!L§;
               _loc5_.§"&§ = this.§#%§;
               _loc5_.§>g§ = this.§1"8§;
               return _loc5_;
            case §3"8§:
               (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§;"C§;
               _loc6_.§,!9§(param1.§`!y§(),param2.§`!y§(),param1.§`!y§().§[P§(),new b2Vec2(this.§-&§,this.§&8§));
               _loc6_.§5a§ = !!this.§;@§ ? false : Boolean(this.§&"F§);
               _loc6_.§'?§ = this.§#%§;
               _loc6_.§=j§ = this.§@!L§;
               _loc6_.§-q§ = this.§&D§;
               _loc6_.§<"+§ = this.§1"8§;
               _loc6_.motorSpeed = this.§%o§;
               return _loc6_;
            default:
               return null;
         }
      }
   }
}
