package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §5t§.Log;
   import §<"B§.§94§;
   import §^#>§.§#_§;
   
   public class §#m§ extends §7B§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §#D§:Number = Math.PI * 2;
       
      
      private var §9I§:Number;
      
      private var §2v§:Number;
      
      private var §!! §:Number;
      
      private var § ! §:Number;
      
      private var §>!7§:Number;
      
      private var § 1§:Number;
      
      private var §6!#§:Number = 0;
      
      private var §=!p§:Number = 0;
      
      protected var §1!!§:§94§;
      
      protected var §8!+§:Number = 0;
      
      protected var §=!Z§:Number = 0;
      
      protected var §<#W§:Number = 0;
      
      public function §#m§(param1:Sprite, param2:b2World, param3:§"t§, param4:§94§)
      {
         this.§1!!§ = param4;
         super(param1,param2,param3);
         this.§ 1§ = this.§1!!§.angle;
         this.§!! § = this.§1!!§.angle;
         this.§ ! § = this.§1!!§.x / §#_§.§8]§;
         this.§>!7§ = this.§1!!§.y / §#_§.§8]§;
         this.§9I§ = this.§1!!§.x / §#_§.§8]§;
         this.§2v§ = this.§1!!§.y / §#_§.§8]§;
      }
      
      public function get §["H§() : §94§
      {
         return this.§1!!§;
      }
      
      public function §'"8§() : Number
      {
         return this.§8!+§ * §#_§.§8]§;
      }
      
      public function §;">§() : Number
      {
         return this.§=!Z§ * §#_§.§8]§;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = §3!t§().GetPosition().x;
         var _loc4_:Number = §3!t§().GetPosition().y;
         this.§8"r§(this.§!! §);
         this.§ ! § = this.§9I§;
         this.§>!7§ = this.§2v§;
         this.§!! § = §3!t§().GetAngle();
         this.§9I§ = _loc3_ / §#_§.§8]§;
         this.§2v§ = _loc4_ / §#_§.§8]§;
      }
      
      protected function §8"r§(param1:Number) : void
      {
         this.§ 1§ = param1;
         this.§!! § = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§;"K§(param2,param3);
      }
      
      protected function §;"K§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            Log.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§9I§ == this.§ ! § || param2 == 0)
         {
            this.§6!#§ = 0;
            this.§8!+§ = this.§9I§;
         }
         else
         {
            this.§6!#§ = param2 * (this.§ ! § - this.§9I§) / param1;
            this.§8!+§ = this.§9I§ + this.§6!#§;
         }
         if(this.§2v§ == this.§>!7§ || param2 == 0)
         {
            this.§=!p§ = 0;
            this.§=!Z§ = this.§2v§;
         }
         else
         {
            this.§=!p§ = param2 * (this.§>!7§ - this.§2v§) / param1;
            this.§=!Z§ = this.§2v§ + this.§=!p§;
         }
         if(this.§!! § == this.§ 1§ || param2 == 0)
         {
            this.§<#W§ = this.§!! §;
         }
         else
         {
            _loc3_ = this.§!! § - this.§ 1§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §#D§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §#D§;
            }
            this.§<#W§ = this.§ 1§ + (param1 - param2) / param1 * _loc3_;
            if(this.§<#W§ >= §#D§)
            {
               this.§<#W§ -= §#D§;
            }
            else if(this.§<#W§ < 0)
            {
               this.§<#W§ += §#D§;
            }
         }
      }
   }
}
