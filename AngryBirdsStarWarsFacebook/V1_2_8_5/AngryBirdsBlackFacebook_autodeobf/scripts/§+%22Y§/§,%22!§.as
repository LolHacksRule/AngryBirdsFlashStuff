package §+"Y§
{
   import §+"x§.AbstractPopup;
   import §5"Q§.§5"s§;
   import §[!H§.§^x§;
   import flash.events.MouseEvent;
   
   public class §,"!§ extends AbstractPopup
   {
       
      
      private var §,"R§:Popup_Error;
      
      public function §,"!§(param1:int, param2:int)
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_Error[0]);
      }
      
      override protected function init() : void
      {
         this.§,"R§ = Popup_Error(§[#,§.mClip);
         §[#,§.getItemByName("Container_Content").mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§>O§);
      }
      
      protected function §>O§(param1:MouseEvent) : void
      {
         §4"#§.singleton.§,]§();
         §5"s§.§<!8§("window.location.reload");
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
