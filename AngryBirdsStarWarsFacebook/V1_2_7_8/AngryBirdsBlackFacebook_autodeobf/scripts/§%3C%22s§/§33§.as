package §<"s§
{
   import § 0§.§@Y§;
   import §4m§.AbstractPopup;
   import §^!`§.§%n§;
   import flash.events.MouseEvent;
   
   public class §33§ extends AbstractPopup
   {
       
      
      private var §,"d§:Popup_Error;
      
      public function §33§(param1:int, param2:int)
      {
         super(param1,param2,§%n§.§ set§.Popups.Popup_Error[0]);
      }
      
      override protected function init() : void
      {
         this.§,"d§ = Popup_Error(§,r§.mClip);
         §,r§.getItemByName("Container_Content").mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§+"1§);
      }
      
      protected function §+"1§(param1:MouseEvent) : void
      {
         §;"@§.singleton.§@_§();
         §@Y§.§7"H§("window.location.reload");
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
