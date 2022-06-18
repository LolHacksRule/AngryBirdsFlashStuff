package §^0§
{
   import §#"3§.§4!h§;
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §?$#§.§<d§;
   import §@"v§.§@$<§;
   
   public class §3Q§ extends §4!t§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §3#T§:Number = Math.PI * 2;
       
      
      private var §?"s§:Number;
      
      private var §0#R§:Number;
      
      private var §6#5§:Number;
      
      private var §5!r§:Number;
      
      private var §>1§:Number;
      
      private var §?!k§:Number;
      
      private var §"! §:Number = 0;
      
      private var §@$A§:Number = 0;
      
      protected var §7b§:§@$<§;
      
      protected var §0k§:Number = 0;
      
      protected var §@_§:Number = 0;
      
      protected var §^I§:Number = 0;
      
      public function §3Q§(param1:Sprite, param2:b2World, param3:§-"8§, param4:§@$<§)
      {
         this.§7b§ = param4;
         super(param1,param2,param3);
         this.§?!k§ = this.§7b§.angle;
         this.§6#5§ = this.§7b§.angle;
         this.§5!r§ = this.§7b§.x / §<d§.§6@§;
         this.§>1§ = this.§7b§.y / §<d§.§6@§;
         this.§?"s§ = this.§7b§.x / §<d§.§6@§;
         this.§0#R§ = this.§7b§.y / §<d§.§6@§;
         if(this.§7b§.z != §=Q§.§-!g§)
         {
            § #o§(this.§7b§.z);
         }
      }
      
      public function get §0"^§() : §@$<§
      {
         return this.§7b§;
      }
      
      public function §<"Z§() : Number
      {
         return this.§0k§ * §<d§.§6@§;
      }
      
      public function §+"T§() : Number
      {
         return this.§@_§ * §<d§.§6@§;
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         this.§0"#§(this.§6#5§);
         this.§5!r§ = this.§?"s§;
         this.§>1§ = this.§0#R§;
         this.§6#5§ = getBody().GetAngle();
         this.§?"s§ = _loc3_ / §<d§.§6@§;
         this.§0#R§ = _loc4_ / §<d§.§6@§;
      }
      
      protected function §0"#§(param1:Number) : void
      {
         this.§?!k§ = param1;
         this.§6#5§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§]>§(param2,param3);
      }
      
      protected function §]>§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §4!h§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§?"s§ == this.§5!r§ || param2 == 0)
         {
            this.§"! § = 0;
            this.§0k§ = this.§?"s§;
         }
         else
         {
            this.§"! § = param2 * (this.§5!r§ - this.§?"s§) / param1;
            this.§0k§ = this.§?"s§ + this.§"! §;
         }
         if(this.§0#R§ == this.§>1§ || param2 == 0)
         {
            this.§@$A§ = 0;
            this.§@_§ = this.§0#R§;
         }
         else
         {
            this.§@$A§ = param2 * (this.§>1§ - this.§0#R§) / param1;
            this.§@_§ = this.§0#R§ + this.§@$A§;
         }
         if(this.§6#5§ == this.§?!k§ || param2 == 0)
         {
            this.§^I§ = this.§6#5§;
         }
         else
         {
            _loc3_ = this.§6#5§ - this.§?!k§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §3#T§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §3#T§;
            }
            this.§^I§ = this.§?!k§ + (param1 - param2) / param1 * _loc3_;
            if(this.§^I§ >= §3#T§)
            {
               this.§^I§ -= §3#T§;
            }
            else if(this.§^I§ < 0)
            {
               this.§^I§ += §3#T§;
            }
         }
      }
   }
}
