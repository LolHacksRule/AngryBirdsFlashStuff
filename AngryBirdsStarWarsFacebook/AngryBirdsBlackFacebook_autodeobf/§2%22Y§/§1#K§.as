package §2"Y§
{
   public class §1#K§ extends §["$§
   {
       
      
      protected var §0!E§:Array;
      
      protected var §>">§:String;
      
      protected var §<#9§:Number;
      
      protected var §7"y§:Number;
      
      protected var §7"K§:Number;
      
      protected var §#!J§:Number;
      
      protected var §+"=§:Number;
      
      protected var §?"+§:Number;
      
      protected var §4"M§:Number;
      
      protected var §""!§:Number;
      
      protected var §5"v§:Number;
      
      protected var §6"C§:Number;
      
      protected var §=!]§:Number;
      
      protected var §<"%§:Number;
      
      protected var §>"q§:Number;
      
      protected var §`"K§:Number;
      
      protected var §+Z§:Number;
      
      protected var §>2§:Number;
      
      protected var §]!`§:String;
      
      public function §1#K§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§0!E§ = this.§^!h§(param1.sprites);
         this.§>">§ = param1.sheet;
         this.§<#9§ = param1.minVel;
         this.§7"y§ = param1.maxVel;
         this.§7"K§ = param1.minAngleVel;
         this.§#!J§ = param1.maxAngleVel;
         this.§+"=§ = param1.minScaleBegin;
         this.§?"+§ = param1.maxScaleBegin;
         this.§4"M§ = param1.minScaleEnd;
         this.§""!§ = param1.maxScaleEnd;
         this.§5"v§ = param1.lifeTime;
         this.§6"C§ = param1.gravityX;
         this.§=!]§ = param1.gravityY;
         this.§<"%§ = param1.minAngleEmitter;
         this.§>"q§ = param1.maxAngleEmitter;
         this.§`"K§ = param1.minAngle;
         this.§+Z§ = param1.maxAngle;
         this.§>2§ = 10;
         if(param1.amount)
         {
            this.§>2§ = param1.amount;
         }
         this.§]!`§ = param1.animation;
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         if(this.§0!E§.length > 0)
         {
            _loc3_ = this.§5"v§ * 1000 / this.§0!E§.length;
            for each(_loc4_ in this.§0!E§)
            {
               _loc1_.push(_loc4_);
               _loc2_.push(_loc3_);
            }
         }
         return [["1",_loc1_,_loc2_]];
      }
      
      protected function get §%#A§() : int
      {
         if(this.§0!E§)
         {
            return this.§0!E§.length;
         }
         return 0;
      }
      
      protected function § !D§(param1:int) : String
      {
         return this.§0!E§[param1];
      }
      
      private function §^!h§(param1:*) : Array
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
         return this.§5"v§;
      }
      
      public function get minScaleBegin() : Number
      {
         return this.§+"=§;
      }
      
      public function get maxScaleBegin() : Number
      {
         return this.§?"+§;
      }
      
      public function get minScaleEnd() : Number
      {
         return this.§4"M§;
      }
      
      public function get maxScaleEnd() : Number
      {
         return this.§""!§;
      }
      
      public function get minAngle() : Number
      {
         return this.§`"K§;
      }
      
      public function get maxAngle() : Number
      {
         return this.§+Z§;
      }
      
      public function get minAngleVel() : Number
      {
         return this.§7"K§;
      }
      
      public function get maxAngleVel() : Number
      {
         return this.§#!J§;
      }
      
      public function get amount() : Number
      {
         return this.§>2§;
      }
      
      public function get minVel() : Number
      {
         return this.§<#9§;
      }
      
      public function get maxVel() : Number
      {
         return this.§7"y§;
      }
      
      public function get minAngleEmitter() : Number
      {
         return this.§<"%§;
      }
      
      public function get maxAngleEmitter() : Number
      {
         return this.§>"q§;
      }
      
      public function get animation() : String
      {
         return this.§]!`§;
      }
      
      public function get gravityX() : Number
      {
         return this.§6"C§;
      }
      
      public function get gravityY() : Number
      {
         return this.§=!]§;
      }
   }
}
