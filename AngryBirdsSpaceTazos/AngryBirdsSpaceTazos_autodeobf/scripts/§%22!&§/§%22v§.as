package §"!&§
{
   public class §"v§ extends §`D§
   {
       
      
      protected var §"!z§:Array;
      
      protected var § e§:String;
      
      protected var §5W§:Number;
      
      protected var §+"&§:Number;
      
      protected var §=6§:Number;
      
      protected var §#x§:Number;
      
      protected var §;"2§:Number;
      
      protected var §]!t§:Number;
      
      protected var §-"2§:Number;
      
      protected var §!a§:Number;
      
      protected var §1!?§:Number;
      
      protected var §'6§:Number;
      
      protected var §%=§:Number;
      
      protected var §!!3§:Number;
      
      protected var §@]§:Number;
      
      protected var §>"3§:Number;
      
      protected var §^!>§:Number;
      
      protected var §@"3§:Number;
      
      protected var §]!k§:String;
      
      public function §"v§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§"!z§ = this.§5!H§(param1.sprites);
         this.§ e§ = param1.sheet;
         this.§5W§ = param1.minVel;
         this.§+"&§ = param1.maxVel;
         this.§=6§ = param1.minAngleVel;
         this.§#x§ = param1.maxAngleVel;
         this.§;"2§ = param1.minScaleBegin;
         this.§]!t§ = param1.maxScaleBegin;
         this.§-"2§ = param1.minScaleEnd;
         this.§!a§ = param1.maxScaleEnd;
         this.§1!?§ = param1.lifeTime;
         this.§'6§ = param1.gravityX;
         this.§%=§ = param1.gravityY;
         this.§!!3§ = param1.minAngleEmitter;
         this.§@]§ = param1.maxAngleEmitter;
         this.§>"3§ = param1.minAngle;
         this.§^!>§ = param1.maxAngle;
         this.§@"3§ = 10;
         if(param1.amount)
         {
            this.§@"3§ = param1.amount;
         }
         this.§]!k§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§"!z§.length > 0)
         {
            _loc3_ = this.§1!?§ * 1000 / this.§"!z§.length;
            for each(_loc4_ in this.§"!z§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get §%m§() : int
      {
         if(this.§"!z§)
         {
            return this.§"!z§.length;
         }
         return 0;
      }
      
      protected function §&!#§(param1:int) : String
      {
         return this.§"!z§[param1];
      }
      
      private function §5!H§(param1:*) : Array
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
         return this.§1!?§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§;"2§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§]!t§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§-"2§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§!a§;
      }
      
      public function get minAngle() : Number
      {
         return this.§>"3§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§^!>§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§=6§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§#x§;
      }
      
      public function get amount() : Number
      {
         return this.§@"3§;
      }
      
      public function get minVel() : Number
      {
         return this.§5W§;
      }
      
      public function get maxVel() : Number
      {
         return this.§+"&§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§!!3§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§@]§;
      }
      
      public function get animation() : String
      {
         return this.§]!k§;
      }
      
      public function get gravityX() : Number
      {
         return this.§'6§;
      }
      
      public function get gravityY() : Number
      {
         return this.§%=§;
      }
   }
}
