package §^B§
{
   import § 0§.Texture;
   import § d§.§'!"§;
   import §"§.§2z§;
   import §#!f§.§9!,§;
   import §0i§.§5h§;
   import §3!§.§-e§;
   import §3!§.§9i§;
   import §>!F§.§9!Z§;
   
   public class §2!S§ extends §2z§
   {
      
      public static const § !S§:int = 4;
      
      public static const §?!_§:int = 5;
       
      
      private var §08§:Number;
      
      private var §+X§:Number;
      
      private var §7o§:int;
      
      public function §2!S§(param1:§9i§, param2:§-e§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§08§ = param6 + Math.random() * param18;
         this.§7o§ = param19;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§%!&§ == § !S§)
         {
            §>!5§ = §9!Z§.§5!$§.§=!E§.§9%§ + §%2§.height * §'!"§.§#3§;
         }
         else if(this.§%!&§ == §?!_§)
         {
            this.§08§ = param6;
            this.§+X§ = param7;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         if(§%!&§ == § !S§)
         {
            if(§>!5§ > 0 && §,!9§ > §>!5§)
            {
               return false;
            }
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         if(§%!&§ == § !S§)
         {
            §%2§.alpha = Math.max(0,Math.min(1,2 * §5h§.§`!a§((§`4§ - §4!I§) / §`4§,false)));
            _loc2_ = Math.atan2(-§>!3§,§1!F§) * (180 / Math.PI);
            §%2§.scaleX = Math.max(0.2,§%2§.alpha);
            §%2§.scaleY = Math.max(0.2,§%2§.alpha);
            §%2§.rotation = (360 - _loc2_) / 180 * Math.PI;
            §,!9§ += §>!3§ * param1 / 1000;
            §`B§ = this.§08§ + Math.sin(§,!9§) * this.§7o§;
            return true;
         }
         if(§%!&§ == §?!_§)
         {
            §%2§.alpha = Math.max(0,Math.min(1,2 * §5h§.§`!a§((§`4§ - §4!I§) / §`4§,false)));
            §%2§.scaleX = §%2§.scaleY = §5h§.§`!a§((§`4§ + (§4!I§ + 0.2)) / §`4§,false);
            §`B§ = this.§08§;
            §,!9§ = this.§+X§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §9!,§
      {
         return new §9!,§(param1,true);
      }
   }
}
