package § o§
{
   import §%#A§.§^!4§;
   import §6"r§.§!#A§;
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class WarningPopup extends AbstractPopup
   {
      
      public static const ID:String = "WarningPopup";
      
      public static const §<$9§:String = "Oops!";
      
      public static const §<!e§:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.";
      
      public static const §@i§:String = "0";
       
      
      private var §0"]§:String = "";
      
      private var §<"a§:String = "";
      
      private var §<x§:String;
      
      private var §<v§:Boolean = true;
      
      public function WarningPopup(param1:int, param2:int, param3:String = "The pigs are messing with our servers!\r\rIf this happens again please reload the game.", param4:String = "Oops!", param5:String = "0", param6:Boolean = true)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_Warning[0],ID);
         this.§0"]§ = param3;
         this.§<"a§ = param4;
         this.§<x§ = param5;
         this.§<v§ = param6;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §1"6§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§;-§);
         (§1"6§.getItemByName("Textfield_Warning_Text") as §^!4§).setText(this.§0"]§);
         (§1"6§.getItemByName("Textfield_Warning_Title") as §^!4§).setText(this.§<"a§);
         §1"6§.getItemByName("MovieClip_WarningBox_Image").mClip.gotoAndStop(this.§<x§);
         §!#A§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      private function §;-§(param1:MouseEvent) : void
      {
         if(this.§<v§)
         {
            §!#A§.resume();
         }
         close();
      }
   }
}
