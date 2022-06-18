package §-!j§
{
   public class §@U§ extends §@! §
   {
       
      
      protected var §6#A§:Array;
      
      protected var §&"v§:String;
      
      protected var §?!1§:Number;
      
      protected var §6"]§:Number;
      
      protected var §3"$§:Number;
      
      protected var §0"V§:Number;
      
      protected var §4$§:Number;
      
      protected var §9"8§:Number;
      
      protected var §`!W§:Number;
      
      protected var §%"8§:Number;
      
      protected var §=Z§:Number;
      
      protected var §&§:Number;
      
      protected var §^4§:Number;
      
      protected var §"L§:Number;
      
      protected var §[#x§:Number;
      
      protected var §^$B§:Number;
      
      protected var §9H§:Number;
      
      protected var §1"N§:Number;
      
      protected var §&"J§:String;
      
      private var §=[§:Boolean;
      
      public function §@U§(param1:Object, param2:int, param3:§5!,§, param4:§&!@§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§6#A§ = this.§#"X§(param1.sprites);
         this.§&"v§ = param1.sheet;
         this.§?!1§ = param1.minVel;
         this.§6"]§ = param1.maxVel;
         this.§3"$§ = param1.minAngleVel;
         this.§0"V§ = param1.maxAngleVel;
         this.§4$§ = param1.minScaleBegin;
         this.§9"8§ = param1.maxScaleBegin;
         this.§`!W§ = param1.minScaleEnd;
         this.§%"8§ = param1.maxScaleEnd;
         this.§=Z§ = param1.lifeTime;
         this.§&§ = param1.gravityX;
         this.§^4§ = param1.gravityY;
         this.§"L§ = param1.minAngleEmitter;
         this.§[#x§ = param1.maxAngleEmitter;
         this.§^$B§ = param1.minAngle;
         this.§9H§ = param1.maxAngle;
         this.§=[§ = param1.useAbsoluteAngle;
         this.§1"N§ = 10;
         if(param1.amount)
         {
            this.§1"N§ = param1.amount;
         }
         this.§&"J§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§6#A§.length > 0)
         {
            _loc3_ = this.§=Z§ * 1000 / this.§6#A§.length;
            for each(_loc4_ in this.§6#A§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get §'"R§() : int
      {
         if(this.§6#A§)
         {
            return this.§6#A§.length;
         }
         return 0;
      }
      
      protected function §9"f§(param1:int) : String
      {
         return this.§6#A§[param1];
      }
      
      private function §#"X§(param1:*) : Array
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         if(param1 is String)
         {
            return [param1];
         }
         if(param1 is Array)
         {
            return param1;
         }
         if(param1 is Object)
         {
            _loc2_ = [];
            for each(_loc3_ in param1)
            {
               _loc2_.push(_loc3_);
            }
            return _loc2_;
         }
         return [];
      }
      
      public function get lifeTime() : Number
      {
         return this.§=Z§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§4$§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§9"8§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§`!W§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§%"8§;
      }
      
      public function get minAngle() : Number
      {
         return this.§^$B§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§9H§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§3"$§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§0"V§;
      }
      
      public function get amount() : Number
      {
         return this.§1"N§;
      }
      
      public function set amount(param1:Number) : void
      {
         this.§1"N§ = param1;
      }
      
      public function get minVel() : Number
      {
         return this.§?!1§;
      }
      
      public function get maxVel() : Number
      {
         return this.§6"]§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§"L§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§[#x§;
      }
      
      public function get useAbsoluteAngle() : Boolean
      {
         return this.§=[§;
      }
      
      public function get animation() : String
      {
         return this.§&"J§;
      }
      
      public function get gravityX() : Number
      {
         return this.§&§;
      }
      
      public function get gravityY() : Number
      {
         return this.§^4§;
      }
   }
}
