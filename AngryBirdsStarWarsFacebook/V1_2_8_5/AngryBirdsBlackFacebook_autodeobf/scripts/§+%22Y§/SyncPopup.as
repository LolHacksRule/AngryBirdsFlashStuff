package §+"Y§
{
   import §+"x§.AbstractPopup;
   import §8!h§.§-V§;
   import §[!H§.§^x§;
   
   public class SyncPopup extends AbstractPopup
   {
      
      public static const §-"§:String = "SyncPopup";
       
      
      public function SyncPopup(param1:int, param2:int)
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_Sync[0],§-"§);
      }
      
      override protected function init() : void
      {
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
