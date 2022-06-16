package §8"L§
{
   public class §3#N§ extends §5$=§
   {
       
      
      protected var §2"L§:Array;
      
      protected var §=!_§:String;
      
      protected var §>!5§:Number;
      
      protected var §!#a§:Number;
      
      protected var §?#7§:Number;
      
      protected var §]!H§:Number;
      
      protected var §-"X§:Number;
      
      protected var §'#M§:Number;
      
      protected var §7$"§:Number;
      
      protected var §4r§:Number;
      
      protected var §"!>§:Number;
      
      protected var §+=§:Number;
      
      protected var §5!x§:Number;
      
      protected var §'"m§:Number;
      
      protected var §5$§:Number;
      
      protected var § e§:Number;
      
      protected var § "j§:Number;
      
      protected var §9K§:Number;
      
      protected var §&n§:String;
      
      private var §@$,§:Boolean;
      
      public function §3#N§(param1:Object, param2:int, param3:§?"b§, param4:§+"L§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§2"L§ = this.§,!g§(param1.sprites);
         this.§=!_§ = param1.sheet;
         this.§>!5§ = param1.minVel;
         this.§!#a§ = param1.maxVel;
         this.§?#7§ = param1.minAngleVel;
         this.§]!H§ = param1.maxAngleVel;
         this.§-"X§ = param1.minScaleBegin;
         this.§'#M§ = param1.maxScaleBegin;
         this.§7$"§ = param1.minScaleEnd;
         this.§4r§ = param1.maxScaleEnd;
         this.§"!>§ = param1.lifeTime;
         this.§+=§ = param1.gravityX;
         this.§5!x§ = param1.gravityY;
         this.§'"m§ = param1.minAngleEmitter;
         this.§5$§ = param1.maxAngleEmitter;
         this.§ e§ = param1.minAngle;
         this.§ "j§ = param1.maxAngle;
         this.§@$,§ = param1.useAbsoluteAngle;
         this.§9K§ = 10;
         if(param1.amount)
         {
            this.§9K§ = param1.amount;
         }
         this.§&n§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§2"L§.length > 0)
         {
            _loc3_ = this.§"!>§ * 1000 / this.§2"L§.length;
            for each(_loc4_ in this.§2"L§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get §&E§() : int
      {
         if(this.§2"L§)
         {
            return this.§2"L§.length;
         }
         return 0;
      }
      
      protected function §-#9§(param1:int) : String
      {
         return this.§2"L§[param1];
      }
      
      private function §,!g§(param1:*) : Array
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
         return this.§"!>§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§-"X§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§'#M§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§7$"§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§4r§;
      }
      
      public function get minAngle() : Number
      {
         return this.§ e§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§ "j§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§?#7§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§]!H§;
      }
      
      public function get amount() : Number
      {
         return this.§9K§;
      }
      
      public function set amount(param1:Number) : void
      {
         this.§9K§ = param1;
      }
      
      public function get minVel() : Number
      {
         return this.§>!5§;
      }
      
      public function get maxVel() : Number
      {
         return this.§!#a§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§'"m§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§5$§;
      }
      
      public function get useAbsoluteAngle() : Boolean
      {
         return this.§@$,§;
      }
      
      public function get animation() : String
      {
         return this.§&n§;
      }
      
      public function get gravityX() : Number
      {
         return this.§+=§;
      }
      
      public function get gravityY() : Number
      {
         return this.§5!x§;
      }
   }
}
