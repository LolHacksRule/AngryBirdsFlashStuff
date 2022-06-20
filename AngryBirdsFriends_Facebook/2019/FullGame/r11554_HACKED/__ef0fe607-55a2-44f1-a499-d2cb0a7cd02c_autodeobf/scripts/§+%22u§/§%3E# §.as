package §+"u§
{
   import §!§.§="D§;
   import §'#g§.§2"W§;
   import §5!$§.§"S§;
   import §]"'§.§>I§;
   import flash.display.MovieClip;
   
   public class §># § extends §#S§
   {
       
      
      private var §#y§:MovieClip;
      
      private var §,"[§:MovieClip;
      
      public function §># §(param1:§="D§, param2:§"S§, param3:§^"C§, param4:§2"W§, param5:§>I§)
      {
         this.§#y§ = param2.mClip.unlocksIn;
         this.§,"[§ = this.§#y§.unlockCost;
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         this.§#y§.Textfield_UnlocksIn.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         this.§,"[§.text.text = param1.toString();
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§,"[§.visible = param1;
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         this.§#y§.visible = param1;
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
