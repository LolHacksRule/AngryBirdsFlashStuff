package §9!Q§
{
   import §&!h§.§]V§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §4!C§.§"!m§;
   import §4!C§.§]!X§;
   import §4!C§.§^!g§;
   import §9#§.Popup;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §1T§ extends Popup
   {
      
      private static var §6!k§:Boolean;
      
      private static var §0!a§:§"!m§;
      
      private static var §,<§:Object;
       
      
      public function §1T§(param1:§ C§, param2:StatePopupManager)
      {
         super(dynamic.§[6§.Views.PopupView_Valentine[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+B§);
      }
      
      public static function sendRequest() : void
      {
         if(!§6!k§)
         {
            §6!k§ = true;
            §0!a§ = new §"!m§();
            §0!a§.addEventListener(Event.COMPLETE,§^!J§);
            §0!a§.addEventListener(IOErrorEvent.IO_ERROR,§"!v§);
            §0!a§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§"!v§);
            §0!a§.addEventListener(§^!g§.§]P§,§"!v§);
            §0!a§.load(§]!X§.§#l§(AngryBirdsFP11.§6S§ + "/claimvalentinebundle"));
            §]V§.§[P§();
         }
      }
      
      protected static function §"!v§(param1:Event) : void
      {
         if(param1.type == §^!g§.§]P§)
         {
            §7o§.§-Y§(§2!S§.§2u§);
         }
         else
         {
            §7o§.§ "§();
         }
      }
      
      private static function §^!J§(param1:Event) : void
      {
         var e:Event = param1;
         var parsingFailed:Boolean = false;
         try
         {
            §,<§ = JSON.parse(§0!a§.data);
         }
         catch(e:Error)
         {
            parsingFailed = true;
         }
         if(!parsingFailed && §,<§.success == true)
         {
            §7o§.§,!h§();
         }
         else
         {
            §7o§.§ "§();
         }
         §0!a§ = null;
      }
      
      private function §+B§(param1:MouseEvent) : void
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
