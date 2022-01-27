package §8!;§
{
   import §"^§.§9=§;
   import §,!F§.§#§;
   import §,!F§.§`"§;
   import §3!%§.§#!K§;
   import §>Y§.§6[§;
   import §[!A§.§+!!§;
   
   public class §+!N§ extends §+!!§
   {
       
      
      private const §6f§:int = -35;
      
      private const §4u§:int = 13;
      
      private const §;q§:int = 50;
      
      public function §+!N§(param1:§#§, param2:§#!K§, param3:Number = 1.0)
      {
         var _loc4_:Number = 1;
         if(§#'§.§20§.§`q§() != §6[§.§4!C§)
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
         if(§&§.sprite)
         {
            _loc1_ = this.§6f§;
            _loc2_ = this.§4u§;
            if(§#'§.§20§.§`q§() == §6[§.§4!C§)
            {
               _loc1_ = this.§;q§;
            }
            _loc3_ = §9=§.§3c§() / §9=§.§'j§ - §9=§.§"#§ >> 1;
            §!2§ = §&§.sprite.x = §#§.§'!#§ * ((1 - §+!!§.levelScale) / 2) + _loc1_;
            §3!K§ = §&§.sprite.y = _loc3_ + §#§.§&!J§ * (1 - §+!!§.levelScale) * §`"§.§ w§ + _loc2_;
         }
      }
   }
}
