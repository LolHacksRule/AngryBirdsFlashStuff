package §?!N§
{
   import §%#v§.§0"j§;
   import §5!$§.§-#j§;
   import §;$5§.AbstractPopup;
   import §=!2§.§%"T§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends AbstractPopup
   {
      
      public static const ID:String = "WarningPopup";
      
      public static const §,$9§:String = "Oops!";
      
      public static const §>$9§:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.";
      
      public static const §-#,§:String = "0";
       
      
      private var §]=§:String = "";
      
      private var §,§:String = "";
      
      private var §@,§:String;
      
      private var §!!a§:Boolean = true;
      
      public function WarningPopup(param1:int, param2:int, param3:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.", param4:String = "Oops!", param5:String = "0", param6:Boolean = true)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupView_Warning[0],ID);
         this.§]=§ = param3;
         this.§,§ = param4;
         this.§@,§ = param5;
         this.§!!a§ = param6;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §8#Y§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§,!H§);
         (§8#Y§.getItemByName("Textfield_Warning_Text") as §-#j§).setText(this.§]=§);
         (§8#Y§.getItemByName("Textfield_Warning_Title") as §-#j§).setText(this.§,§);
         §8#Y§.getItemByName("MovieClip_WarningBox_Image").mClip.gotoAndStop(this.§@,§);
         §%"T§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §,!H§(param1:MouseEvent) : void
      {
         if(this.§!!a§)
         {
            §%"T§.resume();
         }
         close();
      }
   }
}
