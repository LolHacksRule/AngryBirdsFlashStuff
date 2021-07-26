package §?Q§
{
   import § "L§.§7`§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §?#z§.§]$?§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends AbstractPopup
   {
      
      public static const ID:String = "WarningPopup";
      
      public static const §,S§:String = "Oops!";
      
      public static const §=#y§:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.";
      
      public static const § $<§:String = "0";
       
      
      private var §7#A§:String = "";
      
      private var §7![§:String = "";
      
      private var §,#'§:String;
      
      private var §1#o§:Boolean = true;
      
      public function WarningPopup(param1:int, param2:int, param3:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.", param4:String = "Oops!", param5:String = "0", param6:Boolean = true)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_Warning[0],ID);
         this.§7#A§ = param3;
         this.§7![§ = param4;
         this.§,#'§ = param5;
         this.§1#o§ = param6;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §;#'§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§!"p§);
         (§;#'§.getItemByName("Textfield_Warning_Text") as §7`§).setText(this.§7#A§);
         (§;#'§.getItemByName("Textfield_Warning_Title") as §7`§).setText(this.§7![§);
         §;#'§.getItemByName("MovieClip_WarningBox_Image").mClip.gotoAndStop(this.§,#'§);
         §]$?§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §!"p§(param1:MouseEvent) : void
      {
         if(this.§1#o§)
         {
            §]$?§.resume();
         }
         close();
      }
   }
}
