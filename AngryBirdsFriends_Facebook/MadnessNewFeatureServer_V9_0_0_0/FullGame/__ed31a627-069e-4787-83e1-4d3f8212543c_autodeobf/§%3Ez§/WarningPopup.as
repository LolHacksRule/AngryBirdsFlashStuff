package §>z§
{
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import §`#@§.§7n§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends AbstractPopup
   {
      
      public static const ID:String = "WarningPopup";
      
      public static const §+#4§:String = "Oops!";
      
      public static const §8!E§:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.";
      
      public static const §=!i§:String = "0";
       
      
      private var § &§:String = "";
      
      private var §0?§:String = "";
      
      private var §@#<§:String;
      
      private var §1$7§:Boolean = true;
      
      public function WarningPopup(param1:int, param2:int, param3:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.", param4:String = "Oops!", param5:String = "0", param6:Boolean = true)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_Warning[0],ID);
         this.§ &§ = param3;
         this.§0?§ = param4;
         this.§@#<§ = param5;
         this.§1$7§ = param6;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §&!M§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§'!a§);
         (§&!M§.getItemByName("Textfield_Warning_Text") as §`"$§).setText(this.§ &§);
         (§&!M§.getItemByName("Textfield_Warning_Title") as §`"$§).setText(this.§0?§);
         §&!M§.getItemByName("MovieClip_WarningBox_Image").mClip.gotoAndStop(this.§@#<§);
         §7n§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §'!a§(param1:MouseEvent) : void
      {
         if(this.§1$7§)
         {
            §7n§.resume();
         }
         close();
      }
   }
}
