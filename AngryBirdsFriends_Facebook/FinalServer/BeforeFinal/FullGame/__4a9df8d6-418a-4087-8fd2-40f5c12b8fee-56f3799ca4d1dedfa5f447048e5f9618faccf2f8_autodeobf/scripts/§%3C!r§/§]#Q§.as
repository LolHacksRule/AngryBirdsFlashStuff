package §<!r§
{
   import § §.§=J§;
   import §!#C§.§null§;
   import §#,§.§ !>§;
   import §^&§.§%!#§;
   import flash.display.MovieClip;
   
   public class §]#Q§ extends §[#1§
   {
       
      
      private var §<$?§:MovieClip;
      
      private var §,"u§:MovieClip;
      
      public function §]#Q§(param1:§%!#§, param2:§ !>§, param3:§'##§, param4:§=J§, param5:§null§)
      {
         this.§<$?§ = param2.mClip.unlocksIn;
         this.§,"u§ = this.§<$?§.unlockCost;
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function showTimeUntilUnlocked(param1:String) : void
      {
         this.§<$?§.Textfield_UnlocksIn.text = param1;
      }
      
      override protected function showPrice(param1:int) : void
      {
         this.§,"u§.text.text = param1.toString();
      }
      
      override protected function setPurchasable(param1:Boolean) : void
      {
         this.§,"u§.visible = param1;
      }
      
      override protected function setLocked(param1:Boolean) : void
      {
         this.§<$?§.visible = param1;
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
