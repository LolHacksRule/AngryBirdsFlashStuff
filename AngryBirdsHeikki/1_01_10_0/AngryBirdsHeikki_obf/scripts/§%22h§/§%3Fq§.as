package §"h§
{
   import §!E§.§!U§;
   import §"!I§.§^!2§;
   import §2Y§.§7!f§;
   import §9b§.§"!S§;
   import §=!<§.§>"§;
   import §=!<§.§>a§;
   import §@R§.§;U§;
   
   public class §?q§ extends §!U§
   {
      
      public static const §-! §:int = 4;
      
      public static const §%!9§:int = 5;
       
      
      private var §?!<§:Number;
      
      private var §3I§:Number;
      
      private var §]u§:int;
      
      public function §?q§(param1:§>"§, param2:§>a§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§?!<§ = param6 + Math.random() * param18;
         this.§]u§ = param19;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§+!?§ == §-! §)
         {
            §-!&§ = §"!S§.§-!7§.§8z§.§"N§ + §-L§.height * §^!2§.§3!S§;
         }
         else if(this.§+!?§ == §%!9§)
         {
            this.§?!<§ = param6;
            this.§3I§ = param7;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         if(§+!?§ == §-! §)
         {
            if(§-!&§ > 0 && §,!W§ > §-!&§)
            {
               return false;
            }
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         if(§+!?§ == §-! §)
         {
            §-L§.alpha = Math.max(0,Math.min(1,2 * §;U§.§+r§((§7!T§ - §'!C§) / §7!T§,false)));
            _loc2_ = Math.atan2(-§0!@§,§7_§) * (180 / Math.PI);
            §-L§.scaleX = Math.max(0.2,§-L§.alpha);
            §-L§.scaleY = Math.max(0.2,§-L§.alpha);
            §-L§.rotation = (360 - _loc2_) / 180 * Math.PI;
            §,!W§ += §0!@§ * param1 / 1000;
            §"!d§ = this.§?!<§ + Math.sin(§,!W§) * this.§]u§;
            return true;
         }
         if(§+!?§ == §%!9§)
         {
            §-L§.alpha = Math.max(0,Math.min(1,2 * §;U§.§+r§((§7!T§ - §'!C§) / §7!T§,false)));
            §-L§.scaleX = §-L§.scaleY = §;U§.§+r§((§7!T§ + (§'!C§ + 0.2)) / §7!T§,false);
            §"!d§ = this.§?!<§;
            §,!W§ = this.§3I§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §7!f§
      {
         return new §7!f§(param1,true);
      }
   }
}
