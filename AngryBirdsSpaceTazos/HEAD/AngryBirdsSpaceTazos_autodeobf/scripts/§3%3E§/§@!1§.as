package §3>§
{
   public class §@!1§ extends §3n§
   {
       
      
      protected var §4!I§:Array;
      
      protected var §"<§:String;
      
      protected var §+P§:Number;
      
      protected var §>"@§:Number;
      
      protected var §!!U§:Number;
      
      protected var §8!V§:Number;
      
      protected var §9!q§:Number;
      
      protected var §@!e§:Number;
      
      protected var §@F§:Number;
      
      protected var §`"9§:Number;
      
      protected var §5!F§:Number;
      
      protected var §#W§:Number;
      
      protected var §"!L§:Number;
      
      protected var §8"1§:Number;
      
      protected var §"!]§:Number;
      
      protected var §,"G§:Number;
      
      protected var §6R§:Number;
      
      protected var §>!D§:Number;
      
      protected var §?^§:String;
      
      public function §@!1§(param1:Object, param2:int, param3:§!4§, param4:§=!Z§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§4!I§ = this.§3!H§(param1.sprites);
         this.§"<§ = param1.sheet;
         this.§+P§ = param1.minVel;
         this.§>"@§ = param1.maxVel;
         this.§!!U§ = param1.minAngleVel;
         this.§8!V§ = param1.maxAngleVel;
         this.§9!q§ = param1.minScaleBegin;
         this.§@!e§ = param1.maxScaleBegin;
         this.§@F§ = param1.minScaleEnd;
         this.§`"9§ = param1.maxScaleEnd;
         this.§5!F§ = param1.lifeTime;
         this.§#W§ = param1.gravityX;
         this.§"!L§ = param1.gravityY;
         this.§8"1§ = param1.minAngleEmitter;
         this.§"!]§ = param1.maxAngleEmitter;
         this.§,"G§ = param1.minAngle;
         this.§6R§ = param1.maxAngle;
         this.§>!D§ = 10;
         if(param1.amount)
         {
            this.§>!D§ = param1.amount;
         }
         this.§?^§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§4!I§.length > 0)
         {
            _loc3_ = this.§5!F§ * 1000 / this.§4!I§.length;
            for each(_loc4_ in this.§4!I§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get §1q§() : int
      {
         if(this.§4!I§)
         {
            return this.§4!I§.length;
         }
         return 0;
      }
      
      protected function §`!M§(param1:int) : String
      {
         return this.§4!I§[param1];
      }
      
      private function §3!H§(param1:*) : Array
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
         return this.§5!F§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§9!q§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§@!e§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§@F§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§`"9§;
      }
      
      public function get minAngle() : Number
      {
         return this.§,"G§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§6R§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§!!U§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§8!V§;
      }
      
      public function get amount() : Number
      {
         return this.§>!D§;
      }
      
      public function get minVel() : Number
      {
         return this.§+P§;
      }
      
      public function get maxVel() : Number
      {
         return this.§>"@§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§8"1§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§"!]§;
      }
      
      public function get animation() : String
      {
         return this.§?^§;
      }
      
      public function get gravityX() : Number
      {
         return this.§#W§;
      }
      
      public function get gravityY() : Number
      {
         return this.§"!L§;
      }
   }
}
