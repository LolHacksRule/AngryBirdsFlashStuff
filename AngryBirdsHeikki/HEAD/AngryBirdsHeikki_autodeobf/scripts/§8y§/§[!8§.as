package §8y§
{
   import §!!S§.Texture;
   import §&!b§.§ !+§;
   import §+!]§.§!,§;
   import §+!]§.§0!B§;
   import §,!A§.§-q§;
   import §6!;§.§!>§;
   import §8O§.§&#§;
   import §9!'§.§0!%§;
   
   public class §[!8§ extends §-q§
   {
      
      public static const §9![§:int = 4;
      
      public static const §94§:int = 5;
       
      
      private var §'6§:Number;
      
      private var §^!d§:Number;
      
      private var §"T§:int;
      
      public function §[!8§(param1:§0!B§, param2:§!,§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§'6§ = param6 + Math.random() * param18;
         this.§"T§ = param19;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§>!c§ == §9![§)
         {
            §1!I§ = §&#§.§3!D§.§%!E§.§3m§ + §`!Y§.height * §0!%§.§"m§;
         }
         else if(this.§>!c§ == §94§)
         {
            this.§'6§ = param6;
            this.§^!d§ = param7;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         if(§>!c§ == §9![§)
         {
            if(§1!I§ > 0 && §![§ > §1!I§)
            {
               return false;
            }
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         if(§>!c§ == §9![§)
         {
            §`!Y§.alpha = Math.max(0,Math.min(1,2 * § !+§.§?%§((§3j§ - §5!;§) / §3j§,false)));
            _loc2_ = Math.atan2(-§;!S§,§4!J§) * (180 / Math.PI);
            §`!Y§.scaleX = Math.max(0.2,§`!Y§.alpha);
            §`!Y§.scaleY = Math.max(0.2,§`!Y§.alpha);
            §`!Y§.rotation = (360 - _loc2_) / 180 * Math.PI;
            §![§ += §;!S§ * param1 / 1000;
            §5T§ = this.§'6§ + Math.sin(§![§) * this.§"T§;
            return true;
         }
         if(§>!c§ == §94§)
         {
            §`!Y§.alpha = Math.max(0,Math.min(1,2 * § !+§.§?%§((§3j§ - §5!;§) / §3j§,false)));
            §`!Y§.scaleX = §`!Y§.scaleY = § !+§.§?%§((§3j§ + (§5!;§ + 0.2)) / §3j§,false);
            §5T§ = this.§'6§;
            §![§ = this.§^!d§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §!>§
      {
         return new §!>§(param1,true);
      }
   }
}
