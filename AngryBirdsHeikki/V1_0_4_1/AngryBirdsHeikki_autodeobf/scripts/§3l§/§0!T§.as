package §3l§
{
   import §"!<§.Texture;
   import §%!$§.§3,§;
   import §%O§.§ !§;
   import §%O§.§`b§;
   import §<!-§.§^B§;
   import §>!Z§.§+!Z§;
   import §?!P§.§@@§;
   import §^!7§.§^A§;
   
   public class §0!T§ extends §+!Z§
   {
      
      public static const §=7§:int = 4;
      
      public static const §!!b§:int = 5;
       
      
      private var §+@§:Number;
      
      private var §&b§:Number;
      
      private var §4H§:int;
      
      public function §0!T§(param1:§`b§, param2:§ !§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§+@§ = param6 + Math.random() * param18;
         this.§4H§ = param19;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§5G§ == §=7§)
         {
            §import§ = §@@§.§ !8§.§9§.§72§ + §;p§.height * §^A§.§<U§;
         }
         else if(this.§5G§ == §!!b§)
         {
            this.§+@§ = param6;
            this.§&b§ = param7;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         if(§5G§ == §=7§)
         {
            if(§import§ > 0 && §3![§ > §import§)
            {
               return false;
            }
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         if(§5G§ == §=7§)
         {
            §;p§.alpha = Math.max(0,Math.min(1,2 * §3,§.§0P§((§0!B§ - §;?§) / §0!B§,false)));
            _loc2_ = Math.atan2(-§7!T§,§<§) * (180 / Math.PI);
            §;p§.scaleX = Math.max(0.2,§;p§.alpha);
            §;p§.scaleY = Math.max(0.2,§;p§.alpha);
            §;p§.rotation = (360 - _loc2_) / 180 * Math.PI;
            §3![§ += §7!T§ * param1 / 1000;
            §-!c§ = this.§+@§ + Math.sin(§3![§) * this.§4H§;
            return true;
         }
         if(§5G§ == §!!b§)
         {
            §;p§.alpha = Math.max(0,Math.min(1,2 * §3,§.§0P§((§0!B§ - §;?§) / §0!B§,false)));
            §;p§.scaleX = §;p§.scaleY = §3,§.§0P§((§0!B§ + (§;?§ + 0.2)) / §0!B§,false);
            §-!c§ = this.§+@§;
            §3![§ = this.§&b§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §^B§
      {
         return new §^B§(param1,true);
      }
   }
}
