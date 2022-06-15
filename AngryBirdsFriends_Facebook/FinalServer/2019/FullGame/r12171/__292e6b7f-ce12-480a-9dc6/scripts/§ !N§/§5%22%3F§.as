package § !N§
{
   import §,0§.§0"0§;
   import §04§.b2Vec2;
   import §;!=§.§>"G§;
   
   public class §5"?§
   {
       
      
      public var instanceName:String;
      
      public var type:String = "";
      
      public var id:int = 0;
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var z:Number;
      
      public var angle:Number = 0;
      
      public var themeTexture:String = "";
      
      public var front:Boolean = false;
      
      public var §1-§:Number = 0.0;
      
      public var §-9§:Number = 0.0;
      
      public var §@#z§:int = -1;
      
      public var angularVelocity:Number = 0.0;
      
      private var §[#O§:b2Vec2;
      
      public var angularDamping:Number = 0.0;
      
      public var linearDamping:Number = 0.0;
      
      public var awake:Boolean = false;
      
      public var health:Number = 0.0;
      
      private var §%L§:Vector.<§8!U§>;
      
      private var §=$"§:Vector.<§0"0§>;
      
      public function §5"?§()
      {
         this.z = §>"G§.§-$"§;
         super();
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:§8!U§ = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:§0"0§ = null;
         var _loc9_:Object = null;
         var _loc1_:Object = new Object();
         _loc1_.x = this.x;
         _loc1_.y = this.y;
         _loc1_.z = this.z;
         _loc1_.angle = this.angle;
         _loc1_.front = this.front;
         _loc1_.uniqueID = this.id.toString();
         _loc1_.id = this.type;
         _loc1_.angularVelocity = this.angularVelocity;
         if(this.linearForce)
         {
            _loc1_.forceX = this.linearForce.x;
            _loc1_.forceY = this.linearForce.y;
         }
         _loc1_.angularDamping = this.angularDamping;
         _loc1_.linearDamping = this.linearDamping;
         _loc1_.awake = this.awake;
         _loc1_.health = this.health;
         if(this.§%L§)
         {
            _loc2_ = new Array();
            _loc3_ = 0;
            while(_loc3_ < this.§%L§.length)
            {
               _loc4_ = this.§%L§[_loc3_];
               (_loc5_ = new Object()).type = _loc4_.type;
               _loc5_.name = _loc4_.name;
               _loc5_.event = _loc4_.event;
               _loc2_.push(_loc5_);
               _loc3_++;
            }
            _loc1_.behaviors = _loc2_;
         }
         if(this.§=$"§)
         {
            _loc6_ = new Array();
            _loc7_ = 0;
            while(_loc7_ < this.§=$"§.length)
            {
               _loc8_ = this.§=$"§[_loc7_];
               (_loc9_ = new Object()).trigger = _loc8_.§5#3§;
               _loc9_.name = _loc8_.eventName;
               _loc9_.parameters = _loc8_.data;
               _loc6_.push(_loc9_);
               _loc7_++;
            }
            _loc1_.events = _loc6_;
         }
         return _loc1_;
      }
      
      public function §15§(param1:Vector.<§8!U§>) : void
      {
         this.§%L§ = param1;
      }
      
      public function §6"w§(param1:Vector.<§0"0§>) : void
      {
         this.§=$"§ = param1;
      }
      
      public function getBehaviorsData() : Vector.<§8!U§>
      {
         return this.§%L§;
      }
      
      public function getEvents() : Vector.<§0"0§>
      {
         return this.§=$"§;
      }
      
      public function get hasSpecialBehavior() : Boolean
      {
         return this.§%L§ != null;
      }
      
      public function get linearForce() : b2Vec2
      {
         return this.§[#O§;
      }
      
      public function set linearForce(param1:b2Vec2) : void
      {
         this.§[#O§ = param1;
      }
   }
}
