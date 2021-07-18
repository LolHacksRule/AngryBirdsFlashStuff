package §@"2§
{
   import §'4§.§^g§;
   import §4&§.§#r§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §@!U§.§18§;
   import §]">§.§<!=§;
   
   public class §8!M§
   {
       
      
      protected var §""4§:Number;
      
      protected var §%W§:Number;
      
      protected var §"X§:Number;
      
      protected var §<!M§:Number;
      
      protected var §^§:Number;
      
      protected var §3>§:Number;
      
      protected var §5@§:Number;
      
      protected var §]!$§:Sprite;
      
      protected var §]!k§:§#r§;
      
      protected var §+!?§:Number;
      
      protected var §4J§:Number;
      
      protected var §]"E§:DisplayObject;
      
      protected var §?h§:Number;
      
      protected var §8`§:Number;
      
      protected var §=T§:Number;
      
      protected var §<j§:Vector.<§<!=§>;
      
      public function §8!M§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§#r§, param7:Number)
      {
         super();
         this.§""4§ = param1;
         this.§%W§ = param2;
         this.§]!k§ = param6;
         this.§]!$§ = param5;
         this.§]"E§ = param6.getFrame(0);
         this.§]!$§.addChild(this.§]"E§);
         this.§?h§ = this.§]"E§.width;
         this.§8`§ = this.§]"E§.height;
         this.§=T§ = param7;
         this.§`! §();
         this.§'<§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function get angle() : Number
      {
         return this.§"X§;
      }
      
      public function get speed() : Number
      {
         return this.§^§;
      }
      
      public function get §""&§() : Number
      {
         return this.§3>§;
      }
      
      public function get §@6§() : Number
      {
         return this.§5@§;
      }
      
      public function get width() : Number
      {
         return this.§?h§ * §^g§.§5!-§;
      }
      
      public function get height() : Number
      {
         return this.§8`§ * §^g§.§5!-§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!$§;
      }
      
      public function dispose() : void
      {
         if(this.§]!$§)
         {
            this.§]!$§.dispose();
            this.§]!$§ = null;
         }
      }
      
      public function §+!I§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§^§ * 1000;
         if(_loc2_ > this.§<!M§)
         {
            _loc2_ = this.§<!M§;
         }
         return this.§""4§ - this.§3>§ * _loc2_ / 1000;
      }
      
      public function §'!#§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§^§ * 1000;
         if(_loc2_ > this.§<!M§)
         {
            _loc2_ = this.§<!M§;
         }
         return this.§%W§ - this.§5@§ * _loc2_ / 1000;
      }
      
      protected function §8!3§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§^§ * 1000;
         if(_loc2_ > this.§<!M§)
         {
            _loc2_ = this.§<!M§;
         }
         return this.§^§ * _loc2_ / 1000;
      }
      
      public function §`! §() : void
      {
         if(!this.§<j§ || this.§<j§.length > 0)
         {
            this.§<j§ = new Vector.<§<!=§>();
         }
      }
      
      public function §'!§(param1:§18§) : void
      {
         this.§<j§.push(param1.§,;§);
      }
      
      public function §#X§(param1:§18§) : Boolean
      {
         return this.§<j§.indexOf(param1.§,;§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§'<§(param1,param2);
      }
      
      protected function §'<§(param1:Number, param2:Number) : void
      {
         this.§^§ = param2;
         this.§"X§ = param1;
         this.§3>§ = Math.cos(this.§"X§) * this.§^§;
         this.§5@§ = Math.sin(this.§"X§) * this.§^§;
         this.§<!M§ = 0;
         this.§@!0§();
      }
      
      public function update(param1:Number) : void
      {
         this.§""4§ += this.§3>§ * param1 / 1000;
         this.§%W§ += this.§5@§ * param1 / 1000;
         this.§@!0§();
         this.§<!M§ += param1;
      }
      
      protected function §@!0§() : void
      {
         this.§+!?§ = this.§""4§ / §^g§.§5!-§;
         this.§4J§ = this.§%W§ / §^g§.§5!-§;
         var _loc1_:Number = this.§8!3§(this.§?h§ * §^g§.§5!-§) / §^g§.§5!-§;
         var _loc2_:Number = this.§8`§;
         this.§]"E§.width = _loc1_ * this.§=T§;
         this.§]"E§.height = _loc2_ * this.§=T§;
         this.§]"E§.pivotX = -_loc1_;
         this.§]"E§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§]!$§.visible = true;
         this.§]!$§.rotation = this.§"X§;
         this.§]!$§.x = this.§+!?§;
         this.§]!$§.y = this.§4J§;
      }
   }
}
