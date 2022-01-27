package §use §
{
   import §,T§.§9g§;
   import §,T§.§[-§;
   import §5!6§.§&!!§;
   import §6!L§.§#!M§;
   import §=!0§.§9!D§;
   import §=z§.§0!E§;
   
   public class §-!#§ extends §&!!§
   {
       
      
      private const §#!C§:int = -35;
      
      private const §!x§:int = 13;
      
      private const §8!6§:int = 50;
      
      public function §-!#§(param1:§[-§, param2:§#!M§, param3:Number = 1.0)
      {
         var _loc4_:Number = 1;
         if(§=!<§.§4M§.§`!?§() != §9!D§.§@§)
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
         if(§34§.sprite)
         {
            _loc1_ = this.§#!C§;
            _loc2_ = this.§!x§;
            if(§=!<§.§4M§.§`!?§() == §9!D§.§@§)
            {
               _loc1_ = this.§8!6§;
            }
            _loc3_ = §0!E§.§^k§() / §0!E§.§@!,§ - §0!E§.§4U§ >> 1;
            §1!7§ = §34§.sprite.x = §[-§.§?q§ * ((1 - §&!!§.levelScale) / 2) + _loc1_;
            §&p§ = §34§.sprite.y = _loc3_ + §[-§.§`=§ * (1 - §&!!§.levelScale) * §9g§.§=8§ + _loc2_;
         }
      }
   }
}
