package §^!m§
{
   import §!!j§.Popup;
   import §-^§.§4-§;
   import §-^§.§45§;
   import §-^§.§7!6§;
   import §<-§.§!!K§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §8!v§ extends Popup
   {
      
      private static var §]6§:Boolean;
      
      private static var §9^§:§45§;
      
      private static var §+7§:Object;
       
      
      public function §8!v§(param1:§&!G§, param2:StatePopupManager)
      {
         super(§2!z§.§ _§.Views.PopupView_Valentine[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@!@§);
      }
      
      public static function sendRequest() : void
      {
         if(!§]6§)
         {
            §]6§ = true;
            §9^§ = new §45§();
            §9^§.addEventListener(Event.COMPLETE,§94§);
            §9^§.addEventListener(IOErrorEvent.IO_ERROR,§2!@§);
            §9^§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§2!@§);
            §9^§.addEventListener(§4-§.§4!m§,§2!@§);
            §9^§.load(§7!6§.§7V§(AngryBirdsFP11.§[!S§ + "/claimvalentinebundle"));
            §!!K§.§@!S§();
         }
      }
      
      protected static function §2!@§(param1:Event) : void
      {
         if(param1.type == §4-§.§4!m§)
         {
            §4!i§.§>t§(§;0§.§-!W§);
         }
         else
         {
            §4!i§.§^!P§();
         }
      }
      
      private static function §94§(param1:Event) : void
      {
         var e:Event = param1;
         var parsingFailed:Boolean = false;
         try
         {
            §+7§ = JSON.parse(§9^§.data);
         }
         catch(e:Error)
         {
            parsingFailed = true;
         }
         if(!parsingFailed && §+7§.success == true)
         {
            §4!i§.§[!g§();
         }
         else
         {
            §4!i§.§^!P§();
         }
         §9^§ = null;
      }
      
      private function §@!@§(param1:MouseEvent) : void
      {
         this.deActivate();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         close();
      }
   }
}
