package §8"-§
{
   import §!!k§.§1!^§;
   import §!r§.§?!x§;
   import §"§.§;!E§;
   import §,"K§.§3l§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §;[§
   {
       
      
      protected var §0U§:Number;
      
      protected var §3"[§:Number;
      
      protected var §^]§:Number;
      
      protected var §@y§:Number;
      
      protected var §&"'§:Number;
      
      protected var §;"g§:Number;
      
      protected var §"!c§:Number;
      
      protected var §0v§:Sprite;
      
      protected var §#!9§:§1!^§;
      
      protected var §#6§:Number;
      
      protected var §8"]§:Number;
      
      protected var §2!^§:DisplayObject;
      
      protected var §=^§:Number;
      
      protected var §,"'§:Number;
      
      protected var §#"5§:Number;
      
      protected var §2"u§:Vector.<§?!x§>;
      
      public function §;[§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§1!^§, param7:Number)
      {
         super();
         this.§0U§ = param1;
         this.§3"[§ = param2;
         this.§#!9§ = param6;
         this.§0v§ = param5;
         this.§2!^§ = param6.getFrame(0);
         this.§0v§.addChild(this.§2!^§);
         this.§=^§ = this.§2!^§.width;
         this.§,"'§ = this.§2!^§.height;
         this.§#"5§ = param7;
         this.§#!<§();
         this.§1"8§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§0U§;
      }
      
      public function get y() : Number
      {
         return this.§3"[§;
      }
      
      public function get angle() : Number
      {
         return this.§^]§;
      }
      
      public function get speed() : Number
      {
         return this.§&"'§;
      }
      
      public function get §<#"§() : Number
      {
         return this.§;"g§;
      }
      
      public function get §;!L§() : Number
      {
         return this.§"!c§;
      }
      
      public function get width() : Number
      {
         return this.§=^§ * §;!E§.§0"?§;
      }
      
      public function get height() : Number
      {
         return this.§,"'§ * §;!E§.§0"?§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0v§;
      }
      
      public function dispose() : void
      {
         if(this.§0v§)
         {
            this.§0v§.dispose();
            this.§0v§ = null;
         }
      }
      
      public function §;"w§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§&"'§ * 1000;
         if(_loc2_ > this.§@y§)
         {
            _loc2_ = this.§@y§;
         }
         return this.§0U§ - this.§;"g§ * _loc2_ / 1000;
      }
      
      public function §9! §(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§&"'§ * 1000;
         if(_loc2_ > this.§@y§)
         {
            _loc2_ = this.§@y§;
         }
         return this.§3"[§ - this.§"!c§ * _loc2_ / 1000;
      }
      
      protected function §5"Z§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§&"'§ * 1000;
         if(_loc2_ > this.§@y§)
         {
            _loc2_ = this.§@y§;
         }
         return this.§&"'§ * _loc2_ / 1000;
      }
      
      public function §#!<§() : void
      {
         if(!this.§2"u§ || this.§2"u§.length > 0)
         {
            this.§2"u§ = new Vector.<§?!x§>();
         }
      }
      
      public function §8!u§(param1:§3l§) : void
      {
         this.§2"u§.push(param1.§-"G§);
      }
      
      public function §7">§(param1:§3l§) : Boolean
      {
         return this.§2"u§.indexOf(param1.§-"G§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§1"8§(param1,param2);
      }
      
      protected function §1"8§(param1:Number, param2:Number) : void
      {
         this.§&"'§ = param2;
         this.§^]§ = param1;
         this.§;"g§ = Math.cos(this.§^]§) * this.§&"'§;
         this.§"!c§ = Math.sin(this.§^]§) * this.§&"'§;
         this.§@y§ = 0;
         this.§!!z§();
      }
      
      public function update(param1:Number) : void
      {
         this.§0U§ += this.§;"g§ * param1 / 1000;
         this.§3"[§ += this.§"!c§ * param1 / 1000;
         this.§!!z§();
         this.§@y§ += param1;
      }
      
      protected function §!!z§() : void
      {
         this.§#6§ = this.§0U§ / §;!E§.§0"?§;
         this.§8"]§ = this.§3"[§ / §;!E§.§0"?§;
         var _loc1_:Number = this.§5"Z§(this.§=^§ * §;!E§.§0"?§) / §;!E§.§0"?§;
         var _loc2_:Number = this.§,"'§;
         this.§2!^§.width = _loc1_ * this.§#"5§;
         this.§2!^§.height = _loc2_ * this.§#"5§;
         this.§2!^§.pivotX = -_loc1_;
         this.§2!^§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§0v§.visible = true;
         this.§0v§.rotation = this.§^]§;
         this.§0v§.x = this.§#6§;
         this.§0v§.y = this.§8"]§;
      }
   }
}
