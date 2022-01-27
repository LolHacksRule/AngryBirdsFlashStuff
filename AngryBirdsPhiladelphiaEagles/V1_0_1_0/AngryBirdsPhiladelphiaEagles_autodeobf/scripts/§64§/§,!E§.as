package §64§
{
   import §##§.§2!5§;
   import §5=§.§8G§;
   import §>2§.§#!&§;
   import §>2§.§4h§;
   import §@w§.§2G§;
   import §^Q§.§<a§;
   
   public class §,!E§ extends §<a§
   {
       
      
      private const §^!I§:int = -35;
      
      private const §6!L§:int = 13;
      
      private const §&k§:int = 50;
      
      public function §,!E§(param1:§4h§, param2:§8G§, param3:Number = 1.0)
      {
         var _loc4_:Number = 1;
         if(§#g§.§^!G§.§50§() != §2!5§.§=,§)
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
         if(§@k§.sprite)
         {
            _loc1_ = this.§^!I§;
            _loc2_ = this.§6!L§;
            if(§#g§.§^!G§.§50§() == §2!5§.§=,§)
            {
               _loc1_ = this.§&k§;
            }
            _loc3_ = §2G§.§2a§() / §2G§.§8$§ - §2G§.§"!§ >> 1;
            §-!K§ = §@k§.sprite.x = §4h§.§^v§ * ((1 - §<a§.levelScale) / 2) + _loc1_;
            §8!$§ = §@k§.sprite.y = _loc3_ + §4h§.§]y§ * (1 - §<a§.levelScale) * §#!&§.§`2§ + _loc2_;
         }
      }
   }
}
