package §6"u§
{
   import §#g§.§8§;
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §2"u§.§#!u§;
   import §7"T§.§7b§;
   import §;!=§.§'#N§;
   
   public class §3#g§
   {
       
      
      protected var §&$'§:Number;
      
      protected var §<#-§:Number;
      
      protected var §"$#§:Number;
      
      protected var §51§:Number;
      
      protected var §#"2§:Number;
      
      protected var §1"m§:Number;
      
      protected var §6#q§:Number;
      
      protected var §&"h§:Sprite;
      
      protected var §#"T§:§7b§;
      
      protected var §,n§:Number;
      
      protected var §%""§:Number;
      
      protected var §3#F§:DisplayObject;
      
      protected var §[!q§:Number;
      
      protected var §>!z§:Number;
      
      protected var §#!1§:Number;
      
      protected var §!w§:Vector.<§'#N§>;
      
      public function §3#g§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§7b§, param7:Number)
      {
         super();
         this.§&$'§ = param1;
         this.§<#-§ = param2;
         this.§#"T§ = param6;
         this.§&"h§ = param5;
         this.§3#F§ = param6.getFrame(0);
         this.§&"h§.addChild(this.§3#F§);
         this.§[!q§ = this.§3#F§.width;
         this.§>!z§ = this.§3#F§.height;
         this.§#!1§ = param7;
         this.§`$0§();
         this.§%!?§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§&$'§;
      }
      
      public function get y() : Number
      {
         return this.§<#-§;
      }
      
      public function get angle() : Number
      {
         return this.§"$#§;
      }
      
      public function get speed() : Number
      {
         return this.§#"2§;
      }
      
      public function get §6#&§() : Number
      {
         return this.§1"m§;
      }
      
      public function get §;!^§() : Number
      {
         return this.§6#q§;
      }
      
      public function get width() : Number
      {
         return this.§[!q§ * §8#3§.§2K§;
      }
      
      public function get height() : Number
      {
         return this.§>!z§ * §8#3§.§2K§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&"h§;
      }
      
      public function dispose() : void
      {
         if(this.§&"h§)
         {
            this.§&"h§.dispose();
            this.§&"h§ = null;
         }
      }
      
      public function §`@§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§#"2§ * 1000;
         if(_loc2_ > this.§51§)
         {
            _loc2_ = this.§51§;
         }
         return this.§&$'§ - this.§1"m§ * _loc2_ / 1000;
      }
      
      public function §3#V§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§#"2§ * 1000;
         if(_loc2_ > this.§51§)
         {
            _loc2_ = this.§51§;
         }
         return this.§<#-§ - this.§6#q§ * _loc2_ / 1000;
      }
      
      protected function §-#U§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§#"2§ * 1000;
         if(_loc2_ > this.§51§)
         {
            _loc2_ = this.§51§;
         }
         return this.§#"2§ * _loc2_ / 1000;
      }
      
      public function §`$0§() : void
      {
         if(!this.§!w§ || this.§!w§.length > 0)
         {
            this.§!w§ = new Vector.<§'#N§>();
         }
      }
      
      public function §<"c§(param1:§#!u§) : void
      {
         this.§!w§.push(param1.§"L§);
      }
      
      public function §5"W§(param1:§#!u§) : Boolean
      {
         return this.§!w§.indexOf(param1.§"L§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§%!?§(param1,param2);
      }
      
      protected function §%!?§(param1:Number, param2:Number) : void
      {
         this.§#"2§ = param2;
         this.§"$#§ = param1;
         this.§1"m§ = Math.cos(this.§"$#§) * this.§#"2§;
         this.§6#q§ = Math.sin(this.§"$#§) * this.§#"2§;
         this.§51§ = 0;
         this.§;!R§();
      }
      
      public function update(param1:Number) : void
      {
         this.§&$'§ += this.§1"m§ * param1 / 1000;
         this.§<#-§ += this.§6#q§ * param1 / 1000;
         this.§;!R§();
         this.§51§ += param1;
      }
      
      protected function §;!R§() : void
      {
         this.§,n§ = this.§&$'§ / §8#3§.§2K§;
         this.§%""§ = this.§<#-§ / §8#3§.§2K§;
         var _loc1_:Number = this.§-#U§(this.§[!q§ * §8#3§.§2K§) / §8#3§.§2K§;
         var _loc2_:Number = this.§>!z§;
         this.§3#F§.width = _loc1_ * this.§#!1§;
         this.§3#F§.height = _loc2_ * this.§#!1§;
         this.§3#F§.pivotX = -_loc1_;
         this.§3#F§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§&"h§.visible = true;
         this.§&"h§.rotation = this.§"$#§;
         this.§&"h§.x = this.§,n§;
         this.§&"h§.y = this.§%""§;
      }
   }
}
