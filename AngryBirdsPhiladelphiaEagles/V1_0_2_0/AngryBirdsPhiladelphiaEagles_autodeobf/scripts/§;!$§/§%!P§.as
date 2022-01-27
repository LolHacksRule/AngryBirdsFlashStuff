package §;!$§
{
   import §%"§.§ do§;
   import §%"§.§&h§;
   import §'D§.§3h§;
   import §8;§.§8!4§;
   import §<!F§.§5!+§;
   import §?!;§.§;!,§;
   
   public class §%!P§ extends §3h§
   {
       
      
      private const §>r§:int = -35;
      
      private const § !K§:int = 13;
      
      private const §"!O§:int = 50;
      
      public function §%!P§(param1:§ do§, param2:§;!,§, param3:Number = 1.0)
      {
         var _loc4_:Number = 1;
         if(§#!1§.§@F§.§[!'§() != §8!4§.§"Z§)
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
         if(§-H§.sprite)
         {
            _loc1_ = this.§>r§;
            _loc2_ = this.§ !K§;
            if(§#!1§.§@F§.§[!'§() == §8!4§.§"Z§)
            {
               _loc1_ = this.§"!O§;
            }
            _loc3_ = §5!+§.§-!&§() / §5!+§.§!M§ - §5!+§.§>!8§ >> 1;
            §?!=§ = §-H§.sprite.x = § do§.§39§ * ((1 - §3h§.levelScale) / 2) + _loc1_;
            §[T§ = §-H§.sprite.y = _loc3_ + § do§.§0H§ * (1 - §3h§.levelScale) * §&h§.§8m§ + _loc2_;
         }
      }
   }
}
