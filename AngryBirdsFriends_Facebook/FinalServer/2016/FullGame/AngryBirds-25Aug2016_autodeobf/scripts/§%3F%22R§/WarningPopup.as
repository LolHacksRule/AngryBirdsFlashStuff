package §?"R§
{
   import §6"r§.§]$!§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends AbstractPopup
   {
      
      public static const ID:String = "WarningPopup";
      
      public static const §?!I§:String = "Oops!";
      
      public static const §8!a§:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.";
      
      public static const §[!g§:String = "0";
       
      
      private var §'3§:String = "";
      
      private var §7W§:String = "";
      
      private var §=%§:String;
      
      private var §#"0§:Boolean = true;
      
      public function WarningPopup(param1:int, param2:int, param3:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.", param4:String = "Oops!", param5:String = "0", param6:Boolean = true)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_Warning[0],ID);
         this.§'3§ = param3;
         this.§7W§ = param4;
         this.§=%§ = param5;
         this.§#"0§ = param6;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §7!j§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§+!m§);
         (§7!j§.getItemByName("Textfield_Warning_Text") as §]$!§).setText(this.§'3§);
         (§7!j§.getItemByName("Textfield_Warning_Title") as §]$!§).setText(this.§7W§);
         §7!j§.getItemByName("MovieClip_WarningBox_Image").mClip.gotoAndStop(this.§=%§);
         §>"$§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §+!m§(param1:MouseEvent) : void
      {
         if(this.§#"0§)
         {
            §>"$§.resume();
         }
         close();
      }
   }
}
