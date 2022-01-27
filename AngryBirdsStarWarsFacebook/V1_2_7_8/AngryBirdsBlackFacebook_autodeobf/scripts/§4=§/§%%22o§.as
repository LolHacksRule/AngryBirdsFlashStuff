package §4=§
{
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §3"$§.§[a§;
   import §5! §.§]$§;
   import §5!q§.§3"X§;
   import §6"R§.§!z§;
   
   public class §%"o§
   {
       
      
      protected var §]!_§:Number;
      
      protected var §#j§:Number;
      
      protected var §`"j§:Number;
      
      protected var §9!Z§:Number;
      
      protected var §`w§:Number;
      
      protected var §@O§:Number;
      
      protected var §3"+§:Number;
      
      protected var § "6§:Sprite;
      
      protected var §3-§:§[a§;
      
      protected var §;S§:Number;
      
      protected var §;!0§:Number;
      
      protected var §>$§:DisplayObject;
      
      protected var §<!4§:Number;
      
      protected var §&"+§:Number;
      
      protected var §"r§:Number;
      
      protected var §&"j§:Vector.<§!z§>;
      
      public function §%"o§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§[a§, param7:Number)
      {
         super();
         this.§]!_§ = param1;
         this.§#j§ = param2;
         this.§3-§ = param6;
         this.§ "6§ = param5;
         this.§>$§ = param6.getFrame(0);
         this.§ "6§.addChild(this.§>$§);
         this.§<!4§ = this.§>$§.width;
         this.§&"+§ = this.§>$§.height;
         this.§"r§ = param7;
         this.§6]§();
         this.§-#4§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§]!_§;
      }
      
      public function get y() : Number
      {
         return this.§#j§;
      }
      
      public function get angle() : Number
      {
         return this.§`"j§;
      }
      
      public function get speed() : Number
      {
         return this.§`w§;
      }
      
      public function get §""F§() : Number
      {
         return this.§@O§;
      }
      
      public function get §<F§() : Number
      {
         return this.§3"+§;
      }
      
      public function get width() : Number
      {
         return this.§<!4§ * §3"X§.§;"l§;
      }
      
      public function get height() : Number
      {
         return this.§&"+§ * §3"X§.§;"l§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ "6§;
      }
      
      public function dispose() : void
      {
         if(this.§ "6§)
         {
            this.§ "6§.dispose();
            this.§ "6§ = null;
         }
      }
      
      public function §;b§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§`w§ * 1000;
         if(_loc2_ > this.§9!Z§)
         {
            _loc2_ = this.§9!Z§;
         }
         return this.§]!_§ - this.§@O§ * _loc2_ / 1000;
      }
      
      public function §1!'§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§`w§ * 1000;
         if(_loc2_ > this.§9!Z§)
         {
            _loc2_ = this.§9!Z§;
         }
         return this.§#j§ - this.§3"+§ * _loc2_ / 1000;
      }
      
      protected function §&"c§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§`w§ * 1000;
         if(_loc2_ > this.§9!Z§)
         {
            _loc2_ = this.§9!Z§;
         }
         return this.§`w§ * _loc2_ / 1000;
      }
      
      public function §6]§() : void
      {
         if(!this.§&"j§ || this.§&"j§.length > 0)
         {
            this.§&"j§ = new Vector.<§!z§>();
         }
      }
      
      public function §?#3§(param1:§]$§) : void
      {
         this.§&"j§.push(param1.§^=§);
      }
      
      public function §]!Y§(param1:§]$§) : Boolean
      {
         return this.§&"j§.indexOf(param1.§^=§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§-#4§(param1,param2);
      }
      
      protected function §-#4§(param1:Number, param2:Number) : void
      {
         this.§`w§ = param2;
         this.§`"j§ = param1;
         this.§@O§ = Math.cos(this.§`"j§) * this.§`w§;
         this.§3"+§ = Math.sin(this.§`"j§) * this.§`w§;
         this.§9!Z§ = 0;
         this.§@";§();
      }
      
      public function update(param1:Number) : void
      {
         this.§]!_§ += this.§@O§ * param1 / 1000;
         this.§#j§ += this.§3"+§ * param1 / 1000;
         this.§@";§();
         this.§9!Z§ += param1;
      }
      
      protected function §@";§() : void
      {
         this.§;S§ = this.§]!_§ / §3"X§.§;"l§;
         this.§;!0§ = this.§#j§ / §3"X§.§;"l§;
         var _loc1_:Number = this.§&"c§(this.§<!4§ * §3"X§.§;"l§) / §3"X§.§;"l§;
         var _loc2_:Number = this.§&"+§;
         this.§>$§.width = _loc1_ * this.§"r§;
         this.§>$§.height = _loc2_ * this.§"r§;
         this.§>$§.pivotX = -_loc1_;
         this.§>$§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§ "6§.visible = true;
         this.§ "6§.rotation = this.§`"j§;
         this.§ "6§.x = this.§;S§;
         this.§ "6§.y = this.§;!0§;
      }
   }
}
