package §5"$§
{
   import §%$!§.§=]§;
   import §4#%§.§@#@§;
   import §6"r§.§=O§;
   import §;!H§.§8#_§;
   import flash.display.MovieClip;
   
   public class §"!$§ extends § #p§
   {
       
      
      private var §-"K§:MovieClip;
      
      private var §^!j§:MovieClip;
      
      public function §"!$§(param1:§@#@§, param2:§=O§, param3:§]!m§, param4:§8#_§, param5:§=]§)
      {
         this.§-"K§ = param2.mClip.unlocksIn;
         this.§^!j§ = this.§-"K§.unlockCost;
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         this.§-"K§.Textfield_UnlocksIn.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         this.§^!j§.text.text = param1.toString();
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§^!j§.visible = param1;
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         this.§-"K§.visible = param1;
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
