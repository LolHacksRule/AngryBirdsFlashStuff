package §>P§
{
   public class §?L§ extends §=4§
   {
       
      
      protected var §`!@§:Array;
      
      protected var §#!r§:String;
      
      protected var §&!t§:Number;
      
      protected var §"b§:Number;
      
      protected var § !c§:Number;
      
      protected var §@#"§:Number;
      
      protected var §"!k§:Number;
      
      protected var §"!T§:Number;
      
      protected var §^N§:Number;
      
      protected var §1<§:Number;
      
      protected var §]"@§:Number;
      
      protected var §!d§:Number;
      
      protected var §1!u§:Number;
      
      protected var §+!c§:Number;
      
      protected var §0"§:Number;
      
      protected var §3O§:Number;
      
      protected var §7"E§:Number;
      
      protected var §4!f§:Number;
      
      protected var §3-§:String;
      
      public function §?L§(param1:Object, param2:int, param3:§1C§, param4:§&s§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§`!@§ = this.§?!G§(param1.sprites);
         this.§#!r§ = param1.sheet;
         this.§&!t§ = param1.minVel;
         this.§"b§ = param1.maxVel;
         this.§ !c§ = param1.minAngleVel;
         this.§@#"§ = param1.maxAngleVel;
         this.§"!k§ = param1.minScaleBegin;
         this.§"!T§ = param1.maxScaleBegin;
         this.§^N§ = param1.minScaleEnd;
         this.§1<§ = param1.maxScaleEnd;
         this.§]"@§ = param1.lifeTime;
         this.§!d§ = param1.gravityX;
         this.§1!u§ = param1.gravityY;
         this.§+!c§ = param1.minAngleEmitter;
         this.§0"§ = param1.maxAngleEmitter;
         this.§3O§ = param1.minAngle;
         this.§7"E§ = param1.maxAngle;
         this.§4!f§ = 10;
         if(param1.amount)
         {
            this.§4!f§ = param1.amount;
         }
         this.§3-§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§`!@§.length > 0)
         {
            _loc3_ = this.§]"@§ * 1000 / this.§`!@§.length;
            for each(_loc4_ in this.§`!@§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get §?"h§() : int
      {
         if(this.§`!@§)
         {
            return this.§`!@§.length;
         }
         return 0;
      }
      
      protected function §2!T§(param1:int) : String
      {
         return this.§`!@§[param1];
      }
      
      private function §?!G§(param1:*) : Array
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
         return this.§]"@§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§"!k§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§"!T§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§^N§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§1<§;
      }
      
      public function get minAngle() : Number
      {
         return this.§3O§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§7"E§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§ !c§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§@#"§;
      }
      
      public function get amount() : Number
      {
         return this.§4!f§;
      }
      
      public function get minVel() : Number
      {
         return this.§&!t§;
      }
      
      public function get maxVel() : Number
      {
         return this.§"b§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§+!c§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§0"§;
      }
      
      public function get animation() : String
      {
         return this.§3-§;
      }
      
      public function get gravityX() : Number
      {
         return this.§!d§;
      }
      
      public function get gravityY() : Number
      {
         return this.§1!u§;
      }
   }
}
