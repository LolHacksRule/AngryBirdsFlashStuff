package §=N§
{
   import §,"v§.§@§;
   import §0R§.§0!8§;
   import §4##§.§7!B§;
   import §4m§.AbstractPopup;
   import §9!&§.§,!m§;
   import §^!`§.§%n§;
   import §`"8§.§-!w§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public final class TournamentHistoryPopup extends AbstractPopup
   {
       
      
      private var §#!T§:§,!m§;
      
      private var §[i§:Boolean = false;
      
      public function TournamentHistoryPopup(param1:int, param2:int, param3:String = "TournamentHistoryPopup")
      {
         super(param1,param2,§%n§.§ set§.Popups.Popup_PreviousResults[0],param3);
      }
      
      override protected function init() : void
      {
         super.init();
         if(§-!w§(§;"@§.singleton.dataModel).§2!J§.§"F§ != null && §-!w§(§;"@§.singleton.dataModel).§2!J§.§"F§.length > 0)
         {
            this.§[i§ = true;
         }
         var _loc1_:MovieClip = §,r§.getItemByName("Container_Content").mClip;
         var _loc2_:MovieClip = §,r§.getItemByName("MovieClip_ContentMask").mClip;
         _loc1_.mask = _loc2_;
         if(this.§[i§)
         {
            this.§#!T§ = new §,!m§(550,344,null,§29§,5,5);
            _loc1_.itemsContainer.addChild(this.§#!T§.scrollerSprite);
            this.§'D§();
         }
         _loc1_.mcStatuses.visible = !this.§[i§;
         if(!this.§[i§)
         {
            _loc1_.mcStatuses.gotoAndStop(3);
         }
         this.§ e§();
         §0!8§.§0e§(§0!8§.§7!0§);
         _loc1_.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.scroll(this.§#!T§.visibleItemsCount);
         }
         else if(param1.delta > 0)
         {
            this.scroll(-this.§#!T§.visibleItemsCount);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         if(param2)
         {
            §@§.§=Y§("misc_menubuttonproceed_1");
         }
         switch(param2.toUpperCase())
         {
            case "UP":
               this.scroll(-this.§#!T§.visibleItemsCount);
               break;
            case "DOWN":
               this.scroll(this.§#!T§.visibleItemsCount);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §'D§() : void
      {
         this.§#!T§.data = §-!w§(§;"@§.singleton.dataModel).§2!J§.§"F§;
         this.§#!T§.refresh();
         this.§ e§();
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§#!T§.scroll(param1);
            this.§ e§();
         }
      }
      
      private function § e§() : void
      {
         var _loc1_:Boolean = this.§[i§ && this.§#!T§.data && this.§#!T§.offset != 0;
         var _loc2_:Boolean = this.§[i§ && this.§#!T§.data && this.§#!T§.data.length > 0 && this.§#!T§.offset != this.§#!T§.data.length - this.§#!T§.visibleItemsCount;
         §,r§.getItemByName("Button_ScrollUp").visible = _loc1_;
         §,r§.getItemByName("Button_ScrollDown").visible = _loc2_;
      }
   }
}
