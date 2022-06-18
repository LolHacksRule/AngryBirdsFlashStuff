package § h§
{
   import §+!n§.§+!p§;
   import §2$;§.§-$5§;
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends AbstractPopup
   {
      
      public static const ID:String = "WarningPopup";
      
      public static const §!"2§:String = "Oops!";
      
      public static const §;g§:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.";
      
      public static const §'#9§:String = "0";
       
      
      private var §!"l§:String = "";
      
      private var §%!5§:String = "";
      
      private var §8!t§:String;
      
      private var §5"h§:Boolean = true;
      
      public function WarningPopup(param1:int, param2:int, param3:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.", param4:String = "Oops!", param5:String = "0", param6:Boolean = true)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupView_Warning[0],ID);
         this.§!"l§ = param3;
         this.§%!5§ = param4;
         this.§8!t§ = param5;
         this.§5"h§ = param6;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §'o§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§=#p§);
         (§'o§.getItemByName("Textfield_Warning_Text") as §-$5§).setText(this.§!"l§);
         (§'o§.getItemByName("Textfield_Warning_Title") as §-$5§).setText(this.§%!5§);
         §'o§.getItemByName("MovieClip_WarningBox_Image").mClip.gotoAndStop(this.§8!t§);
         §+!p§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §=#p§(param1:MouseEvent) : void
      {
         if(this.§5"h§)
         {
            §+!p§.resume();
         }
         close();
      }
   }
}
