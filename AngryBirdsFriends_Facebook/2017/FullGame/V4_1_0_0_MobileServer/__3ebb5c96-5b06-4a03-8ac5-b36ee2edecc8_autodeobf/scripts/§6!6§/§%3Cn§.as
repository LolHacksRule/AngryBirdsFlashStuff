package §6!6§
{
   public class §<n§ extends §%#1§
   {
       
      
      protected var §5!p§:Vector.<§`$'§>;
      
      protected var §3W§:Number = 1.0;
      
      protected var §7A§:Number = 1.0;
      
      protected var §1#;§:Number = 1.0;
      
      protected var §`#8§:Number = 1.0;
      
      protected var §&"G§:Number = 0.0;
      
      public function §<n§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Boolean, param14:Boolean, param15:Boolean, param16:Number, param17:Number, param18:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param11,param13,param14,param15,param16,param17,param18);
         this.§5!p§ = new Vector.<§`$'§>();
         this.§3W§ = param7;
         this.§7A§ = param8;
         this.§1#;§ = param9;
         this.§`#8§ = param10;
         this.§&"G§ = param12;
      }
      
      public function get §#C§() : Number
      {
         return this.§3W§;
      }
      
      public function get §=!m§() : Number
      {
         return this.§7A§;
      }
      
      public function get §4#'§() : Number
      {
         return this.§1#;§;
      }
      
      public function get scaleSpeed() : Number
      {
         return this.§`#8§;
      }
      
      public function get velocityY() : Number
      {
         return this.§&"G§;
      }
      
      public function §-d§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Boolean, param10:Array) : void
      {
         var _loc11_:§`$'§;
         (_loc11_ = new §`$'§(param10)).count = param1;
         _loc11_.x = param2;
         _loc11_.y = param3;
         _loc11_.w = param4;
         _loc11_.h = param5;
         _loc11_.velX = param6;
         _loc11_.velY = param7;
         _loc11_.variation = param8;
         _loc11_.randomRotation = param9;
         this.§5!p§.push(_loc11_);
      }
   }
}
