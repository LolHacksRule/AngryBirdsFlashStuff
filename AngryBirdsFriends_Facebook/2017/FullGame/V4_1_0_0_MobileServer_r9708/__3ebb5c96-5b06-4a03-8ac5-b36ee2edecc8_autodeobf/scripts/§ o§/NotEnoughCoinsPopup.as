package § o§
{
   import §%#A§.§^!4§;
   import §1#W§.§!#&§;
   import §6V§.§7#M§;
   import §6V§.§`"5§;
   import §8#D§.§=>§;
   import §9"0§.CoinShopPopup;
   import §<#m§.§!"<§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §[§.§]"w§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class NotEnoughCoinsPopup extends AbstractPopup implements §]"w§, §7#M§
   {
      
      public static const ID:String = "NotEnoughCoinsPopup";
       
      
      private var §%4§:String = "";
      
      private var §0"]§:String = "";
      
      private var §=!J§:§!"<§;
      
      public function NotEnoughCoinsPopup(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§=>§.§%" §.Views.PopupView_NotEnoughCoinsPopup[0],ID);
         this.§%4§ = param2;
         this.§0"]§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§4#Y§);
         §1"6§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§;-§);
         (§1"6§.getItemByName("TextField_Header") as §^!4§).setText(this.§%4§);
         (§1"6§.getItemByName("TextField_Content") as §^!4§).setText(this.§0"]§);
      }
      
      private function §4#Y§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §;-§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close(false,false);
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         this.§=!J§ = new CoinShopPopup(§%"!§.NORMAL,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§=!J§);
      }
      
      public function §-"K§() : String
      {
         return ID;
      }
      
      public function §<"b§() : String
      {
         return §`"5§.§7"C§;
      }
      
      public function §>"-§() : String
      {
         return §`"5§.§0"T§;
      }
   }
}
