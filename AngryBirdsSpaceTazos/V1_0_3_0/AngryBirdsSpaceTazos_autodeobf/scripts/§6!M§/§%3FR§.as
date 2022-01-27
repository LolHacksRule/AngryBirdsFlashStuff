package §6!M§
{
   public class §?R§ extends §%h§
   {
       
      
      protected var §'"+§:Array;
      
      protected var §-!Q§:String;
      
      protected var §3!_§:Number;
      
      protected var §5i§:Number;
      
      protected var §47§:Number;
      
      protected var §-!P§:Number;
      
      protected var §@D§:Number;
      
      protected var §5!1§:Number;
      
      protected var §?!H§:Number;
      
      protected var §2"$§:Number;
      
      protected var §5"+§:Number;
      
      protected var §in §:Number;
      
      protected var §`X§:Number;
      
      protected var §`!S§:Number;
      
      protected var §]h§:Number;
      
      protected var §=!V§:Number;
      
      protected var §#T§:Number;
      
      protected var §[R§:Number;
      
      protected var §=O§:String;
      
      public function §?R§(param1:Object, param2:int, param3:§8!]§, param4:§=!P§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§'"+§ = this.§5,§(param1.sprites);
         this.§-!Q§ = param1.sheet;
         this.§3!_§ = param1.minVel;
         this.§5i§ = param1.maxVel;
         this.§47§ = param1.minAngleVel;
         this.§-!P§ = param1.maxAngleVel;
         this.§@D§ = param1.minScaleBegin;
         this.§5!1§ = param1.maxScaleBegin;
         this.§?!H§ = param1.minScaleEnd;
         this.§2"$§ = param1.maxScaleEnd;
         this.§5"+§ = param1.lifeTime;
         this.§in § = param1.gravityX;
         this.§`X§ = param1.gravityY;
         this.§`!S§ = param1.minAngleEmitter;
         this.§]h§ = param1.maxAngleEmitter;
         this.§=!V§ = param1.minAngle;
         this.§#T§ = param1.maxAngle;
         this.§[R§ = 10;
         if(param1.amount)
         {
            this.§[R§ = param1.amount;
         }
         this.§=O§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§'"+§.length > 0)
         {
            _loc3_ = this.§5"+§ * 1000 / this.§'"+§.length;
            for each(_loc4_ in this.§'"+§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get §`j§() : int
      {
         if(this.§'"+§)
         {
            return this.§'"+§.length;
         }
         return 0;
      }
      
      protected function §?!i§(param1:int) : String
      {
         return this.§'"+§[param1];
      }
      
      private function §5,§(param1:*) : Array
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
         return this.§5"+§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§@D§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§5!1§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§?!H§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§2"$§;
      }
      
      public function get minAngle() : Number
      {
         return this.§=!V§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§#T§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§47§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§-!P§;
      }
      
      public function get amount() : Number
      {
         return this.§[R§;
      }
      
      public function get minVel() : Number
      {
         return this.§3!_§;
      }
      
      public function get maxVel() : Number
      {
         return this.§5i§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§`!S§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§]h§;
      }
      
      public function get animation() : String
      {
         return this.§=O§;
      }
      
      public function get gravityX() : Number
      {
         return this.§in §;
      }
      
      public function get gravityY() : Number
      {
         return this.§`X§;
      }
   }
}
