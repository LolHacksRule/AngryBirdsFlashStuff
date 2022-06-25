package §=!4§
{
   import §"!5§.§,!!§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import flash.events.MouseEvent;
   
   public class §+x§ extends Popup
   {
       
      
      public function §+x§(param1:§!!1§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(§0!&§.§'^§.Views.PopupView_Warning[0],param1);
            if(_loc3_)
            {
               mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§'u§);
               if(!(_loc4_ && this))
               {
                  addr63:
                  §,!!§.pause();
                  if(!_loc4_)
                  {
                     addr67:
                     AngryBirdsFP11.§@t§.§>!1§();
                  }
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr67);
      }
      
      private function §'u§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.deActivate();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.deActivate();
            if(!(_loc1_ && _loc1_))
            {
               §§goto(addr43);
            }
            §§goto(addr52);
         }
         addr43:
         §,!!§.resume();
         if(!(_loc1_ && _loc2_))
         {
            addr52:
            this.close();
         }
      }
   }
}
