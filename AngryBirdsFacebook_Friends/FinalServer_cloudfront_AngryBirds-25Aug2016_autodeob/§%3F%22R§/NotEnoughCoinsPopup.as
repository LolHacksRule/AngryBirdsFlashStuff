package §?"R§
{
   import §4#%§.§@#@§;
   import §6"r§.§]$!§;
   import §<!O§.§@#`§;
   import §>!#§.§ 1§;
   import §>!#§.§,"W§;
   import §>q§.CoinShopPopup;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class NotEnoughCoinsPopup extends AbstractPopup implements §@#@§, § 1§
   {
      
      public static const ID:String = "NotEnoughCoinsPopup";
       
      
      private var §<!8§:String = "";
      
      private var §'3§:String = "";
      
      private var §=!L§:§8!H§;
      
      public function NotEnoughCoinsPopup(param1:MovieClip, param2:String, param3:String, param4:int, param5:int)
      {
         super(param4,param5,§@#`§.§#!c§.Views.PopupView_NotEnoughCoinsPopup[0],ID);
         this.§<!8§ = param2;
         this.§'3§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#p§);
         §7!j§.mClip.btnOk.addEventListener(MouseEvent.CLICK,this.§+!m§);
         (§7!j§.getItemByName("TextField_Header") as §]$!§).setText(this.§<!8§);
         (§7!j§.getItemByName("TextField_Content") as §]$!§).setText(this.§'3§);
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
      }
      
      private function §+!m§(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
         this.close();
         this.§=!L§ = new CoinShopPopup(§[W§.NORMAL,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§=!L§);
      }
      
      public function §<$#§() : String
      {
         return ID;
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§8z§;
      }
      
      public function §7">§() : String
      {
         return §,"W§.§-!+§;
      }
   }
}
