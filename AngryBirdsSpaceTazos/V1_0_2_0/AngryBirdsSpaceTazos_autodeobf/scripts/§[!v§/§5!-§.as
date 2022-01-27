package §[!v§
{
   import §&!S§.b2Vec2;
   import §+D§.b2DistanceJointDef;
   import §+D§.b2JointDef;
   import §+D§.b2PrismaticJointDef;
   import §+D§.b2RevoluteJointDef;
   import §+D§.b2WeldJointDef;
   import §[,§.§1d§;
   import flash.geom.Point;
   
   public class §5!-§
   {
      
      public static const §5!T§:uint = 1;
      
      public static const §+!4§:uint = 2;
      
      public static const §,V§:uint = 3;
      
      public static const §<F§:uint = 4;
      
      public static const §9y§:uint = 5;
       
      
      private var §-!e§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §7O§:Boolean;
      
      private var §@"%§:Number;
      
      private var §"!;§:Number;
      
      private var §1!P§:Boolean;
      
      private var §"p§:Number;
      
      private var §0V§:Boolean;
      
      private var §0",§:Boolean;
      
      private var §8!#§:Number;
      
      private var §#l§:Number;
      
      private var §4"9§:Number;
      
      private var § G§:int = 0;
      
      private var §4"C§:Number = 0.0;
      
      private var §=!I§:Number = 0.0;
      
      private var §,'§:Number;
      
      public function §5!-§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§-!e§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§7O§ = param7;
         this.§@"%§ = param8;
         this.§"!;§ = param9;
         this.§1!P§ = param10;
         this.§"p§ = param11;
         this.§0V§ = param12;
         this.§0",§ = param6;
         this.§8!#§ = param13;
      }
      
      public function get type() : int
      {
         return this.§-!e§;
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get §9!u§() : Boolean
      {
         return this.§7O§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§@"%§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§"!;§;
      }
      
      public function get §1"'§() : Boolean
      {
         return this.§1!P§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§"p§;
      }
      
      public function get §'!o§() : Boolean
      {
         return this.§0V§;
      }
      
      public function get §@p§() : Boolean
      {
         return this.§0",§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§8!#§;
      }
      
      public function get axisX() : Number
      {
         return this.§#l§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§#l§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§4"9§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§4"9§ = param1;
      }
      
      public function get §?!=§() : Number
      {
         return this.§,'§;
      }
      
      public function set §?!=§(param1:Number) : void
      {
         this.§,'§ = param1;
      }
      
      public function get § T§() : int
      {
         return this.§ G§;
      }
      
      public function set § T§(param1:int) : void
      {
         this.§ G§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§4"C§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§4"C§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§=!I§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§=!I§ = param1;
      }
      
      private function §'!v§(param1:§1d§, param2:§1d§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§0",§;
         _loc3_.§,!h§ = this.§=!I§;
         _loc3_.dampingRatio = this.§4"C§;
         if(this.§ G§ == 0)
         {
            _loc3_.§&9§.x = 0;
            _loc3_.§&9§.y = 0;
            _loc3_.§^"<§.x = 0;
            _loc3_.§^"<§.y = 0;
         }
         else
         {
            if(this.§ G§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§ G§ == 2)
            {
               _loc3_.§&9§.x = this.mPoint1.x;
               _loc3_.§&9§.y = this.mPoint1.y;
               _loc3_.§^"<§.x = this.mPoint2.x;
               _loc3_.§^"<§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§ <§().GetWorldPoint(_loc3_.§&9§);
         var _loc5_:b2Vec2 = param2.§ <§().GetWorldPoint(_loc3_.§^"<§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§43§ = param1.§ <§();
         _loc3_.§4!l§ = param2.§ <§();
         return _loc3_;
      }
      
      private function §6!-§(param1:§1d§, param2:§1d§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§0",§;
         var _loc4_:b2Vec2 = param1.§ <§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§ <§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§5!k§(param1.§ <§(),param2.§ <§(),_loc6_);
         return _loc3_;
      }
      
      private function §6"E§(param1:§1d§, param2:§1d§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§0",§;
         _loc3_.§5!k§(param1.§ <§(),param2.§ <§(),param1.§ <§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§>6§ = this.§7O§;
         _loc3_.§%]§ = this.§1!P§;
         _loc3_.motorSpeed = this.§"p§;
         _loc3_.§;E§ = this.§"!;§;
         _loc3_.§5E§ = this.§@"%§;
         _loc3_.§+"%§ = this.§8!#§;
         return _loc3_;
      }
      
      private function §5e§(param1:§1d§, param2:§1d§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§0",§;
         _loc3_.§5!k§(param1.§ <§(),param2.§ <§(),param1.§ <§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§#l§,this.§4"9§));
         _loc3_.§>6§ = this.§7O§;
         _loc3_.§42§ = this.§@"%§;
         _loc3_.§"!2§ = this.§"!;§;
         _loc3_.§%]§ = this.§1!P§;
         _loc3_.§!#§ = this.§8!#§;
         _loc3_.motorSpeed = this.§"p§;
         return _loc3_;
      }
      
      public function §<7§(param1:§1d§, param2:§1d§) : b2JointDef
      {
         switch(this.§-!e§)
         {
            case §5!T§:
               return this.§'!v§(param1,param2);
            case §+!4§:
               return this.§6!-§(param1,param2);
            case §,V§:
               return this.§6"E§(param1,param2);
            case §<F§:
               return this.§5e§(param1,param2);
            default:
               return null;
         }
      }
   }
}
