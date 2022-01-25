package §1v§
{
   import § !K§.§5+§;
   import §"![§.Texture;
   import §'!G§.§ !7§;
   import §-v§.§,!1§;
   import §4A§.§&_§;
   import §9!Y§.§!![§;
   import §9!Y§.§!q§;
   import §;G§.§;Z§;
   
   public class §,e§ extends §;Z§
   {
      
      public static const §;t§:int = 4;
      
      public static const §=U§:int = 5;
       
      
      private var §;O§:Number;
      
      private var §&o§:Number;
      
      private var §7!#§:int;
      
      public function §,e§(param1:§!![§, param2:§!q§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§;O§ = param6 + Math.random() * param18;
         this.§7!#§ = param19;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§7J§ == §;t§)
         {
            §@3§ = §,!1§.§2T§.§@I§.§>R§ + §4!P§.height * §&_§.§5-§;
         }
         else if(this.§7J§ == §=U§)
         {
            this.§;O§ = param6;
            this.§&o§ = param7;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         if(§7J§ == §;t§)
         {
            if(§@3§ > 0 && §5,§ > §@3§)
            {
               return false;
            }
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         if(§7J§ == §;t§)
         {
            §4!P§.alpha = Math.max(0,Math.min(1,2 * § !7§.§,;§((§?§ - §6g§) / §?§,false)));
            _loc2_ = Math.atan2(-§3k§,§%O§) * (180 / Math.PI);
            §4!P§.scaleX = Math.max(0.2,§4!P§.alpha);
            §4!P§.scaleY = Math.max(0.2,§4!P§.alpha);
            §4!P§.rotation = (360 - _loc2_) / 180 * Math.PI;
            §5,§ += §3k§ * param1 / 1000;
            §03§ = this.§;O§ + Math.sin(§5,§) * this.§7!#§;
            return true;
         }
         if(§7J§ == §=U§)
         {
            §4!P§.alpha = Math.max(0,Math.min(1,2 * § !7§.§,;§((§?§ - §6g§) / §?§,false)));
            §4!P§.scaleX = §4!P§.scaleY = § !7§.§,;§((§?§ + (§6g§ + 0.2)) / §?§,false);
            §03§ = this.§;O§;
            §5,§ = this.§&o§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §5+§
      {
         return new §5+§(param1,true);
      }
   }
}
