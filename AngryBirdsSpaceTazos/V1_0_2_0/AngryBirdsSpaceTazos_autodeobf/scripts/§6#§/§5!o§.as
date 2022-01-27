package §6#§
{
   import §!i§.§?"%§;
   import §""%§.ServerCallEvent;
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §'#§.§^4§;
   import §1!]§.§!!7§;
   import §1!]§.§%"%§;
   import §1!]§.§,!_§;
   import §4!t§.§95§;
   import §;+§.§3!n§;
   import flash.events.MouseEvent;
   
   public class §5!o§ extends §%"%§
   {
      
      private static var §<![§:Class = §^!I§;
       
      
      private var §""9§:§7",§;
      
      public function §5!o§()
      {
         §&"<§ = true;
         § !z§ = true;
         super(§&r§.§2!'§,§3o§.§0!n§,§=Q§.§%!g§(§<![§));
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.§""9§ = new §7",§();
         this.§""9§.addEventListener(ServerCallEvent.§ !5§,this.§]#§);
         this.§""9§.addEventListener(ServerCallEvent.§?!Q§,this.§"!A§);
         (§&#§.getItemByName("TextField_UserNameFieldForgotPassword") as §?"%§).§8!o§.maxChars = §3!n§.§7!m§;
         (§&#§.getItemByName("TextField_UserNameFieldForgotPassword") as §?"%§).§8!o§.restrict = §3!n§.§7!G§;
         (§&#§.getItemByName("TextField_UserNameFieldForgotPassword") as §?"%§).§8!o§.addEventListener(MouseEvent.CLICK,this.§else §);
      }
      
      private function §else §(param1:MouseEvent) : void
      {
         if(param1.target.parent == §&#§.getItemByName("TextField_UserNameFieldForgotPassword").mClip)
         {
            §&#§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(false);
         }
      }
      
      private function §]#§(param1:ServerCallEvent) : void
      {
         close();
         §&!h§.§ u§.§-"F§.openPopup(new §!!7§());
      }
      
      private function §"!A§(param1:ServerCallEvent) : void
      {
         this.§]8§(param1.text);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         switch(param2)
         {
            case "SEND_PASSWORD":
               _loc4_ = (_loc4_ = (§&#§.getItemByName("TextField_UserNameFieldForgotPassword") as §?"%§).§]!`§()).toLowerCase();
               if(_loc5_ = this.§""9§.§;b§(_loc4_))
               {
                  this.§]8§(_loc5_);
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
         this.§""9§.removeEventListener(ServerCallEvent.§ !5§,this.§]#§);
         this.§""9§.removeEventListener(ServerCallEvent.§?!Q§,this.§"!A§);
         this.§""9§.dispose();
         this.§""9§ = null;
         (§&#§.getItemByName("TextField_UserNameFieldForgotPassword") as §?"%§).§8!o§.removeEventListener(MouseEvent.CLICK,this.§else §);
      }
      
      private function §]8§(param1:String) : void
      {
         §&#§.getItemByName("MovieClip_ErrorLoginMarkEmailForgotPassword").setVisibility(true);
         §&!h§.§ u§.§-"F§.openPopup(new §,!_§(param1,§,!_§.§;V§));
      }
      
      override public function updateTextFields() : void
      {
         §^4§.§<"B§.updateTextFields(§&#§,"ForgotPassword_Popup");
      }
   }
}
