package §=h§
{
   import §&b§.§[F§;
   import §1E§.§5T§;
   import §4!-§.§%o§;
   import §4!-§.§4`§;
   import §6h§.§?!I§;
   import §8!A§.§4!?§;
   
   public class §9%§ extends §?!I§
   {
       
      
      private const §@f§:int = -35;
      
      private const §5!A§:int = 13;
      
      private const §9H§:int = 50;
      
      public function §9%§(param1:§%o§, param2:§5T§, param3:Number = 1.0)
      {
         var _loc4_:Number = 1;
         if(§>!?§.§=!N§.§1'§() != §4!?§.§2`§)
         {
            _loc4_ = 1.25;
         }
         super(param1,param2,_loc4_);
      }
      
      override public function adjustLevelMainViewAccordingToScale() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(§'!8§.sprite)
         {
            _loc1_ = this.§@f§;
            _loc2_ = this.§5!A§;
            if(§>!?§.§=!N§.§1'§() == §4!?§.§2`§)
            {
               _loc1_ = this.§9H§;
            }
            _loc3_ = §[F§.§;'§() / §[F§.§9h§ - §[F§.§87§ >> 1;
            §3^§ = §'!8§.sprite.x = §%o§.§3V§ * ((1 - §?!I§.levelScale) / 2) + _loc1_;
            §use § = §'!8§.sprite.y = _loc3_ + §%o§.§,,§ * (1 - §?!I§.levelScale) * §4`§.§ `§ + _loc2_;
         }
      }
   }
}
