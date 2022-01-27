package §!"e§
{
   import §7!$§.§&$§;
   import §="V§.§""v§;
   import §[!m§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class §>"]§ extends AbstractPopup
   {
       
      
      private var §#H§:Popup_Error;
      
      public function §>"]§(param1:int, param2:int)
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_Error[0]);
      }
      
      override protected function init() : void
      {
         this.§#H§ = Popup_Error(§^c§.mClip);
         §^c§.getItemByName("Container_Content").mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§#p§);
      }
      
      protected function §#p§(param1:MouseEvent) : void
      {
         §4#;§.singleton.§<#'§();
         §""v§.§&R§("window.location.reload");
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
