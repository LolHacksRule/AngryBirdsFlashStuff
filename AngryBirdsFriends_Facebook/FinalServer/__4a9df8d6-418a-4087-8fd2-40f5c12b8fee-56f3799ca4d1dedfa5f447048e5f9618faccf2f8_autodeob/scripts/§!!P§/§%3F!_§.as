package §!!P§
{
   import §'G§.§3$§;
   import §-<§.§'"v§;
   import §2!l§.§0"[§;
   import §8#K§.§3Z§;
   import §?$<§.§^§;
   
   public class §?!_§ extends §,!e§
   {
       
      
      protected var §`!3§:§^#1§;
      
      public function §?!_§(param1:§0"[§, param2:§'"v§, param3:Number, param4:§3$§, param5:Number, param6:§^#1§, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param7);
         this.§`!3§ = param6;
      }
      
      override public function playAmbientSound() : void
      {
         if(§3Z§.§["C§("CHANNEL_AMBIENT") == null || !§3Z§.§["C§("CHANNEL_AMBIENT").isPlaying())
         {
            if(this.§`!3§)
            {
               this.§`!3§.playSound(§7!=§,"CHANNEL_AMBIENT",10000);
            }
         }
      }
   }
}
