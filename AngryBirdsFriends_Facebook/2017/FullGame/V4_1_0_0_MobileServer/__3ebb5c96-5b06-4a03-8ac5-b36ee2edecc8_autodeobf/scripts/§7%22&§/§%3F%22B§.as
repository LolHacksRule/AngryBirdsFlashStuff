package §7"&§
{
   public class §?"B§ extends §+#p§
   {
       
      
      protected var §&"2§:Array;
      
      protected var §`"X§:String;
      
      protected var §'"o§:Number;
      
      protected var §7#;§:Number;
      
      protected var §'"§:Number;
      
      protected var §^a§:Number;
      
      protected var §9G§:Number;
      
      protected var §&!V§:Number;
      
      protected var §[I§:Number;
      
      protected var §1V§:Number;
      
      protected var §+_§:Number;
      
      protected var §"o§:Number;
      
      protected var §9"7§:Number;
      
      protected var §=#Z§:Number;
      
      protected var §@T§:Number;
      
      protected var §,#o§:Number;
      
      protected var §'!a§:Number;
      
      protected var § F§:Number;
      
      protected var § @§:String;
      
      private var §+s§:Boolean;
      
      public function §?"B§(param1:Object, param2:int, param3:§^"Q§, param4:§>"f§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§&"2§ = this.§`T§(param1.sprites);
         this.§`"X§ = param1.sheet;
         this.§'"o§ = param1.minVel;
         this.§7#;§ = param1.maxVel;
         this.§'"§ = param1.minAngleVel;
         this.§^a§ = param1.maxAngleVel;
         this.§9G§ = param1.minScaleBegin;
         this.§&!V§ = param1.maxScaleBegin;
         this.§[I§ = param1.minScaleEnd;
         this.§1V§ = param1.maxScaleEnd;
         this.§+_§ = param1.lifeTime;
         this.§"o§ = param1.gravityX;
         this.§9"7§ = param1.gravityY;
         this.§=#Z§ = param1.minAngleEmitter;
         this.§@T§ = param1.maxAngleEmitter;
         this.§,#o§ = param1.minAngle;
         this.§'!a§ = param1.maxAngle;
         this.§+s§ = param1.useAbsoluteAngle;
         this.§ F§ = 10;
         if(param1.amount)
         {
            this.§ F§ = param1.amount;
         }
         this.§ @§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§&"2§.length > 0)
         {
            _loc3_ = this.§+_§ * 1000 / this.§&"2§.length;
            for each(_loc4_ in this.§&"2§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get §7#0§() : int
      {
         if(this.§&"2§)
         {
            return this.§&"2§.length;
         }
         return 0;
      }
      
      protected function §6"_§(param1:int) : String
      {
         return this.§&"2§[param1];
      }
      
      private function §`T§(param1:*) : Array
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
         return this.§+_§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§9G§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§&!V§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§[I§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§1V§;
      }
      
      public function get minAngle() : Number
      {
         return this.§,#o§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§'!a§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§'"§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§^a§;
      }
      
      public function get amount() : Number
      {
         return this.§ F§;
      }
      
      public function set amount(param1:Number) : void
      {
         this.§ F§ = param1;
      }
      
      public function get minVel() : Number
      {
         return this.§'"o§;
      }
      
      public function get maxVel() : Number
      {
         return this.§7#;§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§=#Z§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§@T§;
      }
      
      public function get useAbsoluteAngle() : Boolean
      {
         return this.§+s§;
      }
      
      public function get animation() : String
      {
         return this.§ @§;
      }
      
      public function get gravityX() : Number
      {
         return this.§"o§;
      }
      
      public function get gravityY() : Number
      {
         return this.§9"7§;
      }
   }
}
