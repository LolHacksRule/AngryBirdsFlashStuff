package § !N§
{
   import §!"b§.b2DistanceJointDef;
   import §!"b§.b2JointDef;
   import §!"b§.b2MouseJointDef;
   import §!"b§.b2PrismaticJointDef;
   import §!"b§.b2RevoluteJointDef;
   import §!"b§.b2WeldJointDef;
   import §04§.b2Vec2;
   import §;!=§.§'#N§;
   import flash.geom.Point;
   
   public class §2m§
   {
      
      public static const §^$$§:uint = 1;
      
      public static const §'v§:uint = 2;
      
      public static const §@!I§:uint = 3;
      
      public static const § $$§:uint = 4;
      
      public static const §8!_§:uint = 5;
      
      public static const §;#W§:uint = 6;
       
      
      private var §2"G§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §#V§:Boolean;
      
      private var §6!"§:Number;
      
      private var §#n§:Number;
      
      private var §0f§:Boolean;
      
      private var §8$$§:Number;
      
      private var §7n§:Boolean;
      
      private var §@#m§:Boolean;
      
      private var §3y§:Boolean;
      
      private var §8F§:Number;
      
      private var §+!3§:Number = 0;
      
      private var §;#§:Number = 0;
      
      private var §-§:int = 0;
      
      private var §+"7§:Number = 0.0;
      
      private var §?"B§:Number = 0.0;
      
      private var §'B§:Number = 0;
      
      private var §>!i§:Number = 0;
      
      private var §9$-§:Boolean = false;
      
      private var §@#h§:Boolean = false;
      
      private var §%O§:Number = 0.0;
      
      private var §7#T§:Boolean = false;
      
      public function §2m§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false, param17:int = 0, param18:Number = 0.0, param19:Number = 0.0, param20:Boolean = false, param21:Number = 0, param22:Number = 0)
      {
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         super();
         this.§2"G§ = param1;
         this.mId1 = param2;
         this.mId2 = param3;
         this.mPoint1 = param4.clone();
         this.mPoint2 = param5.clone();
         this.§#V§ = param7;
         this.§6!"§ = param8;
         this.§#n§ = param9;
         this.§0f§ = param10;
         this.§8$$§ = param11;
         this.§7n§ = param12;
         this.§3y§ = param6;
         this.§8F§ = param13;
         this.§9$-§ = param14;
         this.§%O§ = param15;
         this.§@#m§ = param16;
         this.§-§ = param17;
         this.§+"7§ = param18;
         this.§?"B§ = param19;
         this.§@#h§ = param20;
         this.§'B§ = param21;
         this.§>!i§ = param22;
      }
      
      public function get type() : int
      {
         return this.§2"G§;
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
      
      public function get §["<§() : Boolean
      {
         return this.§#V§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§6!"§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§#n§;
      }
      
      public function get §1S§() : Boolean
      {
         return this.§0f§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§8$$§;
      }
      
      public function get §8"D§() : Boolean
      {
         return this.§7n§;
      }
      
      public function get §3!]§() : Boolean
      {
         return this.§3y§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§8F§;
      }
      
      public function get breakable() : Boolean
      {
         return this.§9$-§;
      }
      
      public function set breakable(param1:Boolean) : void
      {
         this.§9$-§ = param1;
      }
      
      public function get destroyChild() : Boolean
      {
         return this.§@#h§;
      }
      
      public function set destroyChild(param1:Boolean) : void
      {
         this.§@#h§ = param1;
      }
      
      public function get breakForce() : Number
      {
         return this.§%O§;
      }
      
      public function set breakForce(param1:Number) : void
      {
         this.§%O§ = param1;
      }
      
      public function get isOneWayDestroyed() : Boolean
      {
         return this.§@#m§;
      }
      
      public function set isOneWayDestroyed(param1:Boolean) : void
      {
         this.§@#m§ = param1;
      }
      
      public function get axisX() : Number
      {
         return this.§+!3§;
      }
      
      public function set axisX(param1:Number) : void
      {
         this.§+!3§ = param1;
      }
      
      public function get axisY() : Number
      {
         return this.§;#§;
      }
      
      public function set axisY(param1:Number) : void
      {
         this.§;#§ = param1;
      }
      
      public function get annihilationTime() : Number
      {
         return this.§'B§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         this.§'B§ = param1;
      }
      
      public function get distanceToDestroyChild() : Number
      {
         return this.§>!i§;
      }
      
      public function set distanceToDestroyChild(param1:Number) : void
      {
         this.§>!i§ = param1;
      }
      
      public function get coordinateType() : int
      {
         return this.§-§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         this.§-§ = param1;
      }
      
      public function get dampingRatio() : Number
      {
         return this.§+"7§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         this.§+"7§ = param1;
      }
      
      public function get frequency() : Number
      {
         return this.§?"B§;
      }
      
      public function set frequency(param1:Number) : void
      {
         this.§?"B§ = param1;
      }
      
      public function get §]!7§() : Boolean
      {
         return this.§7#T§;
      }
      
      public function set §]!7§(param1:Boolean) : void
      {
         this.§7#T§ = param1;
      }
      
      private function §0! §(param1:§'#N§, param2:§'#N§) : b2JointDef
      {
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         _loc3_.collideConnected = this.§3y§;
         _loc3_.§'#%§ = this.§?"B§;
         _loc3_.dampingRatio = this.§+"7§;
         if(this.§-§ == 0)
         {
            _loc3_.§,#D§.x = 0;
            _loc3_.§,#D§.y = 0;
            _loc3_.§?#d§.x = 0;
            _loc3_.§?#d§.y = 0;
         }
         else if(this.§-§ == 1)
         {
            _loc6_ = param1.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc7_ = param2.getBody().GetWorldPoint(new b2Vec2(0,0));
            _loc8_ = new b2Vec2(this.mPoint1.x - _loc6_.x,this.mPoint1.y - _loc6_.y);
            _loc9_ = new b2Vec2(this.mPoint2.x - _loc7_.x,this.mPoint2.y - _loc7_.y);
            _loc3_.§,#D§ = _loc8_;
            _loc3_.§?#d§ = _loc9_;
         }
         else if(this.§-§ == 2)
         {
            _loc3_.§,#D§.x = this.mPoint1.x;
            _loc3_.§,#D§.y = this.mPoint1.y;
            _loc3_.§?#d§.x = this.mPoint2.x;
            _loc3_.§?#d§.y = this.mPoint2.y;
         }
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(_loc3_.§,#D§);
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(_loc3_.§?#d§);
         _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
         _loc3_.§9!Z§ = param1.getBody();
         _loc3_.§#!_§ = param2.getBody();
         return _loc3_;
      }
      
      private function §+C§(param1:§'#N§, param2:§'#N§) : b2JointDef
      {
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         _loc3_.collideConnected = this.§3y§;
         var _loc4_:b2Vec2 = param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.getBody().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         var _loc6_:b2Vec2 = new b2Vec2((_loc5_.x + _loc4_.x) * 0.5,(_loc5_.y + _loc4_.y) * 0.5);
         _loc3_.§&N§(param1.getBody(),param2.getBody(),_loc6_);
         return _loc3_;
      }
      
      private function §##H§(param1:§'#N§, param2:§'#N§) : b2JointDef
      {
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         _loc3_.collideConnected = this.§3y§;
         _loc3_.§&N§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
         _loc3_.§4"E§ = this.§#V§;
         _loc3_.§]Q§ = this.§0f§;
         _loc3_.motorSpeed = this.§8$$§;
         _loc3_.§ $5§ = this.§#n§;
         _loc3_.§-"n§ = this.§6!"§;
         _loc3_.§;#w§ = this.§8F§;
         return _loc3_;
      }
      
      private function §"!4§(param1:§'#N§, param2:§'#N§) : b2JointDef
      {
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         _loc3_.collideConnected = this.§3y§;
         var _loc4_:Number = 1;
         var _loc5_:Number = 0;
         if(!isNaN(this.axisX))
         {
            _loc4_ = this.axisX;
         }
         if(!isNaN(this.axisY))
         {
            _loc5_ = this.axisY;
         }
         _loc3_.§&N§(param1.getBody(),param2.getBody(),param1.getBody().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(_loc4_,_loc5_));
         _loc3_.§4"E§ = this.§#V§;
         _loc3_.§-7§ = this.§6!"§;
         _loc3_.§2c§ = this.§#n§;
         _loc3_.§]Q§ = this.§0f§;
         _loc3_.§4N§ = this.§8F§;
         _loc3_.motorSpeed = this.§8$$§;
         return _loc3_;
      }
      
      private function §-V§(param1:§'#N§, param2:§'#N§) : b2JointDef
      {
         var _loc3_:b2MouseJointDef = new b2MouseJointDef();
         _loc3_.§9!Z§ = param2.getBody().GetWorld().§1L§();
         _loc3_.§#!_§ = param2.getBody();
         _loc3_.target.Set(param2.getBody().GetPosition().x,param2.getBody().GetPosition().y);
         _loc3_.collideConnected = this.§3y§;
         _loc3_.§^"P§ = 1000000;
         return _loc3_;
      }
      
      public function §-$§(param1:§'#N§, param2:§'#N§) : b2JointDef
      {
         switch(this.§2"G§)
         {
            case §^$$§:
               return this.§0! §(param1,param2);
            case §'v§:
               return this.§+C§(param1,param2);
            case §@!I§:
               return this.§##H§(param1,param2);
            case § $$§:
               return this.§"!4§(param1,param2);
            case §;#W§:
               return this.§-V§(param1,param2);
            default:
               return null;
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.x1 = this.point1.x;
         _loc1_.y1 = this.point1.y;
         _loc1_.x2 = this.point2.x;
         _loc1_.y2 = this.point2.y;
         _loc1_.motorSpeed = this.motorSpeed;
         _loc1_.limit = this.§["<§;
         _loc1_.maxTorque = this.maxTorque;
         _loc1_.motor = this.§1S§;
         _loc1_.type = this.type;
         _loc1_.backAndForth = this.§8"D§;
         _loc1_.collideConnected = this.§3!]§;
         _loc1_.lowerLimit = this.lowerLimit;
         _loc1_.upperLimit = this.upperLimit;
         _loc1_.index1 = this.id1;
         _loc1_.index2 = this.id2;
         _loc1_.isOneWayDestroyed = this.isOneWayDestroyed;
         _loc1_.coordinateType = this.coordinateType;
         _loc1_.dampingRatio = this.dampingRatio;
         _loc1_.frequency = this.frequency;
         _loc1_.breakable = this.breakable;
         _loc1_.destroyChild = this.destroyChild;
         if(!isNaN(this.annihilationTime))
         {
            _loc1_.annihilationTime = this.annihilationTime;
         }
         if(!isNaN(this.distanceToDestroyChild))
         {
            _loc1_.distanceToDestroyChild = this.distanceToDestroyChild;
         }
         if(!isNaN(this.breakForce))
         {
            _loc1_.breakForce = this.breakForce;
         }
         if(!isNaN(this.axisX))
         {
            _loc1_.axisX = this.axisX;
         }
         if(!isNaN(this.axisY))
         {
            _loc1_.axisY = this.axisY;
         }
         return _loc1_;
      }
   }
}
