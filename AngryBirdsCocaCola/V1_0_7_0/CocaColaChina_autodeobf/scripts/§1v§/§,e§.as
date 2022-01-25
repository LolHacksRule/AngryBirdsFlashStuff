package §1v§
{
   import §+!S§.Texture;
   import §,!Q§.§%^§;
   import §,M§.§,!;§;
   import §-v§.§,!1§;
   import §2l§.§%i§;
   import §2l§.§]O§;
   import §4A§.§&_§;
   import §?@§.§^k§;
   
   public class §,e§ extends §,!;§
   {
      
      public static const §;t§:int = 4;
      
      public static const §=U§:int = 5;
       
      
      private var §;O§:Number;
      
      private var §&o§:Number;
      
      private var §7!#§:int;
      
      public function §,e§(param1:§%i§, param2:§]O§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§;O§ = param6 + Math.random() * param18;
         this.§7!#§ = param19;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§&!T§ == §;t§)
         {
            §;Z§ = §,!1§.§2T§.§@I§.§?!K§ + §3!U§.height * §&_§.§5-§;
         }
         else if(this.§&!T§ == §=U§)
         {
            this.§;O§ = param6;
            this.§&o§ = param7;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         if(§&!T§ == §;t§)
         {
            if(§;Z§ > 0 && §5,§ > §;Z§)
            {
               return false;
            }
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         if(§&!T§ == §;t§)
         {
            §3!U§.alpha = Math.max(0,Math.min(1,2 * §^k§.§5V§((§#N§ - §var§) / §#N§,false)));
            _loc2_ = Math.atan2(-§6!O§,§9!F§) * (180 / Math.PI);
            §3!U§.scaleX = Math.max(0.2,§3!U§.alpha);
            §3!U§.scaleY = Math.max(0.2,§3!U§.alpha);
            §3!U§.rotation = (360 - _loc2_) / 180 * Math.PI;
            §5,§ += §6!O§ * param1 / 1000;
            §03§ = this.§;O§ + Math.sin(§5,§) * this.§7!#§;
            return true;
         }
         if(§&!T§ == §=U§)
         {
            §3!U§.alpha = Math.max(0,Math.min(1,2 * §^k§.§5V§((§#N§ - §var§) / §#N§,false)));
            §3!U§.scaleX = §3!U§.scaleY = §^k§.§5V§((§#N§ + (§var§ + 0.2)) / §#N§,false);
            §03§ = this.§;O§;
            §5,§ = this.§&o§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §%^§
      {
         return new §%^§(param1,true);
      }
   }
}
