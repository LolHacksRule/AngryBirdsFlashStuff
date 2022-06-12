package §5!Y§
{
   import §%i§.§4"9§;
   import §,l§.§#!,§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §<"F§.§["M§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import mx.utils.StringUtil;
   
   public class §6y§ extends Popup
   {
       
      
      private var §>"P§:StatePopupManager;
      
      private var §!!l§:§3d§;
      
      public function §6y§(param1:§`_§, param2:StatePopupManager)
      {
         super(§ "<§.§%I§.Views.PopupView_EndOfCompetitionWinnersPopup[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§if §);
         mClip.btnClaimNow.addEventListener(MouseEvent.CLICK,this.§ !W§);
         mClip.TextField_ViewWinners.addEventListener(MouseEvent.CLICK,this.§[!+§);
         this.§!T§();
         this.§>"P§ = param2;
      }
      
      private function §!T§() : void
      {
         (getItemByName("Textfield_CollectedUserEggs") as §4"9§).setText(StringUtil.substitute("We’d like to thank everyone for participating. \nYou personally collected {0} Easter Eggs. As a small thank you here’s 30 Bird Coins for participating.",§%"S§.§!C§.§9"%§.§7"T§.§-"5§.toString()));
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function § !W§(param1:MouseEvent) : void
      {
         this.§!!l§ = new §3d§();
         this.§!!l§.addEventListener(Event.COMPLETE,this.§9!y§);
         this.§!!l§.addEventListener(IOErrorEvent.IO_ERROR,this.§?e§);
         this.§!!l§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?e§);
         this.§!!l§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+!'§);
         this.§!!l§.addEventListener(§9G§.§33§,this.§?e§);
         this.§!!l§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/claimfreebundle/Easter2013DrawPrice");
         _loc2_.method = URLRequestMethod.GET;
         this.§!!l§.load(_loc2_);
      }
      
      protected function §+!'§(param1:Event) : void
      {
      }
      
      protected function §?e§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §9!y§(param1:Event) : void
      {
         var jsonOb:Object = null;
         var e:Event = param1;
         if(e.currentTarget.data)
         {
            try
            {
               jsonOb = JSON.parse(e.currentTarget.data);
               if(!AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(§#!$§.§1!g§ + §["M§.§0<§))
               {
                  (AngryBirdsFP11.sUserProgress as §#!$§).saveTutorialSeen(§#!$§.§1!g§ + §["M§.§0<§);
               }
               §#!,§.§&"5§.§6"M§(jsonOb,false);
            }
            catch(e:Error)
            {
               §9"6§.§#!o§();
               return;
            }
            if(jsonOb.errorCode)
            {
               §9"6§.§#!o§();
            }
         }
         this.close();
      }
      
      private function §[!+§(param1:MouseEvent) : void
      {
         §9"6§.§7"@§();
      }
      
      override public function close() : void
      {
         if(this.§!!l§)
         {
            this.§!!l§.removeEventListener(Event.COMPLETE,this.§9!y§);
            this.§!!l§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?e§);
            this.§!!l§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?e§);
            this.§!!l§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§+!'§);
            this.§!!l§.removeEventListener(§9G§.§33§,this.§?e§);
         }
         super.close();
      }
   }
}
