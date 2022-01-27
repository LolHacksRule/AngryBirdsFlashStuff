package §#g§
{
   public class §=!F§ extends §[!F§
   {
       
      
      protected var §'"B§:Array;
      
      protected var §>"n§:String;
      
      protected var §9`§:Number;
      
      protected var §8"S§:Number;
      
      protected var §=7§:Number;
      
      protected var §]"@§:Number;
      
      protected var §]"!§:Number;
      
      protected var §&"e§:Number;
      
      protected var §&"7§:Number;
      
      protected var §6"n§:Number;
      
      protected var §3! §:Number;
      
      protected var §=+§:Number;
      
      protected var §%d§:Number;
      
      protected var §5"1§:Number;
      
      protected var §`d§:Number;
      
      protected var §'s§:Number;
      
      protected var §+K§:Number;
      
      protected var §5o§:Number;
      
      protected var §#!9§:String;
      
      public function §=!F§(param1:Object, param2:int, param3:§!+§, param4:§^i§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§'"B§ = this.§8!6§(param1.sprites);
         this.§>"n§ = param1.sheet;
         this.§9`§ = param1.minVel;
         this.§8"S§ = param1.maxVel;
         this.§=7§ = param1.minAngleVel;
         this.§]"@§ = param1.maxAngleVel;
         this.§]"!§ = param1.minScaleBegin;
         this.§&"e§ = param1.maxScaleBegin;
         this.§&"7§ = param1.minScaleEnd;
         this.§6"n§ = param1.maxScaleEnd;
         this.§3! § = param1.lifeTime;
         this.§=+§ = param1.gravityX;
         this.§%d§ = param1.gravityY;
         this.§5"1§ = param1.minAngleEmitter;
         this.§`d§ = param1.maxAngleEmitter;
         this.§'s§ = param1.minAngle;
         this.§+K§ = param1.maxAngle;
         this.§5o§ = 10;
         if(param1.amount)
         {
            this.§5o§ = param1.amount;
         }
         this.§#!9§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§'"B§.length > 0)
         {
            _loc3_ = this.§3! § * 1000 / this.§'"B§.length;
            for each(_loc4_ in this.§'"B§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get §7"e§() : int
      {
         if(this.§'"B§)
         {
            return this.§'"B§.length;
         }
         return 0;
      }
      
      protected function §%!=§(param1:int) : String
      {
         return this.§'"B§[param1];
      }
      
      private function §8!6§(param1:*) : Array
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
         return this.§3! §;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§]"!§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§&"e§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§&"7§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§6"n§;
      }
      
      public function get minAngle() : Number
      {
         return this.§'s§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§+K§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§=7§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§]"@§;
      }
      
      public function get amount() : Number
      {
         return this.§5o§;
      }
      
      public function get minVel() : Number
      {
         return this.§9`§;
      }
      
      public function get maxVel() : Number
      {
         return this.§8"S§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§5"1§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§`d§;
      }
      
      public function get animation() : String
      {
         return this.§#!9§;
      }
      
      public function get gravityX() : Number
      {
         return this.§=+§;
      }
      
      public function get gravityY() : Number
      {
         return this.§%d§;
      }
   }
}
