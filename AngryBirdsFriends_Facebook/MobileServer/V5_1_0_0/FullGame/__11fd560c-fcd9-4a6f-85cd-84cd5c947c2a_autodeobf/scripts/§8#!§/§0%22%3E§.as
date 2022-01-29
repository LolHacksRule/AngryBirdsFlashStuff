package §8#!§
{
   import §0#m§.§8#§;
   import §1"N§.§+#`§;
   import §2G§.§"G§;
   import §<h§.§>"0§;
   import flash.display.MovieClip;
   
   public class §0">§ extends §'I§
   {
       
      
      private var §#!A§:MovieClip;
      
      private var §?#b§:MovieClip;
      
      public function §0">§(param1:§8#§, param2:§>"0§, param3:§5`§, param4:§+#`§, param5:§"G§)
      {
         this.§#!A§ = param2.mClip.unlocksIn;
         this.§?#b§ = this.§#!A§.unlockCost;
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         this.§#!A§.Textfield_UnlocksIn.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         this.§?#b§.text.text = param1.toString();
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§?#b§.visible = param1;
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         this.§#!A§.visible = param1;
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
