package §];§
{
   import §!@§.§;"k§;
   import §%#A§.§,#w§;
   import §&"J§.§6$0§;
   import §[§.§]"w§;
   import flash.display.MovieClip;
   
   public class §&'§ extends §#!"§
   {
       
      
      private var §=r§:MovieClip;
      
      private var §+#P§:MovieClip;
      
      public function §&'§(param1:§]"w§, param2:§,#w§, param3:§-!t§, param4:§;"k§, param5:§6$0§)
      {
         this.§=r§ = param2.mClip.unlocksIn;
         this.§+#P§ = this.§=r§.unlockCost;
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         this.§=r§.Textfield_UnlocksIn.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         this.§+#P§.text.text = param1.toString();
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§+#P§.visible = param1;
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         this.§=r§.visible = param1;
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
