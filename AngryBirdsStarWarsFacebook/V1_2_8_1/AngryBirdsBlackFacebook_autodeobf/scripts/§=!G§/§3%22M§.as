package §=!G§
{
   import §"d§.§%-§;
   import §9"U§.§7"1§;
   import flash.events.MouseEvent;
   
   public class §3"M§ extends §4!C§
   {
       
      
      public function §3"M§()
      {
         super();
         §,# §.btnGift.addEventListener(MouseEvent.CLICK,this.§<,§);
         §,# §.btnGift.stop();
         §,# §.btnGift.buttonMode = true;
         §,# §.tabChildren = false;
         §,# §.tabEnabled = false;
      }
      
      override public function update() : void
      {
         super.update();
         if(!data)
         {
            return;
         }
         §,# §.btnGift.gotoAndStop(1);
         if(§<2§ || !§7"1§(§4"#§.singleton.dataModel).§6!I§.§?0§(§7d§.userId))
         {
            §,# §.btnGift.visible = §,# §.btnGift.mouseEnabled = false;
         }
         else
         {
            §,# §.btnGift.visible = §,# §.btnGift.mouseEnabled = true;
         }
      }
      
      public function §;N§() : void
      {
         §,# §.btnGift.gotoAndStop(2);
         §,# §.btnGift.mouseEnabled = false;
         §,# §.btnGift.buttonMode = false;
      }
      
      private function §<,§(param1:MouseEvent) : void
      {
         var _loc2_:§%-§ = new §%-§(§%-§.§-q§,true);
         _loc2_.data = §7d§.userId;
         dispatchEvent(_loc2_);
      }
   }
}
