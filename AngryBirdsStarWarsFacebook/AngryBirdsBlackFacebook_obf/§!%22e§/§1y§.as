package §!"e§
{
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §="V§.§""v§;
   import §[!m§.AbstractPopup;
   import com.angrybirds.§,!q§;
   import flash.display.StageDisplayState;
   
   public class §1y§ extends AbstractPopup
   {
      
      public static const §%!h§:String = "ServerUpdatePopup";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%!h§ = "ServerUpdatePopup";
         }
      }
      
      public function §1y§(param1:int, param2:int)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_ServerUpdate[0],§%!h§);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!q§.pause();
         }
         do
         {
            §4#;§.singleton.§<#'§();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.show(param1);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.hide(param1);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            if(param2 == "RELOAD")
            {
               do
               {
                  §4#;§.singleton.stage.displayState = StageDisplayState.NORMAL;
                  do
                  {
                     §""v§.§&R§("window.location.reload");
                  }
                  while(_loc5_);
                  
               }
               while(!(_loc4_ || this));
               
               addr51:
            }
            return;
         }
         §§goto(addr51);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.dispose();
         }
      }
   }
}
