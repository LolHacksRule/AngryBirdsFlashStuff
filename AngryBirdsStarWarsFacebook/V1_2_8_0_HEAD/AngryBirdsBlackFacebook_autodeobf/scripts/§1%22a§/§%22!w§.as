package §1"a§
{
   import §,"N§.§@#B§;
   import §]Q§.§&#P§;
   import flash.events.MouseEvent;
   
   public class §"!w§ extends §;"2§
   {
       
      
      public function §"!w§()
      {
         super();
         §5!-§.btnGift.addEventListener(MouseEvent.CLICK,this.§##G§);
         §5!-§.btnGift.stop();
         §5!-§.btnGift.buttonMode = true;
         §5!-§.tabChildren = false;
         §5!-§.tabEnabled = false;
      }
      
      override public function update() : void
      {
         super.update();
         if(!data)
         {
            return;
         }
         §5!-§.btnGift.gotoAndStop(1);
         if(§?r§ || !§@#B§(§4#;§.singleton.dataModel).§;!A§.§%#-§(§6!1§.userId))
         {
            §5!-§.btnGift.visible = §5!-§.btnGift.mouseEnabled = false;
         }
         else
         {
            §5!-§.btnGift.visible = §5!-§.btnGift.mouseEnabled = true;
         }
      }
      
      public function §5"S§() : void
      {
         §5!-§.btnGift.gotoAndStop(2);
         §5!-§.btnGift.mouseEnabled = false;
         §5!-§.btnGift.buttonMode = false;
      }
      
      private function §##G§(param1:MouseEvent) : void
      {
         var _loc2_:§&#P§ = new §&#P§(§&#P§.§%"n§,true);
         _loc2_.data = §6!1§.userId;
         dispatchEvent(_loc2_);
      }
   }
}
