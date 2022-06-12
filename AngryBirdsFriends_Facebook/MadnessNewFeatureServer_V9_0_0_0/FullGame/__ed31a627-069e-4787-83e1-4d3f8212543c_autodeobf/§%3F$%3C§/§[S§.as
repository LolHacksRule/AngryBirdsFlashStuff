package §?$<§
{
   public class §[S§ extends §@"q§
   {
       
      
      protected var §5!p§:Array;
      
      protected var §"#"§:String;
      
      protected var §`!i§:Number;
      
      protected var §,"J§:Number;
      
      protected var §;R§:Number;
      
      protected var §9T§:Number;
      
      protected var §<!§:Number;
      
      protected var §<"^§:Number;
      
      protected var §7#§:Number;
      
      protected var §;Q§:Number;
      
      protected var §&$!§:Number;
      
      protected var §for§:Number;
      
      protected var §#'§:Number;
      
      protected var §9#C§:Number;
      
      protected var §;#c§:Number;
      
      protected var §^"V§:Number;
      
      protected var §5,§:Number;
      
      protected var §#7§:Number;
      
      protected var §&#N§:String;
      
      private var §[#a§:Boolean;
      
      public function §[S§(param1:Object, param2:int, param3:§;<§, param4:§9!V§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§5!p§ = this.§ !c§(param1.sprites);
         this.§"#"§ = param1.sheet;
         this.§`!i§ = param1.minVel;
         this.§,"J§ = param1.maxVel;
         this.§;R§ = param1.minAngleVel;
         this.§9T§ = param1.maxAngleVel;
         this.§<!§ = param1.minScaleBegin;
         this.§<"^§ = param1.maxScaleBegin;
         this.§7#§ = param1.minScaleEnd;
         this.§;Q§ = param1.maxScaleEnd;
         this.§&$!§ = param1.lifeTime;
         this.§for§ = param1.gravityX;
         this.§#'§ = param1.gravityY;
         this.§9#C§ = param1.minAngleEmitter;
         this.§;#c§ = param1.maxAngleEmitter;
         this.§^"V§ = param1.minAngle;
         this.§5,§ = param1.maxAngle;
         this.§[#a§ = param1.useAbsoluteAngle;
         this.§#7§ = 10;
         if(param1.amount)
         {
            this.§#7§ = param1.amount;
         }
         this.§&#N§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§5!p§.length > 0)
         {
            _loc3_ = this.§&$!§ * 1000 / this.§5!p§.length;
            for each(_loc4_ in this.§5!p§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get §78§() : int
      {
         if(this.§5!p§)
         {
            return this.§5!p§.length;
         }
         return 0;
      }
      
      protected function §%#8§(param1:int) : String
      {
         return this.§5!p§[param1];
      }
      
      private function § !c§(param1:*) : Array
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
         return this.§&$!§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§<!§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§<"^§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§7#§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§;Q§;
      }
      
      public function get minAngle() : Number
      {
         return this.§^"V§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§5,§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§;R§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§9T§;
      }
      
      public function get amount() : Number
      {
         return this.§#7§;
      }
      
      public function set amount(param1:Number) : void
      {
         this.§#7§ = param1;
      }
      
      public function get minVel() : Number
      {
         return this.§`!i§;
      }
      
      public function get maxVel() : Number
      {
         return this.§,"J§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§9#C§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§;#c§;
      }
      
      public function get useAbsoluteAngle() : Boolean
      {
         return this.§[#a§;
      }
      
      public function get animation() : String
      {
         return this.§&#N§;
      }
      
      public function get gravityX() : Number
      {
         return this.§for§;
      }
      
      public function get gravityY() : Number
      {
         return this.§#'§;
      }
   }
}
