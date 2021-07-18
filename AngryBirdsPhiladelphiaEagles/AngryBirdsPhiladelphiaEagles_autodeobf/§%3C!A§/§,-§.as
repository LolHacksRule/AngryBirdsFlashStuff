package §<!A§
{
   import §,!"§.§,!#§;
   import §-!O§.§?Z§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import §9T§.§^=§;
   import §^]§.§[z§;
   
   public class §,-§ extends §?Z§
   {
       
      
      private const §[i§:int = -35;
      
      private const §?!2§:int = 13;
      
      private const §?!C§:int = 50;
      
      public function §,-§(param1:§1r§, param2:§[z§, param3:Number = 1.0)
      {
         var _loc4_:Number = 1;
         if(§!D§.§46§.§,x§() != §,!#§.§-A§)
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
         if(§;§.sprite)
         {
            _loc1_ = this.§[i§;
            _loc2_ = this.§?!2§;
            if(§!D§.§46§.§,x§() == §,!#§.§-A§)
            {
               _loc1_ = this.§?!C§;
            }
            _loc3_ = §#! §.§ v§() / §#! §.§3M§ - §#! §.§5!9§ >> 1;
            §#!#§ = §;§.sprite.x = §1r§.§'6§ * ((1 - §?Z§.levelScale) / 2) + _loc1_;
            §+^§ = §;§.sprite.y = _loc3_ + §1r§.§=w§ * (1 - §?Z§.levelScale) * §^=§.§9s§ + _loc2_;
         }
      }
   }
}
