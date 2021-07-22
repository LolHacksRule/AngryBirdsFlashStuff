package §>z§
{
   import §!#C§.§ $?§;
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import §0P§.§,O§;
   import §6t§.§4?§;
   import §]C§.§ !+§;
   import §^&§.§%!#§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class FirstTimePayerPopup extends AbstractPopup implements §%!#§
   {
      
      public static const ID:String = "FirstTimePayerPopup";
      
      public static const §]"]§:String = "PayerPromotionCompleted";
       
      
      private var §]!g§:§,O§;
      
      public function FirstTimePayerPopup(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_FreePowerups[0],ID);
      }
      
      protected function §9!K§(param1:§4?§) : void
      {
         § !+§.§>$%§("flashShowFirstTimeNewPayerPromotion",param1.changedItems[0].toString());
         § !+§.addCallback("newPayerPromotionSent",this.§<D§);
      }
      
      override protected function init() : void
      {
         §&!M§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!2§);
         §&!M§.mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§8#J§);
      }
      
      private function §8#J§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§]!g§ = new §,O§(null,null);
         this.§]!g§.addEventListener(§4?§.§?w§,this.§9!K§);
         this.§]!g§.addEventListener(§4?§.§3$2§,this.§!#M§);
      }
      
      protected function §!#M§(param1:Event) : void
      {
         close();
      }
      
      private function §<D§(param1:Object) : void
      {
         § #v§.§1!!§.§&"6§.§5! § = false;
         dispatchEvent(new Event(§]"]§));
         this.§]!g§.removeEventListener(§4?§.§?w§,this.§9!K§);
         this.§]!g§.removeEventListener(§4?§.§3$2§,this.§!#M§);
         § !+§.§?!§("newPayerPromotionSent",this.§<D§);
         § $?§.§`"H§.§-!P§();
         close();
      }
      
      private function §@!2§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §+"-§() : String
      {
         return ID;
      }
   }
}
