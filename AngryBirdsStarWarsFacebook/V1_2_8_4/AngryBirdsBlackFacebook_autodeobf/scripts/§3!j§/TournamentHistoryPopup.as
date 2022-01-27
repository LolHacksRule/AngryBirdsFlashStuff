package §3!j§
{
   import §!b§.§]!s§;
   import §+"x§.AbstractPopup;
   import §8!h§.§-V§;
   import §8§.§0>§;
   import §9"U§.§7"1§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public final class TournamentHistoryPopup extends AbstractPopup
   {
       
      
      private var §>",§:§0>§;
      
      private var §3D§:Boolean = false;
      
      public function TournamentHistoryPopup(param1:int, param2:int, param3:String = "TournamentHistoryPopup")
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_PreviousResults[0],param3);
      }
      
      override protected function init() : void
      {
         super.init();
         if(§7"1§(§4"#§.singleton.dataModel).§1z§.§""l§ != null && §7"1§(§4"#§.singleton.dataModel).§1z§.§""l§.length > 0)
         {
            this.§3D§ = true;
         }
         var _loc1_:MovieClip = §[#,§.getItemByName("Container_Content").mClip;
         var _loc2_:MovieClip = §[#,§.getItemByName("MovieClip_ContentMask").mClip;
         _loc1_.mask = _loc2_;
         if(this.§3D§)
         {
            this.§>",§ = new §0>§(550,344,null,§+#4§,5,5);
            _loc1_.itemsContainer.addChild(this.§>",§.scrollerSprite);
            this.§4!#§();
         }
         _loc1_.mcStatuses.visible = !this.§3D§;
         if(!this.§3D§)
         {
            _loc1_.mcStatuses.gotoAndStop(3);
         }
         this.§[U§();
         §]!s§.§1!f§(§]!s§.§->§);
         _loc1_.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(param1.delta < 0)
         {
            this.scroll(this.§>",§.visibleItemsCount);
         }
         else if(param1.delta > 0)
         {
            this.scroll(-this.§>",§.visibleItemsCount);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         if(param2)
         {
            §=Q§.§`!A§("misc_menubuttonproceed_1");
         }
         switch(param2.toUpperCase())
         {
            case "UP":
               this.scroll(-this.§>",§.visibleItemsCount);
               break;
            case "DOWN":
               this.scroll(this.§>",§.visibleItemsCount);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      private function §4!#§() : void
      {
         this.§>",§.data = §7"1§(§4"#§.singleton.dataModel).§1z§.§""l§;
         this.§>",§.refresh();
         this.§[U§();
      }
      
      private function scroll(param1:int) : void
      {
         if(param1 != 0)
         {
            this.§>",§.scroll(param1);
            this.§[U§();
         }
      }
      
      private function §[U§() : void
      {
         var _loc1_:Boolean = this.§3D§ && this.§>",§.data && this.§>",§.offset != 0;
         var _loc2_:Boolean = this.§3D§ && this.§>",§.data && this.§>",§.data.length > 0 && this.§>",§.offset != this.§>",§.data.length - this.§>",§.visibleItemsCount;
         §[#,§.getItemByName("Button_ScrollUp").visible = _loc1_;
         §[#,§.getItemByName("Button_ScrollDown").visible = _loc2_;
      }
   }
}
