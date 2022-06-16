package § !w§
{
   import §8§.§,§;
   import §?$9§.§^#h§;
   import §@0§.§%!q§;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §[!D§
   {
       
      
      protected var §8u§:Number;
      
      protected var §!#§:Number;
      
      protected var §9v§:Number;
      
      protected var §6D§:Number;
      
      protected var §6$<§:Number;
      
      protected var §@q§:Number;
      
      protected var §%$"§:Number;
      
      protected var §4"D§:Sprite;
      
      protected var §&n§:§0$2§;
      
      protected var § "p§:Number;
      
      protected var §<!G§:Number;
      
      protected var §[$%§:DisplayObject;
      
      protected var §>!;§:Number;
      
      protected var §#!1§:Number;
      
      protected var §^#5§:Number;
      
      protected var §8"_§:Vector.<§,#5§>;
      
      public function §[!D§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§0$2§, param7:Number)
      {
         super();
         this.§8u§ = param1;
         this.§!#§ = param2;
         this.§&n§ = param6;
         this.§4"D§ = param5;
         this.§[$%§ = param6.getFrame(0);
         this.§4"D§.addChild(this.§[$%§);
         this.§>!;§ = this.§[$%§.width;
         this.§#!1§ = this.§[$%§.height;
         this.§^#5§ = param7;
         this.§#!F§();
         this.§^$2§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§8u§;
      }
      
      public function get y() : Number
      {
         return this.§!#§;
      }
      
      public function get angle() : Number
      {
         return this.§9v§;
      }
      
      public function get speed() : Number
      {
         return this.§6$<§;
      }
      
      public function get §1p§() : Number
      {
         return this.§@q§;
      }
      
      public function get §`!n§() : Number
      {
         return this.§%$"§;
      }
      
      public function get width() : Number
      {
         return this.§>!;§ * §%!q§.§6q§;
      }
      
      public function get height() : Number
      {
         return this.§#!1§ * §%!q§.§6q§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§4"D§;
      }
      
      public function dispose() : void
      {
         if(this.§4"D§)
         {
            this.§4"D§.dispose();
            this.§4"D§ = null;
         }
      }
      
      public function §%#h§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§6$<§ * 1000;
         if(_loc2_ > this.§6D§)
         {
            _loc2_ = this.§6D§;
         }
         return this.§8u§ - this.§@q§ * _loc2_ / 1000;
      }
      
      public function §4#Z§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§6$<§ * 1000;
         if(_loc2_ > this.§6D§)
         {
            _loc2_ = this.§6D§;
         }
         return this.§!#§ - this.§%$"§ * _loc2_ / 1000;
      }
      
      protected function §="j§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§6$<§ * 1000;
         if(_loc2_ > this.§6D§)
         {
            _loc2_ = this.§6D§;
         }
         return this.§6$<§ * _loc2_ / 1000;
      }
      
      public function §#!F§() : void
      {
         if(!this.§8"_§ || this.§8"_§.length > 0)
         {
            this.§8"_§ = new Vector.<§,#5§>();
         }
      }
      
      public function §["W§(param1:§^#h§) : void
      {
         this.§8"_§.push(param1.§;!;§);
      }
      
      public function §%#T§(param1:§^#h§) : Boolean
      {
         return this.§8"_§.indexOf(param1.§;!;§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§^$2§(param1,param2);
      }
      
      protected function §^$2§(param1:Number, param2:Number) : void
      {
         this.§6$<§ = param2;
         this.§9v§ = param1;
         this.§@q§ = Math.cos(this.§9v§) * this.§6$<§;
         this.§%$"§ = Math.sin(this.§9v§) * this.§6$<§;
         this.§6D§ = 0;
         this.§3I§();
      }
      
      public function update(param1:Number) : void
      {
         this.§8u§ += this.§@q§ * param1 / 1000;
         this.§!#§ += this.§%$"§ * param1 / 1000;
         this.§3I§();
         this.§6D§ += param1;
      }
      
      protected function §3I§() : void
      {
         this.§ "p§ = this.§8u§ / §%!q§.§6q§;
         this.§<!G§ = this.§!#§ / §%!q§.§6q§;
         var _loc1_:Number = this.§="j§(this.§>!;§ * §%!q§.§6q§) / §%!q§.§6q§;
         var _loc2_:Number = this.§#!1§;
         this.§[$%§.width = _loc1_ * this.§^#5§;
         this.§[$%§.height = _loc2_ * this.§^#5§;
         this.§[$%§.pivotX = -_loc1_;
         this.§[$%§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§4"D§.visible = true;
         this.§4"D§.rotation = this.§9v§;
         this.§4"D§.x = this.§ "p§;
         this.§4"D§.y = this.§<!G§;
      }
   }
}
