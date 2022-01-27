package §="+§
{
   import §6!n§.b2Vec2;
   import §9"!§.§,%§;
   import §[9§.b2DistanceJointDef;
   import §[9§.b2JointDef;
   import §[9§.b2PrismaticJointDef;
   import §[9§.b2RevoluteJointDef;
   import §[9§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §0E§
   {
      
      public static const §'!k§:uint = 1;
      
      public static const §5e§:uint = 2;
      
      public static const §?!R§:uint = 3;
      
      public static const §]!9§:uint = 4;
      
      public static const §^"?§:uint = 5;
       
      
      private var §'!$§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §0]§:Boolean;
      
      private var §'4§:Number;
      
      private var §+!c§:Number;
      
      private var §@!m§:Boolean;
      
      private var §8x§:Number;
      
      private var §1!f§:Boolean;
      
      private var §=k§:Boolean;
      
      private var §>!n§:Number;
      
      private var §<"%§:Number;
      
      private var §`X§:Number;
      
      private var §@"D§:int = 0;
      
      private var §>!1§:Number = 0.0;
      
      private var §=!P§:Number = 0.0;
      
      private var §%!g§:Number;
      
      public function §0E§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§'!$§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§0]§ = param7;
         this.§'4§ = param8;
         this.§+!c§ = param9;
         this.§@!m§ = param10;
         this.§8x§ = param11;
         this.§1!f§ = param12;
         this.§=k§ = param6;
         this.§>!n§ = param13;
      }
      
      public function get type() : int
      {
         return this.§'!$§;
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
      
      public function get §?!H§() : Boolean
      {
         return this.§0]§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§'4§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§+!c§;
      }
      
      public function get § !,§() : Boolean
      {
         return this.§@!m§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§8x§;
      }
      
      public function get §^!V§() : Boolean
      {
         return this.§1!f§;
      }
      
      public function get §2N§() : Boolean
      {
         return this.§=k§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§>!n§;
      }
      
      public function get axisX() : Number
      {
         return this.§<"%§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§<"%§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§`X§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§`X§ = param1;
      }
      
      public function get §#!#§() : Number
      {
         return this.§%!g§;
      }
      
      public function set §#!#§(param1:Number) : void
      {
         this.§%!g§ = param1;
      }
      
      public function get §`"'§() : int
      {
         return this.§@"D§;
      }
      
      public function set §`"'§(param1:int) : void
      {
         this.§@"D§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§>!1§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§>!1§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§=!P§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§=!P§ = param1;
      }
      
      private function §0#§(param1:§,%§, param2:§,%§) : b2JointDef
      {
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§=k§;
         _loc3_.§2I§ = this.§=!P§;
         _loc3_.dampingRatio = this.§>!1§;
         if(this.§@"D§ == 0)
         {
            _loc3_.§8U§.x = 0;
            _loc3_.§8U§.y = 0;
            _loc3_.§#i§.x = 0;
            _loc3_.§#i§.y = 0;
         }
         else
         {
            if(this.§@"D§ == 1)
            {
               throw Error("Coordinate type 1 not supported for distance joints at the moment!");
            }
            if(this.§@"D§ == 2)
            {
               _loc3_.§8U§.x = this.mPoint1.x;
               _loc3_.§8U§.y = this.mPoint1.y;
               _loc3_.§#i§.x = this.mPoint2.x;
               _loc3_.§#i§.y = this.mPoint2.y;
            }
         }
         var _loc4_:b2Vec2 = param1.§`I§().GetWorldPoint(_loc3_.§8U§);
         var _loc5_:b2Vec2 = param2.§`I§().GetWorldPoint(_loc3_.§#i§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§0f§ = param1.§`I§();
         _loc3_.§>F§ = param2.§`I§();
         return _loc3_;
      }
      
      private function §4!K§(param1:§,%§, param2:§,%§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§=k§;
         var _loc4_:b2Vec2 = param1.§`I§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§`I§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§break§(param1.§`I§(),param2.§`I§(),_loc6_);
         return _loc3_;
      }
      
      private function §;B§(param1:§,%§, param2:§,%§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§=k§;
         _loc3_.§break§(param1.§`I§(),param2.§`I§(),param1.§`I§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§#!Q§ = this.§0]§;
         _loc3_.§`!3§ = this.§@!m§;
         _loc3_.motorSpeed = this.§8x§;
         _loc3_.§'!T§ = this.§+!c§;
         _loc3_.§@"A§ = this.§'4§;
         _loc3_.§=H§ = this.§>!n§;
         return _loc3_;
      }
      
      private function §%"8§(param1:§,%§, param2:§,%§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§=k§;
         _loc3_.§break§(param1.§`I§(),param2.§`I§(),param1.§`I§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§<"%§,this.§`X§));
         _loc3_.§#!Q§ = this.§0]§;
         _loc3_.§;+§ = this.§'4§;
         _loc3_.§<![§ = this.§+!c§;
         _loc3_.§`!3§ = this.§@!m§;
         _loc3_.§[""§ = this.§>!n§;
         _loc3_.motorSpeed = this.§8x§;
         return _loc3_;
      }
      
      public function §?!5§(param1:§,%§, param2:§,%§) : b2JointDef
      {
         switch(this.§'!$§)
         {
            case §'!k§:
               return this.§0#§(param1,param2);
            case §5e§:
               return this.§4!K§(param1,param2);
            case §?!R§:
               return this.§;B§(param1,param2);
            case §]!9§:
               return this.§%"8§(param1,param2);
            default:
               return null;
         }
      }
   }
}
