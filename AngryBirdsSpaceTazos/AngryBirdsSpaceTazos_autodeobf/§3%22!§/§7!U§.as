package §3"!§
{
   import § !Y§.§&$§;
   import §!?§.ServerCallEvent;
   import §0N§.§0!g§;
   import §3C§.§1!x§;
   import §3C§.§9!;§;
   import §3C§.§^p§;
   import §5X§.§+!#§;
   import §6"4§.§&a§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§&!>§;
   import flash.events.MouseEvent;
   
   public class §7!U§ extends §9!;§
   {
      
      private static var §^!n§:Class = §4"!§;
       
      
      private var §1!k§:§'"1§;
      
      public function §7!U§()
      {
         §>"2§ = true;
         §1"$§ = true;
         super(§1#§.§1">§,§8"6§.§ K§,§0!g§.§[!y§(§^!n§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§1!k§ = new §'"1§();
         this.§1!k§.addEventListener(ServerCallEvent.§-U§,this.§,$§);
         this.§1!k§.addEventListener(ServerCallEvent.§+!K§,this.§!"$§);
         (§[S§.getItemByName("TextField_UserNameFieldForgotPassword") as §&!>§).§ !'§.maxChars = §&a§.§%!!§;
         (§[S§.getItemByName("TextField_UserNameFieldForgotPassword") as §&!>§).§ !'§.restrict = §&a§.§'"<§;
         (§[S§.getItemByName("TextField_UserNameFieldForgotPassword") as §&!>§).§ !'§.addEventListener(MouseEvent.CLICK,this.§'h§);
      }
      
      private function §'h§(param1:MouseEvent) : void
      {
         if(param1.target.parent == §[S§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §[S§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
         }
      }
      
      private function §,$§(param1:ServerCallEvent) : void
      {
         close();
         § !g§.§;!'§.§>";§.openPopup(new §1!x§());
      }
      
      private function §!"$§(param1:ServerCallEvent) : void
      {
         this.§1I§(param1.text);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         switch(param2)
         {
            case "SEND_PASSWORD":
               _loc4_ = (_loc4_ = (§[S§.getItemByName("TextField_UserNameFieldForgotPassword") as §&!>§).§5!m§()).toLowerCase();
               if(_loc5_ = this.§1!k§.§>!!§(_loc4_))
               {
                  this.§1I§(_loc5_);
               }
               break;
            case "CANCEL_SEND_PASSWORD":
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1,param2);
      }
      
      override public function dispose() : void
      {
         this.§1!k§.removeEventListener(ServerCallEvent.§-U§,this.§,$§);
         this.§1!k§.removeEventListener(ServerCallEvent.§+!K§,this.§!"$§);
         this.§1!k§.dispose();
         this.§1!k§ = null;
         (§[S§.getItemByName("TextField_UserNameFieldForgotPassword") as §&!>§).§ !'§.removeEventListener(MouseEvent.CLICK,this.§'h§);
      }
      
      private function §1I§(param1:String) : void
      {
         §[S§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         § !g§.§;!'§.§>";§.openPopup(new §^p§(param1,§^p§.§>F§));
      }
      
      override public function updateTextFields() : void
      {
         §&$§.§[!1§.updateTextFields(§[S§,"ForgotPassword_Popup");
      }
   }
}
