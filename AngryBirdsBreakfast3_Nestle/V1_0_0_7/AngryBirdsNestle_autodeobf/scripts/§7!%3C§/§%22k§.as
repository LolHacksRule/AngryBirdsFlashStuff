package §7!<§
{
   import §-!2§.b2Vec2;
   import §2!k§.§,@§;
   import §<!?§.b2DistanceJointDef;
   import §<!?§.b2JointDef;
   import §<!?§.b2PrismaticJointDef;
   import §<!?§.b2RevoluteJointDef;
   import §<!?§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §"k§
   {
      
      public static const §%J§:uint = 1;
      
      public static const §3]§:uint = 2;
      
      public static const §+!O§:uint = 3;
      
      public static const §7"-§:uint = 4;
      
      public static const §3!E§:uint = 5;
       
      
      private var §3d§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §3o§:Boolean;
      
      private var §4$§:Number;
      
      private var §8!g§:Number;
      
      private var §=!%§:Boolean;
      
      private var §]"'§:Number;
      
      private var §`!9§:Boolean;
      
      private var § !1§:Boolean;
      
      private var §!!u§:Number;
      
      private var §5![§:Number;
      
      private var §4"5§:Number;
      
      private var §?!]§:int = 0;
      
      private var §[]§:Number = 0.0;
      
      private var §0!O§:Number = 0.0;
      
      private var §=!T§:Number;
      
      public function §"k§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§3d§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§3o§ = param7;
         this.§4$§ = param8;
         this.§8!g§ = param9;
         this.§=!%§ = param10;
         this.§]"'§ = param11;
         this.§`!9§ = param12;
         this.§ !1§ = param6;
         this.§!!u§ = param13;
      }
      
      public function get type() : int
      {
         return this.§3d§;
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
      
      public function get §]!3§() : Boolean
      {
         return this.§3o§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§4$§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§8!g§;
      }
      
      public function get §0!m§() : Boolean
      {
         return this.§=!%§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§]"'§;
      }
      
      public function get §7#§() : Boolean
      {
         return this.§`!9§;
      }
      
      public function get §4J§() : Boolean
      {
         return this.§ !1§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§!!u§;
      }
      
      public function get axisX() : Number
      {
         return this.§5![§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§5![§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§4"5§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§4"5§ = param1;
      }
      
      public function get §?!k§() : Number
      {
         return this.§=!T§;
      }
      
      public function set §?!k§(param1:Number) : void
      {
         this.§=!T§ = param1;
      }
      
      public function get §[!r§() : int
      {
         return this.§?!]§;
      }
      
      public function set §[!r§(param1:int) : void
      {
         this.§?!]§ = param1;
      }
      
      public function get §#0§() : Number
      {
         return this.§[]§;
      }
      
      public function set §#0§(param1:Number) : void
      {
         this.§[]§ = param1;
      }
      
      public function get §%w§() : Number
      {
         return this.§0!O§;
      }
      
      public function set §%w§(param1:Number) : void
      {
         this.§0!O§ = param1;
      }
      
      private function §4]§(param1:§,@§, param2:§,@§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§ !1§;
         _loc3_.§'P§ = this.§0!O§;
         _loc3_.§#0§ = this.§[]§;
         if(this.§?!]§ == 0)
         {
            _loc3_.§'!]§.x = 0;
            _loc3_.§'!]§.y = 0;
            _loc3_.§@!p§.x = 0;
            _loc3_.§@!p§.y = 0;
         }
         else
         {
            if(this.§?!]§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§?!]§ == 2)
            {
               _loc3_.§'!]§.x = this.mPoint1.x;
               _loc3_.§'!]§.y = this.mPoint1.y;
               _loc3_.§@!p§.x = this.mPoint2.x;
               _loc3_.§@!p§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§ 2§().GetWorldPoint(_loc3_.§'!]§);
         var _loc5_:b2Vec2 = param2.§ 2§().GetWorldPoint(_loc3_.§@!p§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§,!K§ = param1.§ 2§();
         _loc3_.§6n§ = param2.§ 2§();
         return _loc3_;
      }
      
      private function §4X§(param1:§,@§, param2:§,@§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§ !1§;
         var _loc4_:b2Vec2 = param1.§ 2§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§ 2§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§7!Q§(param1.§ 2§(),param2.§ 2§(),_loc6_);
         return _loc3_;
      }
      
      private function §8!y§(param1:§,@§, param2:§,@§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§ !1§;
         _loc3_.§7!Q§(param1.§ 2§(),param2.§ 2§(),param1.§ 2§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§?!t§ = this.§3o§;
         _loc3_.§>!e§ = this.§=!%§;
         _loc3_.motorSpeed = this.§]"'§;
         _loc3_.§#-§ = this.§8!g§;
         _loc3_.§^!0§ = this.§4$§;
         _loc3_.§75§ = this.§!!u§;
         return _loc3_;
      }
      
      private function §6!,§(param1:§,@§, param2:§,@§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§ !1§;
         _loc3_.§7!Q§(param1.§ 2§(),param2.§ 2§(),param1.§ 2§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§5![§,this.§4"5§));
         _loc3_.§?!t§ = this.§3o§;
         _loc3_.§?A§ = this.§4$§;
         _loc3_.§3!4§ = this.§8!g§;
         _loc3_.§>!e§ = this.§=!%§;
         _loc3_.§ !T§ = this.§!!u§;
         _loc3_.motorSpeed = this.§]"'§;
         return _loc3_;
      }
      
      public function §'!,§(param1:§,@§, param2:§,@§) : b2JointDef
      {
         switch(this.§3d§)
         {
            case §%J§:
               return this.§4]§(param1,param2);
            case §3]§:
               return this.§4X§(param1,param2);
            case §+!O§:
               return this.§8!y§(param1,param2);
            case §7"-§:
               return this.§6!,§(param1,param2);
            default:
               return null;
         }
      }
   }
}
