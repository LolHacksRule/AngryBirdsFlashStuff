package §;!Q§
{
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §4q§.§!#Q§;
   import §6"r§.§]$!§;
   import §<!O§.§@#`§;
   import §?"R§.§[W§;
   import §]$9§.§5$!§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import mx.utils.StringUtil;
   
   public class §]"6§ extends AbstractPopup
   {
       
      
      private var §[!v§:§5$!§;
      
      public function §]"6§(param1:int, param2:int)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_EndOfCompetitionWinnersPopup[0]);
         §7!j§.mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§'#p§);
         §7!j§.mClip.btnClaimNow.addEventListener(MouseEvent.CLICK,this.§3!E§);
         §7!j§.mClip.TextField_ViewWinners.addEventListener(MouseEvent.CLICK,this.§[!M§);
         this.§=!Q§();
      }
      
      private function §=!Q§() : void
      {
         (§7!j§.getItemByName("Textfield_CollectedUserEggs") as §]$!§).setText(StringUtil.substitute("We’d like to thank everyone for participating. \nYou personally collected {0} Easter Eggs. As a small thank you here’s 30 Bird Coins for participating.",§+3§(AngryBirdsBase.singleton.dataModel).§&!?§.§["6§.toString()));
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         close();
      }
      
      private function §3!E§(param1:MouseEvent) : void
      {
         this.§[!v§ = new §5$!§();
         this.§[!v§.addEventListener(Event.COMPLETE,this.§9#L§);
         this.§[!v§.addEventListener(IOErrorEvent.IO_ERROR,this.§[^§);
         this.§[!v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[^§);
         this.§[!v§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§2Z§);
         this.§[!v§.addEventListener(§>#J§.§-$%§,this.§[^§);
         this.§[!v§.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc2_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/claimfreebundle/Easter2013DrawPrice");
         _loc2_.method = URLRequestMethod.GET;
         this.§[!v§.load(_loc2_);
      }
      
      protected function §2Z§(param1:Event) : void
      {
      }
      
      protected function §[^§(param1:IOErrorEvent) : void
      {
      }
      
      protected function §9#L§(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(param1.currentTarget.data)
         {
            _loc2_ = param1.currentTarget.data;
            if(!AngryBirdsBase.singleton.dataModel.userProgress.hasTutorialBeenSeen(§!#Q§.§7!9§ + §7B§.§2!k§))
            {
               (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).saveTutorialSeen(§!#Q§.§7!9§ + §7B§.§2!k§);
            }
            §%h§.§3!]§.§1!0§(_loc2_,false);
            if(_loc2_.errorCode)
            {
               throw _loc2_.errorCode;
            }
         }
         close();
      }
      
      private function §[!M§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new §]"1§(§[W§.NORMAL,§<d§.DEFAULT));
      }
      
      override public function dispose() : void
      {
         if(this.§[!v§)
         {
            this.§[!v§.removeEventListener(Event.COMPLETE,this.§9#L§);
            this.§[!v§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[^§);
            this.§[!v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§[^§);
            this.§[!v§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§2Z§);
            this.§[!v§.removeEventListener(§>#J§.§-$%§,this.§[^§);
         }
         super.dispose();
      }
   }
}
