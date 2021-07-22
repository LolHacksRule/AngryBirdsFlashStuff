package §?Y§
{
   import §'G§.§;D§;
   import §6!3§.§!y§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §9X§.§0!I§;
   import §>2§.§!6§;
   
   public class §>!&§
   {
       
      
      protected var §["d§:Number;
      
      protected var §%#z§:Number;
      
      protected var §9"c§:Number;
      
      protected var §+#a§:Number;
      
      protected var §4"W§:Number;
      
      protected var §@@§:Number;
      
      protected var §`#v§:Number;
      
      protected var §'#f§:Sprite;
      
      protected var §&#N§:§;D§;
      
      protected var §+!w§:Number;
      
      protected var §4!0§:Number;
      
      protected var §,#_§:DisplayObject;
      
      protected var §%n§:Number;
      
      protected var §`!;§:Number;
      
      protected var §5>§:Number;
      
      protected var §1$5§:Vector.<§!y§>;
      
      public function §>!&§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§;D§, param7:Number)
      {
         super();
         this.§["d§ = param1;
         this.§%#z§ = param2;
         this.§&#N§ = param6;
         this.§'#f§ = param5;
         this.§,#_§ = param6.getFrame(0);
         this.§'#f§.addChild(this.§,#_§);
         this.§%n§ = this.§,#_§.width;
         this.§`!;§ = this.§,#_§.height;
         this.§5>§ = param7;
         this.§ "$§();
         this.§+!,§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§["d§;
      }
      
      public function get y() : Number
      {
         return this.§%#z§;
      }
      
      public function get angle() : Number
      {
         return this.§9"c§;
      }
      
      public function get speed() : Number
      {
         return this.§4"W§;
      }
      
      public function get §4!?§() : Number
      {
         return this.§@@§;
      }
      
      public function get §^"8§() : Number
      {
         return this.§`#v§;
      }
      
      public function get width() : Number
      {
         return this.§%n§ * §!6§.§[#v§;
      }
      
      public function get height() : Number
      {
         return this.§`!;§ * §!6§.§[#v§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'#f§;
      }
      
      public function dispose() : void
      {
         if(this.§'#f§)
         {
            this.§'#f§.dispose();
            this.§'#f§ = null;
         }
      }
      
      public function §@!E§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§4"W§ * 1000;
         if(_loc2_ > this.§+#a§)
         {
            _loc2_ = this.§+#a§;
         }
         return this.§["d§ - this.§@@§ * _loc2_ / 1000;
      }
      
      public function §5z§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§4"W§ * 1000;
         if(_loc2_ > this.§+#a§)
         {
            _loc2_ = this.§+#a§;
         }
         return this.§%#z§ - this.§`#v§ * _loc2_ / 1000;
      }
      
      protected function §0!"§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§4"W§ * 1000;
         if(_loc2_ > this.§+#a§)
         {
            _loc2_ = this.§+#a§;
         }
         return this.§4"W§ * _loc2_ / 1000;
      }
      
      public function § "$§() : void
      {
         if(!this.§1$5§ || this.§1$5§.length > 0)
         {
            this.§1$5§ = new Vector.<§!y§>();
         }
      }
      
      public function §;!i§(param1:§0!I§) : void
      {
         this.§1$5§.push(param1.§##<§);
      }
      
      public function §>"c§(param1:§0!I§) : Boolean
      {
         return this.§1$5§.indexOf(param1.§##<§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§+!,§(param1,param2);
      }
      
      protected function §+!,§(param1:Number, param2:Number) : void
      {
         this.§4"W§ = param2;
         this.§9"c§ = param1;
         this.§@@§ = Math.cos(this.§9"c§) * this.§4"W§;
         this.§`#v§ = Math.sin(this.§9"c§) * this.§4"W§;
         this.§+#a§ = 0;
         this.§2m§();
      }
      
      public function update(param1:Number) : void
      {
         this.§["d§ += this.§@@§ * param1 / 1000;
         this.§%#z§ += this.§`#v§ * param1 / 1000;
         this.§2m§();
         this.§+#a§ += param1;
      }
      
      protected function §2m§() : void
      {
         this.§+!w§ = this.§["d§ / §!6§.§[#v§;
         this.§4!0§ = this.§%#z§ / §!6§.§[#v§;
         var _loc1_:Number = this.§0!"§(this.§%n§ * §!6§.§[#v§) / §!6§.§[#v§;
         var _loc2_:Number = this.§`!;§;
         this.§,#_§.width = _loc1_ * this.§5>§;
         this.§,#_§.height = _loc2_ * this.§5>§;
         this.§,#_§.pivotX = -_loc1_;
         this.§,#_§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§'#f§.visible = true;
         this.§'#f§.rotation = this.§9"c§;
         this.§'#f§.x = this.§+!w§;
         this.§'#f§.y = this.§4!0§;
      }
   }
}
