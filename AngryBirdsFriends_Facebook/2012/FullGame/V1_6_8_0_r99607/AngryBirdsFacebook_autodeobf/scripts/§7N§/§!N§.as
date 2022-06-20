package §7N§
{
   import §+"§.§'!0§;
   import §9"%§.§"!n§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §<!<§.§%!#§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §!N§ extends Popup
   {
      
      private static var §#!S§:Boolean;
      
      private static var §["!§:§,!S§;
      
      private static var §&!X§:Object;
       
      
      public function §!N§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupView_Valentine[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§-'§);
      }
      
      public static function sendRequest() : void
      {
         if(!§#!S§)
         {
            §#!S§ = true;
            §["!§ = new §,!S§();
            §["!§.addEventListener(Event.COMPLETE,§ !q§);
            §["!§.addEventListener(IOErrorEvent.IO_ERROR,§class§);
            §["!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§class§);
            §["!§.addEventListener(§"!n§.§"+§,§class§);
            §["!§.load(§4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/claimvalentinebundle"));
            §%!#§.§?]§();
         }
      }
      
      protected static function §class§(param1:Event) : void
      {
         if(param1.type == §"!n§.§"+§)
         {
            §43§.§ "6§(§]@§.§76§);
         }
         else
         {
            §43§.§?!S§();
         }
      }
      
      private static function § !q§(param1:Event) : void
      {
         var e:Event = param1;
         var parsingFailed:Boolean = false;
         try
         {
            §&!X§ = JSON.parse(§["!§.data);
         }
         catch(e:Error)
         {
            parsingFailed = true;
         }
         if(!parsingFailed && §&!X§.success == true)
         {
            §43§.§[-§();
            §'!0§.§8c§.§,d§(§&!X§.items);
         }
         else
         {
            §43§.§?!S§();
         }
         §["!§ = null;
      }
      
      private function §-'§(param1:MouseEvent) : void
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
