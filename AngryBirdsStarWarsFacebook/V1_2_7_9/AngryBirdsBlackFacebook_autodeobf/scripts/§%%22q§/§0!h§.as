package §%"q§
{
   import §[!`§.§#e§;
   import §`"8§.§-!w§;
   import flash.events.MouseEvent;
   
   public class §0!h§ extends §,L§
   {
       
      
      public function §0!h§()
      {
         super();
         §&"_§.btnGift.addEventListener(MouseEvent.CLICK,this.§+B§);
         §&"_§.btnGift.stop();
         §&"_§.btnGift.buttonMode = true;
         §&"_§.tabChildren = false;
         §&"_§.tabEnabled = false;
      }
      
      override public function update() : void
      {
         super.update();
         if(!data)
         {
            return;
         }
         §&"_§.btnGift.gotoAndStop(1);
         if(§%"r§ || !§-!w§(§;"@§.singleton.dataModel).§'"l§.§1!I§(§#!P§.userId))
         {
            §&"_§.btnGift.visible = §&"_§.btnGift.mouseEnabled = false;
         }
         else
         {
            §&"_§.btnGift.visible = §&"_§.btnGift.mouseEnabled = true;
         }
      }
      
      public function §6#+§() : void
      {
         §&"_§.btnGift.gotoAndStop(2);
         §&"_§.btnGift.mouseEnabled = false;
         §&"_§.btnGift.buttonMode = false;
      }
      
      private function §+B§(param1:MouseEvent) : void
      {
         var _loc2_:§#e§ = new §#e§(§#e§.§<!r§,true);
         _loc2_.data = §#!P§.userId;
         dispatchEvent(_loc2_);
      }
   }
}
