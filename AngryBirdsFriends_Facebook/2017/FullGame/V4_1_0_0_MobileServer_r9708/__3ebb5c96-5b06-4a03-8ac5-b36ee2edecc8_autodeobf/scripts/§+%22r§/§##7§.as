package §+"r§
{
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §7!j§.§8#B§;
   import §<#r§.§4$5§;
   import §>!5§.§#-§;
   
   public class §##7§
   {
       
      
      protected var §?!l§:Number;
      
      protected var §`"T§:Number;
      
      protected var §;"A§:Number;
      
      protected var §8#2§:Number;
      
      protected var §+!,§:Number;
      
      protected var §6! §:Number;
      
      protected var §^#@§:Number;
      
      protected var §'$&§:Sprite;
      
      protected var § @§:§8#B§;
      
      protected var §,x§:Number;
      
      protected var §7!L§:Number;
      
      protected var §9"s§:DisplayObject;
      
      protected var §5#I§:Number;
      
      protected var §?J§:Number;
      
      protected var § "A§:Number;
      
      protected var §!2§:Vector.<§#-§>;
      
      public function §##7§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§8#B§, param7:Number)
      {
         super();
         this.§?!l§ = param1;
         this.§`"T§ = param2;
         this.§ @§ = param6;
         this.§'$&§ = param5;
         this.§9"s§ = param6.getFrame(0);
         this.§'$&§.addChild(this.§9"s§);
         this.§5#I§ = this.§9"s§.width;
         this.§?J§ = this.§9"s§.height;
         this.§ "A§ = param7;
         this.§>!W§();
         this.§]E§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§?!l§;
      }
      
      public function get y() : Number
      {
         return this.§`"T§;
      }
      
      public function get angle() : Number
      {
         return this.§;"A§;
      }
      
      public function get speed() : Number
      {
         return this.§+!,§;
      }
      
      public function get §-# §() : Number
      {
         return this.§6! §;
      }
      
      public function get §%A§() : Number
      {
         return this.§^#@§;
      }
      
      public function get width() : Number
      {
         return this.§5#I§ * §!!S§.§,"3§;
      }
      
      public function get height() : Number
      {
         return this.§?J§ * §!!S§.§,"3§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'$&§;
      }
      
      public function dispose() : void
      {
         if(this.§'$&§)
         {
            this.§'$&§.dispose();
            this.§'$&§ = null;
         }
      }
      
      public function §;!,§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§+!,§ * 1000;
         if(_loc2_ > this.§8#2§)
         {
            _loc2_ = this.§8#2§;
         }
         return this.§?!l§ - this.§6! § * _loc2_ / 1000;
      }
      
      public function §,#%§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§+!,§ * 1000;
         if(_loc2_ > this.§8#2§)
         {
            _loc2_ = this.§8#2§;
         }
         return this.§`"T§ - this.§^#@§ * _loc2_ / 1000;
      }
      
      protected function §-!4§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§+!,§ * 1000;
         if(_loc2_ > this.§8#2§)
         {
            _loc2_ = this.§8#2§;
         }
         return this.§+!,§ * _loc2_ / 1000;
      }
      
      public function §>!W§() : void
      {
         if(!this.§!2§ || this.§!2§.length > 0)
         {
            this.§!2§ = new Vector.<§#-§>();
         }
      }
      
      public function §^!t§(param1:§4$5§) : void
      {
         this.§!2§.push(param1.§7n§);
      }
      
      public function §;"]§(param1:§4$5§) : Boolean
      {
         return this.§!2§.indexOf(param1.§7n§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§]E§(param1,param2);
      }
      
      protected function §]E§(param1:Number, param2:Number) : void
      {
         this.§+!,§ = param2;
         this.§;"A§ = param1;
         this.§6! § = Math.cos(this.§;"A§) * this.§+!,§;
         this.§^#@§ = Math.sin(this.§;"A§) * this.§+!,§;
         this.§8#2§ = 0;
         this.§=#8§();
      }
      
      public function update(param1:Number) : void
      {
         this.§?!l§ += this.§6! § * param1 / 1000;
         this.§`"T§ += this.§^#@§ * param1 / 1000;
         this.§=#8§();
         this.§8#2§ += param1;
      }
      
      protected function §=#8§() : void
      {
         this.§,x§ = this.§?!l§ / §!!S§.§,"3§;
         this.§7!L§ = this.§`"T§ / §!!S§.§,"3§;
         var _loc1_:Number = this.§-!4§(this.§5#I§ * §!!S§.§,"3§) / §!!S§.§,"3§;
         var _loc2_:Number = this.§?J§;
         this.§9"s§.width = _loc1_ * this.§ "A§;
         this.§9"s§.height = _loc2_ * this.§ "A§;
         this.§9"s§.pivotX = -_loc1_;
         this.§9"s§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§'$&§.visible = true;
         this.§'$&§.rotation = this.§;"A§;
         this.§'$&§.x = this.§,x§;
         this.§'$&§.y = this.§7!L§;
      }
   }
}
