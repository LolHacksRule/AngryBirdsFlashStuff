package §;"=§
{
   public class §@!6§ extends §+C§
   {
       
      
      protected var §]"1§:Array;
      
      protected var §4",§:String;
      
      protected var §1"=§:Number;
      
      protected var §>!"§:Number;
      
      protected var §3"<§:Number;
      
      protected var §`>§:Number;
      
      protected var §7G§:Number;
      
      protected var §;!D§:Number;
      
      protected var §,R§:Number;
      
      protected var §6!U§:Number;
      
      protected var §?!;§:Number;
      
      protected var §!'§:Number;
      
      protected var §["5§:Number;
      
      protected var §'K§:Number;
      
      protected var §1k§:Number;
      
      protected var §!§:Number;
      
      protected var §2"&§:Number;
      
      protected var §0"6§:Number;
      
      protected var §"">§:String;
      
      public function §@!6§(param1:Object, param2:int, param3:§"!=§, param4:§"!Y§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§]"1§ = this.§=r§(param1.sprites);
         this.§4",§ = param1.sheet;
         this.§1"=§ = param1.minVel;
         this.§>!"§ = param1.maxVel;
         this.§3"<§ = param1.minAngleVel;
         this.§`>§ = param1.maxAngleVel;
         this.§7G§ = param1.minScaleBegin;
         this.§;!D§ = param1.maxScaleBegin;
         this.§,R§ = param1.minScaleEnd;
         this.§6!U§ = param1.maxScaleEnd;
         this.§?!;§ = param1.lifeTime;
         this.§!'§ = param1.gravityX;
         this.§["5§ = param1.gravityY;
         this.§'K§ = param1.minAngleEmitter;
         this.§1k§ = param1.maxAngleEmitter;
         this.§!§ = param1.minAngle;
         this.§2"&§ = param1.maxAngle;
         this.§0"6§ = 10;
         if(param1.amount)
         {
            this.§0"6§ = param1.amount;
         }
         this.§"">§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§]"1§.length > 0)
         {
            _loc3_ = this.§?!;§ * 1000 / this.§]"1§.length;
            for each(_loc4_ in this.§]"1§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get § !#§() : int
      {
         if(this.§]"1§)
         {
            return this.§]"1§.length;
         }
         return 0;
      }
      
      protected function §6!s§(param1:int) : String
      {
         return this.§]"1§[param1];
      }
      
      private function §=r§(param1:*) : Array
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
         return this.§?!;§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§7G§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§;!D§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§,R§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§6!U§;
      }
      
      public function get minAngle() : Number
      {
         return this.§!§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§2"&§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§3"<§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§`>§;
      }
      
      public function get amount() : Number
      {
         return this.§0"6§;
      }
      
      public function get minVel() : Number
      {
         return this.§1"=§;
      }
      
      public function get maxVel() : Number
      {
         return this.§>!"§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§'K§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§1k§;
      }
      
      public function get animation() : String
      {
         return this.§"">§;
      }
      
      public function get gravityX() : Number
      {
         return this.§!'§;
      }
      
      public function get gravityY() : Number
      {
         return this.§["5§;
      }
   }
}
