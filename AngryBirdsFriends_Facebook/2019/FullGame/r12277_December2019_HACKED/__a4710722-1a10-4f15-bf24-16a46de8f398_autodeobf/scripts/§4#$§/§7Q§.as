package §4#$§
{
   import §2$;§.§;!b§;
   import §4$A§.§=$5§;
   import §>#Y§.§2$8§;
   import §@!_§.§]a§;
   import flash.display.MovieClip;
   
   public class §7Q§ extends §8"E§
   {
       
      
      private var §8$C§:MovieClip;
      
      private var §"#6§:MovieClip;
      
      public function §7Q§(param1:§=$5§, param2:§;!b§, param3:§5"L§, param4:§]a§, param5:§2$8§)
      {
         this.§8$C§ = param2.mClip.unlocksIn;
         this.§"#6§ = this.§8$C§.unlockCost;
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         this.§8$C§.Textfield_UnlocksIn.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         this.§"#6§.text.text = param1.toString();
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§"#6§.visible = param1;
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         this.§8$C§.visible = param1;
      }
      
      override protected function get buttonName() : String
      {
         return "UnlockNextLevel";
      }
      
      override protected function get sourceForTracking() : String
      {
         return "level_end";
      }
   }
}
