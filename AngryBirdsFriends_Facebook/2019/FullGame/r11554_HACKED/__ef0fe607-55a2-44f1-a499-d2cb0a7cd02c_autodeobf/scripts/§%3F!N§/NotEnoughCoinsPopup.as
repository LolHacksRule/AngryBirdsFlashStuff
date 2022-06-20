package §?!N§
{
   import §!§.§="D§;
   import §%#v§.§0"j§;
   import §%4§.CoinShopPopup;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §5!$§.§-#j§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §;$5§.AbstractPopup;
   import §>"9§.§[#%§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class NotEnoughCoinsPopup extends AbstractPopup implements §="D§, §0"+§
   {
      
      public static const ID:String = "NotEnoughCoinsPopup";
       
      
      private var §^?§:String = "";
      
      private var §]=§:String = "";
      
      private var §'i§:§@#G§;
      
      public function NotEnoughCoinsPopup(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§0"j§.§-i§.Views.PopupView_NotEnoughCoinsPopup[0],ID);
         this.§^?§ = param2;
         this.§]=§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §8#Y§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         §8#Y§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§,!H§);
         (§8#Y§.getItemByName("TextField_Header") as §-#j§).setText(this.§^?§);
         (§8#Y§.getItemByName("TextField_Content") as §-#j§).setText(this.§]=§);
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §,!H§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close(false,false);
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         this.§'i§ = new CoinShopPopup(§%#§.NORMAL,§9#5§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§'i§);
      }
      
      public function §+"n§() : String
      {
         return ID;
      }
      
      public function §<"r§() : String
      {
         return §5"w§.§3#R§;
      }
      
      public function §5!R§() : String
      {
         return §5"w§.§ 1§;
      }
   }
}
