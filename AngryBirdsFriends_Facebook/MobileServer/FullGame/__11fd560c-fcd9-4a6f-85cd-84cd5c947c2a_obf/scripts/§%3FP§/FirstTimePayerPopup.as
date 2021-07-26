package §?P§
{
   import § %§.§1Q§;
   import §%!x§.§^!K§;
   import §-"3§.§0[§;
   import §0#m§.§8#§;
   import §1!=§.AbstractPopup;
   import §2"5§.§1"?§;
   import §2G§.§-#+§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class FirstTimePayerPopup extends AbstractPopup implements §8#§
   {
      
      public static const ID:String = "FirstTimePayerPopup";
      
      public static const §%i§:String = "PayerPromotionCompleted";
       
      
      private var §^e§:§0[§;
      
      public function FirstTimePayerPopup(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_FreePowerups[0],ID);
      }
      
      protected function §-w§(param1:§1"?§) : void
      {
         §^!K§.§+"D§("flashShowFirstTimeNewPayerPromotion",param1.changedItems[0].toString());
         §^!K§.addCallback("newPayerPromotionSent",this.§"#%§);
      }
      
      override protected function init() : void
      {
         §,#2§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="!§);
         §,#2§.mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§<#l§);
      }
      
      private function §<#l§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§^e§ = new §0[§(null,null);
         this.§^e§.addEventListener(§1"?§.§=#j§,this.§-w§);
         this.§^e§.addEventListener(§1"?§.§^#M§,this.§"#q§);
      }
      
      protected function §"#q§(param1:Event) : void
      {
         close();
      }
      
      private function §"#%§(param1:Object) : void
      {
         §,A§.§2#O§.§7#M§.§3!v§ = false;
         dispatchEvent(new Event(§%i§));
         this.§^e§.removeEventListener(§1"?§.§=#j§,this.§-w§);
         this.§^e§.removeEventListener(§1"?§.§^#M§,this.§"#q§);
         §^!K§.§,"i§("newPayerPromotionSent",this.§"#%§);
         §-#+§.§6!§.§<"k§();
         close();
      }
      
      private function §="!§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §+#k§() : String
      {
         return ID;
      }
   }
}
