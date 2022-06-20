package §?§#3
{
   public class §6!M§ extends §+"%§
   {
       
      
      protected var §#$B§:Array;
      
      protected var §["[§:String;
      
      protected var §?""§:Number;
      
      protected var §9"@§:Number;
      
      protected var § $4§:Number;
      
      protected var §<"C§:Number;
      
      protected var §8#i§:Number;
      
      protected var §?!E§:Number;
      
      protected var §>!v§:Number;
      
      protected var §!$-§:Number;
      
      protected var §'"Q§:Number;
      
      protected var §,!v§:Number;
      
      protected var §0#_§:Number;
      
      protected var §8! §:Number;
      
      protected var §`#8§:Number;
      
      protected var §0!Q§:Number;
      
      protected var §9"F§:Number;
      
      protected var §&#f§:Number;
      
      protected var §"m§:String;
      
      private var §3s§:Boolean;
      
      public function §6!M§(param1:Object, param2:int, param3:§7!$§, param4:§4I§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§#$B§ = this.§ "o§(param1.sprites);
         this.§["[§ = param1.sheet;
         this.§?""§ = param1.minVel;
         this.§9"@§ = param1.maxVel;
         this.§ $4§ = param1.minAngleVel;
         this.§<"C§ = param1.maxAngleVel;
         this.§8#i§ = param1.minScaleBegin;
         this.§?!E§ = param1.maxScaleBegin;
         this.§>!v§ = param1.minScaleEnd;
         this.§!$-§ = param1.maxScaleEnd;
         this.§'"Q§ = param1.lifeTime;
         this.§,!v§ = param1.gravityX;
         this.§0#_§ = param1.gravityY;
         this.§8! § = param1.minAngleEmitter;
         this.§`#8§ = param1.maxAngleEmitter;
         this.§0!Q§ = param1.minAngle;
         this.§9"F§ = param1.maxAngle;
         this.§3s§ = param1.useAbsoluteAngle;
         this.§&#f§ = 10;
         if(param1.amount)
         {
            this.§&#f§ = param1.amount;
         }
         this.§"m§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§#$B§.length > 0)
         {
            _loc3_ = this.§'"Q§ * 1000 / this.§#$B§.length;
            for each(_loc4_ in this.§#$B§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get §'!t§() : int
      {
         if(this.§#$B§)
         {
            return this.§#$B§.length;
         }
         return 0;
      }
      
      protected function §8B§(param1:int) : String
      {
         return this.§#$B§[param1];
      }
      
      private function § "o§(param1:*) : Array
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
         return this.§'"Q§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§8#i§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§?!E§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§>!v§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§!$-§;
      }
      
      public function get minAngle() : Number
      {
         return this.§0!Q§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§9"F§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§ $4§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§<"C§;
      }
      
      public function get amount() : Number
      {
         return this.§&#f§;
      }
      
      public function set amount(param1:Number) : void
      {
         this.§&#f§ = param1;
      }
      
      public function get minVel() : Number
      {
         return this.§?""§;
      }
      
      public function get maxVel() : Number
      {
         return this.§9"@§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§8! §;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§`#8§;
      }
      
      public function get useAbsoluteAngle() : Boolean
      {
         return this.§3s§;
      }
      
      public function get animation() : String
      {
         return this.§"m§;
      }
      
      public function get gravityX() : Number
      {
         return this.§,!v§;
      }
      
      public function get gravityY() : Number
      {
         return this.§0#_§;
      }
   }
}
