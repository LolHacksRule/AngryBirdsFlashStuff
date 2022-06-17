package §;"8§
{
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §4"Y§.§6$A§;
   import §9#M§.§,`§;
   import §?$#§.§<d§;
   import §^0§.§4!t§;
   
   public class §6C§
   {
       
      
      protected var §0k§:Number;
      
      protected var §@_§:Number;
      
      protected var §8"a§:Number;
      
      protected var §%!c§:Number;
      
      protected var §+#9§:Number;
      
      protected var §55§:Number;
      
      protected var §3$8§:Number;
      
      protected var §]#+§:Sprite;
      
      protected var §&"J§:§,`§;
      
      protected var §=#§:Number;
      
      protected var §9"W§:Number;
      
      protected var §6" §:DisplayObject;
      
      protected var §,$>§:Number;
      
      protected var §`V§:Number;
      
      protected var §6#q§:Number;
      
      protected var §#!d§:Vector.<§4!t§>;
      
      public function §6C§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§,`§, param7:Number)
      {
         super();
         this.§0k§ = param1;
         this.§@_§ = param2;
         this.§&"J§ = param6;
         this.§]#+§ = param5;
         this.§6" § = param6.getFrame(0);
         this.§]#+§.addChild(this.§6" §);
         this.§,$>§ = this.§6" §.width;
         this.§`V§ = this.§6" §.height;
         this.§6#q§ = param7;
         this.§'Y§();
         this.§&#Z§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§0k§;
      }
      
      public function get y() : Number
      {
         return this.§@_§;
      }
      
      public function get angle() : Number
      {
         return this.§8"a§;
      }
      
      public function get speed() : Number
      {
         return this.§+#9§;
      }
      
      public function get §58§() : Number
      {
         return this.§55§;
      }
      
      public function get §8!2§() : Number
      {
         return this.§3$8§;
      }
      
      public function get width() : Number
      {
         return this.§,$>§ * §<d§.§6@§;
      }
      
      public function get height() : Number
      {
         return this.§`V§ * §<d§.§6@§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]#+§;
      }
      
      public function dispose() : void
      {
         if(this.§]#+§)
         {
            this.§]#+§.dispose();
            this.§]#+§ = null;
         }
      }
      
      public function §>! §(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§+#9§ * 1000;
         if(_loc2_ > this.§%!c§)
         {
            _loc2_ = this.§%!c§;
         }
         return this.§0k§ - this.§55§ * _loc2_ / 1000;
      }
      
      public function §4"q§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§+#9§ * 1000;
         if(_loc2_ > this.§%!c§)
         {
            _loc2_ = this.§%!c§;
         }
         return this.§@_§ - this.§3$8§ * _loc2_ / 1000;
      }
      
      protected function §-$§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§+#9§ * 1000;
         if(_loc2_ > this.§%!c§)
         {
            _loc2_ = this.§%!c§;
         }
         return this.§+#9§ * _loc2_ / 1000;
      }
      
      public function §'Y§() : void
      {
         if(!this.§#!d§ || this.§#!d§.length > 0)
         {
            this.§#!d§ = new Vector.<§4!t§>();
         }
      }
      
      public function §'z§(param1:§6$A§) : void
      {
         this.§#!d§.push(param1.§5!]§);
      }
      
      public function §^#g§(param1:§6$A§) : Boolean
      {
         return this.§#!d§.indexOf(param1.§5!]§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§&#Z§(param1,param2);
      }
      
      protected function §&#Z§(param1:Number, param2:Number) : void
      {
         this.§+#9§ = param2;
         this.§8"a§ = param1;
         this.§55§ = Math.cos(this.§8"a§) * this.§+#9§;
         this.§3$8§ = Math.sin(this.§8"a§) * this.§+#9§;
         this.§%!c§ = 0;
         this.§'$@§();
      }
      
      public function update(param1:Number) : void
      {
         this.§0k§ += this.§55§ * param1 / 1000;
         this.§@_§ += this.§3$8§ * param1 / 1000;
         this.§'$@§();
         this.§%!c§ += param1;
      }
      
      protected function §'$@§() : void
      {
         this.§=#§ = this.§0k§ / §<d§.§6@§;
         this.§9"W§ = this.§@_§ / §<d§.§6@§;
         var _loc1_:Number = this.§-$§(this.§,$>§ * §<d§.§6@§) / §<d§.§6@§;
         var _loc2_:Number = this.§`V§;
         this.§6" §.width = _loc1_ * this.§6#q§;
         this.§6" §.height = _loc2_ * this.§6#q§;
         this.§6" §.pivotX = -_loc1_;
         this.§6" §.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§]#+§.visible = true;
         this.§]#+§.rotation = this.§8"a§;
         this.§]#+§.x = this.§=#§;
         this.§]#+§.y = this.§9"W§;
      }
   }
}
