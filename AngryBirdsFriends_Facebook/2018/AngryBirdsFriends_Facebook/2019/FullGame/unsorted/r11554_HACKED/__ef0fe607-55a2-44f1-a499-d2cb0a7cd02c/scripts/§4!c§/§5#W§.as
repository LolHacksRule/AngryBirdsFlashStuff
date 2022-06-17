package §4!c§
{
   import § !D§.§'"u§;
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §-!!§.§1#B§;
   import §1i§.§`#z§;
   import §^"[§.§4!8§;
   
   public class §5#W§
   {
       
      
      protected var §-##§:Number;
      
      protected var §0#[§:Number;
      
      protected var §?+§:Number;
      
      protected var §6O§:Number;
      
      protected var §1!Z§:Number;
      
      protected var §`!_§:Number;
      
      protected var §`H§:Number;
      
      protected var § U§:Sprite;
      
      protected var §"m§:§4!8§;
      
      protected var §-!6§:Number;
      
      protected var §5c§:Number;
      
      protected var §?"%§:DisplayObject;
      
      protected var §6!X§:Number;
      
      protected var §@"K§:Number;
      
      protected var §6z§:Number;
      
      protected var §%"A§:Vector.<§1#B§>;
      
      public function §5#W§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§4!8§, param7:Number)
      {
         super();
         this.§-##§ = param1;
         this.§0#[§ = param2;
         this.§"m§ = param6;
         this.§ U§ = param5;
         this.§?"%§ = param6.getFrame(0);
         this.§ U§.addChild(this.§?"%§);
         this.§6!X§ = this.§?"%§.width;
         this.§@"K§ = this.§?"%§.height;
         this.§6z§ = param7;
         this.§?#4§();
         this.§2"?§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§-##§;
      }
      
      public function get y() : Number
      {
         return this.§0#[§;
      }
      
      public function get angle() : Number
      {
         return this.§?+§;
      }
      
      public function get speed() : Number
      {
         return this.§1!Z§;
      }
      
      public function get §-$3§() : Number
      {
         return this.§`!_§;
      }
      
      public function get §6"q§() : Number
      {
         return this.§`H§;
      }
      
      public function get width() : Number
      {
         return this.§6!X§ * §'"u§.§'#e§;
      }
      
      public function get height() : Number
      {
         return this.§@"K§ * §'"u§.§'#e§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ U§;
      }
      
      public function dispose() : void
      {
         if(this.§ U§)
         {
            this.§ U§.dispose();
            this.§ U§ = null;
         }
      }
      
      public function §@"'§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§1!Z§ * 1000;
         if(_loc2_ > this.§6O§)
         {
            _loc2_ = this.§6O§;
         }
         return this.§-##§ - this.§`!_§ * _loc2_ / 1000;
      }
      
      public function §3!D§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§1!Z§ * 1000;
         if(_loc2_ > this.§6O§)
         {
            _loc2_ = this.§6O§;
         }
         return this.§0#[§ - this.§`H§ * _loc2_ / 1000;
      }
      
      protected function §<s§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§1!Z§ * 1000;
         if(_loc2_ > this.§6O§)
         {
            _loc2_ = this.§6O§;
         }
         return this.§1!Z§ * _loc2_ / 1000;
      }
      
      public function §?#4§() : void
      {
         if(!this.§%"A§ || this.§%"A§.length > 0)
         {
            this.§%"A§ = new Vector.<§1#B§>();
         }
      }
      
      public function §9#$§(param1:§`#z§) : void
      {
         this.§%"A§.push(param1.§@!u§);
      }
      
      public function §7!E§(param1:§`#z§) : Boolean
      {
         return this.§%"A§.indexOf(param1.§@!u§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§2"?§(param1,param2);
      }
      
      protected function §2"?§(param1:Number, param2:Number) : void
      {
         this.§1!Z§ = param2;
         this.§?+§ = param1;
         this.§`!_§ = Math.cos(this.§?+§) * this.§1!Z§;
         this.§`H§ = Math.sin(this.§?+§) * this.§1!Z§;
         this.§6O§ = 0;
         this.§[h§();
      }
      
      public function update(param1:Number) : void
      {
         this.§-##§ += this.§`!_§ * param1 / 1000;
         this.§0#[§ += this.§`H§ * param1 / 1000;
         this.§[h§();
         this.§6O§ += param1;
      }
      
      protected function §[h§() : void
      {
         this.§-!6§ = this.§-##§ / §'"u§.§'#e§;
         this.§5c§ = this.§0#[§ / §'"u§.§'#e§;
         var _loc1_:Number = this.§<s§(this.§6!X§ * §'"u§.§'#e§) / §'"u§.§'#e§;
         var _loc2_:Number = this.§@"K§;
         this.§?"%§.width = _loc1_ * this.§6z§;
         this.§?"%§.height = _loc2_ * this.§6z§;
         this.§?"%§.pivotX = -_loc1_;
         this.§?"%§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§ U§.visible = true;
         this.§ U§.rotation = this.§?+§;
         this.§ U§.x = this.§-!6§;
         this.§ U§.y = this.§5c§;
      }
   }
}
