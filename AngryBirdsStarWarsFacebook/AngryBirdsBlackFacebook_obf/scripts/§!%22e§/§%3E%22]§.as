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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_Error[0]);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§#H§ = Popup_Error(§^c§.mClip);
            do
            {
               §^c§.getItemByName("Container_Content").mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§#p§);
            }
            while(_loc2_ && this);
            
         }
      }
      
      protected function §#p§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §4#;§.singleton.§<#'§();
            do
            {
               §""v§.§&R§("window.location.reload");
            }
            while(_loc3_);
            
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.show(param1);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.hide(param1);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.dispose();
         }
      }
   }
}
