package §6!d§
{
   import §#w§.§="M§;
   import §52§.§#!,§;
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §@"§.§`"W§;
   import §[#a§.§<"H§;
   
   public class §>#K§
   {
       
      
      protected var §+!5§:Number;
      
      protected var §'! §:Number;
      
      protected var §2#!§:Number;
      
      protected var §=U§:Number;
      
      protected var §%Y§:Number;
      
      protected var §="W§:Number;
      
      protected var §7<§:Number;
      
      protected var §]Y§:Sprite;
      
      protected var §"!c§:§`"W§;
      
      protected var §9!M§:Number;
      
      protected var §8"S§:Number;
      
      protected var §2d§:DisplayObject;
      
      protected var §"">§:Number;
      
      protected var §1!Z§:Number;
      
      protected var §]"?§:Number;
      
      protected var §[#f§:Vector.<§<"H§>;
      
      public function §>#K§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§`"W§, param7:Number)
      {
         super();
         this.§+!5§ = param1;
         this.§'! § = param2;
         this.§"!c§ = param6;
         this.§]Y§ = param5;
         this.§2d§ = param6.getFrame(0);
         this.§]Y§.addChild(this.§2d§);
         this.§"">§ = this.§2d§.width;
         this.§1!Z§ = this.§2d§.height;
         this.§]"?§ = param7;
         this.§4!V§();
         this.§-#e§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§+!5§;
      }
      
      public function get y() : Number
      {
         return this.§'! §;
      }
      
      public function get angle() : Number
      {
         return this.§2#!§;
      }
      
      public function get speed() : Number
      {
         return this.§%Y§;
      }
      
      public function get §"'§() : Number
      {
         return this.§="W§;
      }
      
      public function get §9#,§() : Number
      {
         return this.§7<§;
      }
      
      public function get width() : Number
      {
         return this.§"">§ * §#!,§.§?$#§;
      }
      
      public function get height() : Number
      {
         return this.§1!Z§ * §#!,§.§?$#§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]Y§;
      }
      
      public function dispose() : void
      {
         if(this.§]Y§)
         {
            this.§]Y§.dispose();
            this.§]Y§ = null;
         }
      }
      
      public function §=!y§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§%Y§ * 1000;
         if(_loc2_ > this.§=U§)
         {
            _loc2_ = this.§=U§;
         }
         return this.§+!5§ - this.§="W§ * _loc2_ / 1000;
      }
      
      public function §[#X§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§%Y§ * 1000;
         if(_loc2_ > this.§=U§)
         {
            _loc2_ = this.§=U§;
         }
         return this.§'! § - this.§7<§ * _loc2_ / 1000;
      }
      
      protected function §;!0§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§%Y§ * 1000;
         if(_loc2_ > this.§=U§)
         {
            _loc2_ = this.§=U§;
         }
         return this.§%Y§ * _loc2_ / 1000;
      }
      
      public function §4!V§() : void
      {
         if(!this.§[#f§ || this.§[#f§.length > 0)
         {
            this.§[#f§ = new Vector.<§<"H§>();
         }
      }
      
      public function §;t§(param1:§="M§) : void
      {
         this.§[#f§.push(param1.§%"W§);
      }
      
      public function §3!8§(param1:§="M§) : Boolean
      {
         return this.§[#f§.indexOf(param1.§%"W§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§-#e§(param1,param2);
      }
      
      protected function §-#e§(param1:Number, param2:Number) : void
      {
         this.§%Y§ = param2;
         this.§2#!§ = param1;
         this.§="W§ = Math.cos(this.§2#!§) * this.§%Y§;
         this.§7<§ = Math.sin(this.§2#!§) * this.§%Y§;
         this.§=U§ = 0;
         this.§&$5§();
      }
      
      public function update(param1:Number) : void
      {
         this.§+!5§ += this.§="W§ * param1 / 1000;
         this.§'! § += this.§7<§ * param1 / 1000;
         this.§&$5§();
         this.§=U§ += param1;
      }
      
      protected function §&$5§() : void
      {
         this.§9!M§ = this.§+!5§ / §#!,§.§?$#§;
         this.§8"S§ = this.§'! § / §#!,§.§?$#§;
         var _loc1_:Number = this.§;!0§(this.§"">§ * §#!,§.§?$#§) / §#!,§.§?$#§;
         var _loc2_:Number = this.§1!Z§;
         this.§2d§.width = _loc1_ * this.§]"?§;
         this.§2d§.height = _loc2_ * this.§]"?§;
         this.§2d§.pivotX = -_loc1_;
         this.§2d§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§]Y§.visible = true;
         this.§]Y§.rotation = this.§2#!§;
         this.§]Y§.x = this.§9!M§;
         this.§]Y§.y = this.§8"S§;
      }
   }
}
