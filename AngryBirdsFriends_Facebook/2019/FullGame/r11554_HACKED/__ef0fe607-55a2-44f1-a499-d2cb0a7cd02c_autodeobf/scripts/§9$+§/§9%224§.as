package §9$+§
{
   import §-!!§.§8"J§;
   import §-"i§.§+!7§;
   import §`# §.b2Vec2;
   
   public class §9"4§
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
      
      public var §@2§:Number = 0.0;
      
      public var §?!@§:Number = 0.0;
      
      public var §&"X§:int = -1;
      
      public var angularVelocity:Number = 0.0;
      
      private var §1§:b2Vec2;
      
      public var angularDamping:Number = 0.0;
      
      public var linearDamping:Number = 0.0;
      
      public var awake:Boolean = false;
      
      public var health:Number = 0.0;
      
      private var §8"C§:Vector.<§<$<§>;
      
      private var §&"M§:Vector.<§+!7§>;
      
      public function §9"4§()
      {
         this.z = §8"J§.§9$9§;
         super();
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:§<$<§ = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:§+!7§ = null;
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
         if(this.§8"C§)
         {
            _loc2_ = new Array();
            _loc3_ = 0;
            while(_loc3_ < this.§8"C§.length)
            {
               _loc4_ = this.§8"C§[_loc3_];
               (_loc5_ = new Object()).type = _loc4_.type;
               _loc5_.name = _loc4_.name;
               _loc5_.event = _loc4_.event;
               _loc2_.push(_loc5_);
               _loc3_++;
            }
            _loc1_.behaviors = _loc2_;
         }
         if(this.§&"M§)
         {
            _loc6_ = new Array();
            _loc7_ = 0;
            while(_loc7_ < this.§&"M§.length)
            {
               _loc8_ = this.§&"M§[_loc7_];
               (_loc9_ = new Object()).trigger = _loc8_.§7#J§;
               _loc9_.name = _loc8_.eventName;
               _loc9_.parameters = _loc8_.data;
               _loc6_.push(_loc9_);
               _loc7_++;
            }
            _loc1_.events = _loc6_;
         }
         return _loc1_;
      }
      
      public function §-#P§(param1:Vector.<§<$<§>) : void
      {
         this.§8"C§ = param1;
      }
      
      public function §!8§(param1:Vector.<§+!7§>) : void
      {
         this.§&"M§ = param1;
      }
      
      public function getBehaviorsData() : Vector.<§<$<§>
      {
         return this.§8"C§;
      }
      
      public function getEvents() : Vector.<§+!7§>
      {
         return this.§&"M§;
      }
      
      public function get hasSpecialBehavior() : Boolean
      {
         return this.§8"C§ != null;
      }
      
      public function get linearForce() : b2Vec2
      {
         return this.§1§;
      }
      
      public function set linearForce(param1:b2Vec2) : void
      {
         this.§1§ = param1;
      }
   }
}
