package § "v§
{
   import §#!'§.§6"]§;
   import §,!,§.§4§;
   import §,"N§.§@#B§;
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §[!m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public final class TournamentHistoryPopup extends AbstractPopup
   {
       
      
      private var §;"E§:§4#9§;
      
      private var §2#@§:Boolean = false;
      
      public function TournamentHistoryPopup(param1:int, param2:int, param3:String = "TournamentHistoryPopup")
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_PreviousResults[0],param3);
      }
      
      override protected function init() : void
      {
         super.init();
         if(§@#B§(§4#;§.singleton.dataModel).§!!C§.§-j§ != null && §@#B§(§4#;§.singleton.dataModel).§!!C§.§-j§.length > 0)
         {
            this.§2#@§ = true;
         }
         var _loc1_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         var _loc2_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         _loc1_.mask = _loc2_;
         if(this.§2#@§)
         {
            this.§;"E§ = new §4#9§(550,344,null,§"#4§,5,5);
            _loc1_.itemsContainer.addChild(this.§;"E§.scrollerSprite);
            this.§!"1§();
         }
         _loc1_.mcStatuses.visible = !this.§2#@§;
         if(!this.§2#@§)
         {
            _loc1_.mcStatuses.gotoAndStop(3);
         }
         this.§9!V§();
         §6"]§.§2![§(§6"]§.§8!1§);
         _loc1_.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.scroll(this.§;"E§.visibleItemsCount);
         }
         else if(param1.delta > 0)
         {
            this.scroll(-this.§;"E§.visibleItemsCount);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         if(param2)
         {
            §?!r§.§"#_§("misc_menubuttonproceed_1");
         }
         switch(param2.toUpperCase())
         {
            case "UP":
               this.scroll(-this.§;"E§.visibleItemsCount);
               break;
            case "DOWN":
               this.scroll(this.§;"E§.visibleItemsCount);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §!"1§() : void
      {
         this.§;"E§.data = §@#B§(§4#;§.singleton.dataModel).§!!C§.§-j§;
         this.§;"E§.refresh();
         this.§9!V§();
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§;"E§.scroll(param1);
            this.§9!V§();
         }
      }
      
      private function §9!V§() : void
      {
         var _loc1_:Boolean = this.§2#@§ && this.§;"E§.data && this.§;"E§.offset != 0;
         var _loc2_:Boolean = this.§2#@§ && this.§;"E§.data && this.§;"E§.data.length > 0 && this.§;"E§.offset != this.§;"E§.data.length - this.§;"E§.visibleItemsCount;
         §^c§.getItemByName("Button_ScrollUp").visible = _loc1_;
         §^c§.getItemByName("Button_ScrollDown").visible = _loc2_;
      }
   }
}
