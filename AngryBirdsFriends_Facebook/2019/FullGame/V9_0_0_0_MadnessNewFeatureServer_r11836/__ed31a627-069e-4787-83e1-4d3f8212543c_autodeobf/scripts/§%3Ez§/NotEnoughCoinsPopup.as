package §>z§
{
   import §"c§.CoinShopPopup;
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §0!s§.§5!-§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §8#K§.§3Z§;
   import §^&§.§%!#§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class NotEnoughCoinsPopup extends AbstractPopup implements §%!#§, §,!n§
   {
      
      public static const ID:String = "NotEnoughCoinsPopup";
       
      
      private var §"3§:String = "";
      
      private var § &§:String = "";
      
      private var §^!7§:§5!-§;
      
      public function NotEnoughCoinsPopup(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§?l§.§3m§.Views.PopupView_NotEnoughCoinsPopup[0],ID);
         this.§"3§ = param2;
         this.§ &§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §&!M§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         §&!M§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§'!a§);
         (§&!M§.getItemByName("TextField_Header") as §`"$§).setText(this.§"3§);
         (§&!M§.getItemByName("TextField_Content") as §`"$§).setText(this.§ &§);
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §'!a§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close(false,false);
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         this.§^!7§ = new CoinShopPopup(§#"l§.NORMAL,§]"Y§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§^!7§);
      }
      
      public function §+"-§() : String
      {
         return ID;
      }
      
      public function §;!=§() : String
      {
         return §0I§.§!#O§;
      }
      
      public function §#"!§() : String
      {
         return §0I§.§`#7§;
      }
   }
}
