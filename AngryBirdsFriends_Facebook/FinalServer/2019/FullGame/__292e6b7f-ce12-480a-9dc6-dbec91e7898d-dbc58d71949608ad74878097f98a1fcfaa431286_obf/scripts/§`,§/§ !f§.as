package §`,§
{
   import § "L§.§1"r§;
   import §,#,§.§>#g§;
   import §7"&§.§1k§;
   import §>#q§.§<M§;
   import flash.display.MovieClip;
   
   public class § !f§ extends §]!y§
   {
       
      
      private var §%"=§:MovieClip;
      
      private var §[%§:MovieClip;
      
      public function § !f§(param1:§1k§, param2:§1"r§, param3:§7!$§, param4:§<M§, param5:§>#g§)
      {
         this.§%"=§ = param2.mClip.unlocksIn;
         this.§[%§ = this.§%"=§.unlockCost;
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         this.§%"=§.Textfield_UnlocksIn.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         this.§[%§.text.text = param1.toString();
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§[%§.visible = param1;
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         this.§%"=§.visible = param1;
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
