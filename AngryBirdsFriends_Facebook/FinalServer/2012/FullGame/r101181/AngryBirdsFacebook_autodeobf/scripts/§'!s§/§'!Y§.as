package §'!s§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §3!7§.§?!F§;
   import §<a§.§+!B§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §'!Y§ extends Popup
   {
      
      private static var §>!J§:Boolean;
      
      private static var §=F§:§0]§;
      
      private static var §"y§:Object;
       
      
      public function §'!Y§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupView_Valentine[0],param1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§@"$§);
      }
      
      public static function sendRequest() : void
      {
         if(!§>!J§)
         {
            §>!J§ = true;
            §=F§ = new §0]§();
            §=F§.addEventListener(Event.COMPLETE,§5!^§);
            §=F§.addEventListener(IOErrorEvent.IO_ERROR,§0"1§);
            §=F§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,§0"1§);
            §=F§.addEventListener(§+!D§.§25§,§0"1§);
            §=F§.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/claimvalentinebundle"));
            §+!B§.§ "D§();
         }
      }
      
      protected static function §0"1§(param1:Event) : void
      {
         if(param1.type == §+!D§.§25§)
         {
            §%?§.§6!7§(§-d§.§]x§);
         }
         else
         {
            §%?§.§4!>§();
         }
      }
      
      private static function §5!^§(param1:Event) : void
      {
         var e:Event = param1;
         var parsingFailed:Boolean = false;
         try
         {
            §"y§ = JSON.parse(§=F§.data);
         }
         catch(e:Error)
         {
            parsingFailed = true;
         }
         if(!parsingFailed && §"y§.success == true)
         {
            §%?§.§[x§();
            §?!F§.§;"§.§>G§(§"y§.items);
         }
         else
         {
            §%?§.§4!>§();
         }
         §=F§ = null;
      }
      
      private function §@"$§(param1:MouseEvent) : void
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
