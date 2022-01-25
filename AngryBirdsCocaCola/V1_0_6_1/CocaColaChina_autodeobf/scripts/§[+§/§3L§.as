package §[+§
{
   import §+N§.§,A§;
   import §+N§.§``§;
   import §-V§.§&!^§;
   import §2!G§.§2!V§;
   import §;A§.§7!K§;
   import §<!!§.§ G§;
   import §<!$§.§[!5§;
   import §@'§.Texture;
   
   public class §3L§ extends §&!^§
   {
      
      public static const §3f§:int = 4;
      
      public static const §1!d§:int = 5;
       
      
      private var §8z§:Number;
      
      private var §`<§:Number;
      
      private var §`!c§:int;
      
      public function §3L§(param1:§,A§, param2:§``§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§8z§ = param6 + Math.random() * param18;
         this.§`!c§ = param19;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§-q§ == §3f§)
         {
            §&a§ = §7!K§.§=j§.§0D§.§6![§ + §5!4§.height * §2!V§.§-!3§;
         }
         else if(this.§-q§ == §1!d§)
         {
            this.§8z§ = param6;
            this.§`<§ = param7;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         if(§-q§ == §3f§)
         {
            if(§&a§ > 0 && §%i§ > §&a§)
            {
               return false;
            }
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         if(§-q§ == §3f§)
         {
            §5!4§.alpha = Math.max(0,Math.min(1,2 * § G§.§'Q§((§break§ - §8!C§) / §break§,false)));
            _loc2_ = Math.atan2(-§2!=§,§9'§) * (180 / Math.PI);
            §5!4§.scaleX = Math.max(0.2,§5!4§.alpha);
            §5!4§.scaleY = Math.max(0.2,§5!4§.alpha);
            §5!4§.rotation = (360 - _loc2_) / 180 * Math.PI;
            §%i§ += §2!=§ * param1 / 1000;
            §;i§ = this.§8z§ + Math.sin(§%i§) * this.§`!c§;
            return true;
         }
         if(§-q§ == §1!d§)
         {
            §5!4§.alpha = Math.max(0,Math.min(1,2 * § G§.§'Q§((§break§ - §8!C§) / §break§,false)));
            §5!4§.scaleX = §5!4§.scaleY = § G§.§'Q§((§break§ + (§8!C§ + 0.2)) / §break§,false);
            §;i§ = this.§8z§;
            §%i§ = this.§`<§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §[!5§
      {
         return new §[!5§(param1,true);
      }
   }
}
