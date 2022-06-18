package § h§
{
   import §+Z§.§?!T§;
   import §4$A§.§=$5§;
   import §9!6§.AbstractPopup;
   import §9#n§.§9!z§;
   import §>#Y§.§!",§;
   import §[#A§.§&n§;
   import §]!4§.§=#c§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class FirstTimePayerPopup extends AbstractPopup implements §=$5§
   {
      
      public static const ID:String = "FirstTimePayerPopup";
      
      public static const §^!k§:String = "PayerPromotionCompleted";
       
      
      private var §3$?§:§9!z§;
      
      public function FirstTimePayerPopup(param1:int, param2:int)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupView_FreePowerups[0],ID);
      }
      
      protected function §@!H§(param1:§?!T§) : void
      {
         §=#c§.§<!t§("flashShowFirstTimeNewPayerPromotion",param1.changedItems[0].toString());
         §=#c§.addCallback("newPayerPromotionSent",this.§6$?§);
      }
      
      override protected function init() : void
      {
         §'o§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§1",§);
         §'o§.mClip.btnGetThemNow.addEventListener(MouseEvent.CLICK,this.§2#3§);
      }
      
      private function §2#3§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§3$?§ = new §9!z§(null,null);
         this.§3$?§.addEventListener(§?!T§.§@!9§,this.§@!H§);
         this.§3$?§.addEventListener(§?!T§.§'?§,this.§ #A§);
      }
      
      protected function § #A§(param1:Event) : void
      {
         close();
      }
      
      private function §6$?§(param1:Object) : void
      {
         §^"a§.§9!h§.§"?§.§,"r§ = false;
         dispatchEvent(new Event(§^!k§));
         this.§3$?§.removeEventListener(§?!T§.§@!9§,this.§@!H§);
         this.§3$?§.removeEventListener(§?!T§.§'?§,this.§ #A§);
         §=#c§.§`$ §("newPayerPromotionSent",this.§6$?§);
         §!",§.§3"1§.§,"&§();
         close();
      }
      
      private function §1",§(param1:MouseEvent) : void
      {
         close();
      }
      
      public function §9M§() : String
      {
         return ID;
      }
   }
}
