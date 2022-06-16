package §`#C§
{
   public class §-$'§ extends §6!i§
   {
       
      
      protected var §6""§:Array;
      
      protected var §8!s§:String;
      
      protected var §+!]§:Number;
      
      protected var §,,§:Number;
      
      protected var §0$<§:Number;
      
      protected var §"!#§:Number;
      
      protected var §;!#§:Number;
      
      protected var §2#Q§:Number;
      
      protected var §9$#§:Number;
      
      protected var §"s§:Number;
      
      protected var §'# §:Number;
      
      protected var §2#F§:Number;
      
      protected var §]!<§:Number;
      
      protected var §##H§:Number;
      
      protected var §!#=§:Number;
      
      protected var §="!§:Number;
      
      protected var §<#7§:Number;
      
      protected var §7!'§:Number;
      
      protected var §"!c§:String;
      
      private var §9!z§:Boolean;
      
      public function §-$'§(param1:Object, param2:int, param3:§^#A§, param4:§0!y§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§6""§ = this.§7#W§(param1.sprites);
         this.§8!s§ = param1.sheet;
         this.§+!]§ = param1.minVel;
         this.§,,§ = param1.maxVel;
         this.§0$<§ = param1.minAngleVel;
         this.§"!#§ = param1.maxAngleVel;
         this.§;!#§ = param1.minScaleBegin;
         this.§2#Q§ = param1.maxScaleBegin;
         this.§9$#§ = param1.minScaleEnd;
         this.§"s§ = param1.maxScaleEnd;
         this.§'# § = param1.lifeTime;
         this.§2#F§ = param1.gravityX;
         this.§]!<§ = param1.gravityY;
         this.§##H§ = param1.minAngleEmitter;
         this.§!#=§ = param1.maxAngleEmitter;
         this.§="!§ = param1.minAngle;
         this.§<#7§ = param1.maxAngle;
         this.§9!z§ = param1.useAbsoluteAngle;
         this.§7!'§ = 10;
         if(param1.amount)
         {
            this.§7!'§ = param1.amount;
         }
         this.§"!c§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§6""§.length > 0)
         {
            _loc3_ = this.§'# § * 1000 / this.§6""§.length;
            for each(_loc4_ in this.§6""§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get §,y§() : int
      {
         if(this.§6""§)
         {
            return this.§6""§.length;
         }
         return 0;
      }
      
      protected function §<F§(param1:int) : String
      {
         return this.§6""§[param1];
      }
      
      private function §7#W§(param1:*) : Array
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
         return this.§'# §;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§;!#§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§2#Q§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§9$#§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§"s§;
      }
      
      public function get minAngle() : Number
      {
         return this.§="!§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§<#7§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§0$<§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§"!#§;
      }
      
      public function get amount() : Number
      {
         return this.§7!'§;
      }
      
      public function get minVel() : Number
      {
         return this.§+!]§;
      }
      
      public function get maxVel() : Number
      {
         return this.§,,§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§##H§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§!#=§;
      }
      
      public function get useAbsoluteAngle() : Boolean
      {
         return this.§9!z§;
      }
      
      public function get animation() : String
      {
         return this.§"!c§;
      }
      
      public function get gravityX() : Number
      {
         return this.§2#F§;
      }
      
      public function get gravityY() : Number
      {
         return this.§]!<§;
      }
   }
}
