package §?P§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §;#D§.§3#U§;
   import §<h§.§%M§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends AbstractPopup
   {
      
      public static const ID:String = "WarningPopup";
      
      public static const §6!k§:String = "Oops!";
      
      public static const §!#,§:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.";
      
      public static const §7l§:String = "0";
       
      
      private var §'7§:String = "";
      
      private var §&2§:String = "";
      
      private var §##^§:String;
      
      private var §;!8§:Boolean = true;
      
      public function WarningPopup(param1:int, param2:int, param3:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.", param4:String = "Oops!", param5:String = "0", param6:Boolean = true)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_Warning[0],ID);
         this.§'7§ = param3;
         this.§&2§ = param4;
         this.§##^§ = param5;
         this.§;!8§ = param6;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §,#2§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§%!U§);
         (§,#2§.getItemByName("Textfield_Warning_Text") as §%M§).setText(this.§'7§);
         (§,#2§.getItemByName("Textfield_Warning_Title") as §%M§).setText(this.§&2§);
         §,#2§.getItemByName("MovieClip_WarningBox_Image").mClip.gotoAndStop(this.§##^§);
         §3#U§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §%!U§(param1:MouseEvent) : void
      {
         if(this.§;!8§)
         {
            §3#U§.resume();
         }
         close();
      }
   }
}
