package §?!N§
{
   import §!§.§="D§;
   import §%#v§.§0"j§;
   import §5"c§.§8K§;
   import §7#j§.§@"F§;
   import §;$5§.AbstractPopup;
   import §?x§.§;,§;
   import §]"'§.§#$D§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class FirstTimePayerPopup extends AbstractPopup implements §="D§
   {
      
      public static const ID:String = "FirstTimePayerPopup";
      
      public static const §2!>§:String = "PayerPromotionCompleted";
       
      
      private var §`#6§:§;,§;
      
      public function FirstTimePayerPopup(param1:int, param2:int)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupView_FreePowerups[0],ID);
      }
      
      protected function §`#I§(param1:§8K§) : void
      {
         §@"F§.§^$#§("flashShowFirstTimeNewPayerPromotion",param1.changedItems[0].toString());
         §@"F§.addCallback("newPayerPromotionSent",this.§5#g§);
      }
      
      override protected function init() : void
      {
         §8#Y§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§'#+§);
         §8#Y§.mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§+!O§);
      }
      
      private function §+!O§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§`#6§ = new §;,§(null,null);
         this.§`#6§.addEventListener(§8K§.§`#y§,this.§`#I§);
         this.§`#6§.addEventListener(§8K§.§<"&§,this.§!!e§);
      }
      
      protected function §!!e§(param1:Event) : void
      {
         close();
      }
      
      private function §5#g§(param1:Object) : void
      {
         §'"a§.§!!8§.§+!N§.§>_§ = false;
         dispatchEvent(new Event(§2!>§));
         this.§`#6§.removeEventListener(§8K§.§`#y§,this.§`#I§);
         this.§`#6§.removeEventListener(§8K§.§<"&§,this.§!!e§);
         §@"F§.§=F§("newPayerPromotionSent",this.§5#g§);
         §#$D§.§?q§.§>!'§();
         close();
      }
      
      private function §'#+§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §+"n§() : String
      {
         return ID;
      }
   }
}
