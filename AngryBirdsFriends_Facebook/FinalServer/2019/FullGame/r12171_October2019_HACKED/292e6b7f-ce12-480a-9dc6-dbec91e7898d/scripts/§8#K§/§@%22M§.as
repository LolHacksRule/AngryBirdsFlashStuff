package §8#K§
{
   public class §@"M§ extends §<5§
   {
       
      
      protected var §]!-§:Array;
      
      protected var §9B§:String;
      
      protected var §@]§:Number;
      
      protected var §"I§:Number;
      
      protected var §`"Q§:Number;
      
      protected var §="6§:Number;
      
      protected var §6$%§:Number;
      
      protected var §!$0§:Number;
      
      protected var §0!s§:Number;
      
      protected var §8!@§:Number;
      
      protected var §@"s§:Number;
      
      protected var §&"y§:Number;
      
      protected var §7"`§:Number;
      
      protected var §&"Q§:Number;
      
      protected var §4"_§:Number;
      
      protected var §##>§:Number;
      
      protected var §5"o§:Number;
      
      protected var §2R§:Number;
      
      protected var §#"T§:String;
      
      private var § #M§:Boolean;
      
      public function §@"M§(param1:Object, param2:int, param3:§+#y§, param4:§8$-§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§]!-§ = this.§=$$§(param1.sprites);
         this.§9B§ = param1.sheet;
         this.§@]§ = param1.minVel;
         this.§"I§ = param1.maxVel;
         this.§`"Q§ = param1.minAngleVel;
         this.§="6§ = param1.maxAngleVel;
         this.§6$%§ = param1.minScaleBegin;
         this.§!$0§ = param1.maxScaleBegin;
         this.§0!s§ = param1.minScaleEnd;
         this.§8!@§ = param1.maxScaleEnd;
         this.§@"s§ = param1.lifeTime;
         this.§&"y§ = param1.gravityX;
         this.§7"`§ = param1.gravityY;
         this.§&"Q§ = param1.minAngleEmitter;
         this.§4"_§ = param1.maxAngleEmitter;
         this.§##>§ = param1.minAngle;
         this.§5"o§ = param1.maxAngle;
         this.§ #M§ = param1.useAbsoluteAngle;
         this.§2R§ = 10;
         if(param1.amount)
         {
            this.§2R§ = param1.amount;
         }
         this.§#"T§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§]!-§.length > 0)
         {
            _loc3_ = this.§@"s§ * 1000 / this.§]!-§.length;
            for each(_loc4_ in this.§]!-§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get § #I§() : int
      {
         if(this.§]!-§)
         {
            return this.§]!-§.length;
         }
         return 0;
      }
      
      protected function §3"P§(param1:int) : String
      {
         return this.§]!-§[param1];
      }
      
      private function §=$$§(param1:*) : Array
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
         return this.§@"s§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§6$%§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§!$0§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§0!s§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§8!@§;
      }
      
      public function get minAngle() : Number
      {
         return this.§##>§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§5"o§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§`"Q§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§="6§;
      }
      
      public function get amount() : Number
      {
         return this.§2R§;
      }
      
      public function set amount(param1:Number) : void
      {
         this.§2R§ = param1;
      }
      
      public function get minVel() : Number
      {
         return this.§@]§;
      }
      
      public function get maxVel() : Number
      {
         return this.§"I§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§&"Q§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§4"_§;
      }
      
      public function get useAbsoluteAngle() : Boolean
      {
         return this.§ #M§;
      }
      
      public function get animation() : String
      {
         return this.§#"T§;
      }
      
      public function get gravityX() : Number
      {
         return this.§&"y§;
      }
      
      public function get gravityY() : Number
      {
         return this.§7"`§;
      }
   }
}
