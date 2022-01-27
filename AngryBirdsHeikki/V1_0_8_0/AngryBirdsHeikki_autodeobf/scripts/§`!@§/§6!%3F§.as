package §`!@§
{
   import § !3§.§>k§;
   import §#!6§.Texture;
   import §#!T§.§&2§;
   import §2z§.§2!U§;
   import §=!E§.§try§;
   import §]!C§.§!y§;
   import §]!C§.§0!d§;
   import §^t§.§[I§;
   
   public class §6!?§ extends §[I§
   {
      
      public static const §%!S§:int = 4;
      
      public static const §-!#§:int = 5;
       
      
      private var §,!=§:Number;
      
      private var §7F§:Number;
      
      private var §#!§:int;
      
      public function §6!?§(param1:§!y§, param2:§0!d§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§,!=§ = param6 + Math.random() * param18;
         this.§#!§ = param19;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§^!d§ == §%!S§)
         {
            §6!'§ = §&2§.§4!1§.§@!a§.§<k§ + §+M§.height * §2!U§.§&%§;
         }
         else if(this.§^!d§ == §-!#§)
         {
            this.§,!=§ = param6;
            this.§7F§ = param7;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         if(§^!d§ == §%!S§)
         {
            if(§6!'§ > 0 && §?=§ > §6!'§)
            {
               return false;
            }
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         if(§^!d§ == §%!S§)
         {
            §+M§.alpha = Math.max(0,Math.min(1,2 * §>k§.§>_§((§'!9§ - §'U§) / §'!9§,false)));
            _loc2_ = Math.atan2(-§,!L§,§-!$§) * (180 / Math.PI);
            §+M§.scaleX = Math.max(0.2,§+M§.alpha);
            §+M§.scaleY = Math.max(0.2,§+M§.alpha);
            §+M§.rotation = (360 - _loc2_) / 180 * Math.PI;
            §?=§ += §,!L§ * param1 / 1000;
            §[!#§ = this.§,!=§ + Math.sin(§?=§) * this.§#!§;
            return true;
         }
         if(§^!d§ == §-!#§)
         {
            §+M§.alpha = Math.max(0,Math.min(1,2 * §>k§.§>_§((§'!9§ - §'U§) / §'!9§,false)));
            §+M§.scaleX = §+M§.scaleY = §>k§.§>_§((§'!9§ + (§'U§ + 0.2)) / §'!9§,false);
            §[!#§ = this.§,!=§;
            §?=§ = this.§7F§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §try§
      {
         return new §try§(param1,true);
      }
   }
}
