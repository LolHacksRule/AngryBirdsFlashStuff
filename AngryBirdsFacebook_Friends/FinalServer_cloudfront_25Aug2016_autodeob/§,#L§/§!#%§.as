package §,#L§
{
   import §0m§.b2Vec2;
   import §6§.§,"s§;
   import §[#a§.§="@§;
   
   public class §!#%§
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
      
      public var §2#R§:Number = 0.0;
      
      public var §<"7§:Number = 0.0;
      
      public var §9"P§:int = -1;
      
      public var angularVelocity:Number = 0.0;
      
      public var linearForce:b2Vec2;
      
      public var angularDamping:Number = 0.0;
      
      public var linearDamping:Number = 0.0;
      
      public var awake:Boolean = false;
      
      public var health:Number = 0.0;
      
      private var §5$&§:Vector.<§?W§>;
      
      private var §,x§:Vector.<§,"s§>;
      
      public function §!#%§()
      {
         this.z = §="@§.§-!C§;
         super();
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:§?W§ = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:§,"s§ = null;
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
         if(this.§5$&§)
         {
            _loc2_ = new Array();
            _loc3_ = 0;
            while(_loc3_ < this.§5$&§.length)
            {
               _loc4_ = this.§5$&§[_loc3_];
               (_loc5_ = new Object()).type = _loc4_.type;
               _loc5_.name = _loc4_.name;
               _loc5_.event = _loc4_.event;
               _loc2_.push(_loc5_);
               _loc3_++;
            }
            _loc1_.behaviors = _loc2_;
         }
         if(this.§,x§)
         {
            _loc6_ = new Array();
            _loc7_ = 0;
            while(_loc7_ < this.§,x§.length)
            {
               _loc8_ = this.§,x§[_loc7_];
               (_loc9_ = new Object()).trigger = _loc8_.§0"$§;
               _loc9_.name = _loc8_.eventName;
               _loc9_.parameters = _loc8_.data;
               _loc6_.push(_loc9_);
               _loc7_++;
            }
            _loc1_.events = _loc6_;
         }
         return _loc1_;
      }
      
      public function §%$#§(param1:Vector.<§?W§>) : void
      {
         this.§5$&§ = param1;
      }
      
      public function §6Y§(param1:Vector.<§,"s§>) : void
      {
         this.§,x§ = param1;
      }
      
      public function getBehaviorsData() : Vector.<§?W§>
      {
         return this.§5$&§;
      }
      
      public function getEvents() : Vector.<§,"s§>
      {
         return this.§,x§;
      }
      
      public function get hasSpecialBehavior() : Boolean
      {
         return this.§5$&§ != null;
      }
   }
}
