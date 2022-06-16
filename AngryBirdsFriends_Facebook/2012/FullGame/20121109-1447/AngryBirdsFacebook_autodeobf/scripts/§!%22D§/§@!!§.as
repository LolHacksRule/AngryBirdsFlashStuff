package §!"D§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §3!7§.§?!F§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §@!!§ extends Popup
   {
      
      public static const §8"8§:String = "Halloween2012BuyerBonus";
       
      
      private var §1!_§:Boolean = false;
      
      private var §]D§:§0]§;
      
      public function §@!!§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupView_ExtraBirdGift[0],param1);
         mClip.Button_ClaimNow.addEventListener(MouseEvent.CLICK,this.claimGift);
         this.§]!-§();
      }
      
      private function claimGift(param1:Event) : void
      {
         if(!this.§1!_§)
         {
            this.§1!_§ = true;
            this.§]D§ = new §0]§();
            this.§]D§.addEventListener(Event.COMPLETE,this.§5!^§);
            this.§]D§.addEventListener(IOErrorEvent.IO_ERROR,this.§0"1§);
            this.§]D§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0"1§);
            this.§]D§.addEventListener(§+!D§.§25§,this.§0"1§);
            this.§]D§.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/claimfreebundle/" + §8"8§));
         }
         this.§]!-§();
      }
      
      private function §]!-§() : void
      {
         mClip.Movieclip_Loading.visible = !mClip.Movieclip_Loading.visible;
      }
      
      private function §0"1§(param1:Event) : void
      {
         §%?§.§6!7§(§-d§.§+""§);
      }
      
      private function §5!^§(param1:Event) : void
      {
         §?!F§.§;"§.§-Y§();
         this.close();
      }
      
      override public function close() : void
      {
         mClip.Button_ClaimNow.removeEventListener(MouseEvent.CLICK,this.claimGift);
         super.close();
      }
   }
}
