package § #j§
{
   import § "L§.§23§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §##x§.§7$<§;
   import §3"V§.§ b§;
   import §3"V§.§9$8§;
   import §^"3§.§`$4§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §%#r§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §%#_§:§9$8§;
       
      
      protected var §;"e§:MovieClip;
      
      protected var §`$D§:String;
      
      protected var §-!K§:§[#=§;
      
      protected var §2V§:Boolean;
      
      protected var §&#N§:§23§;
      
      protected var §<$=§:TextField;
      
      private var §9"r§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§[#=§, param6:Boolean = true)
      {
         super(param1,param2,§false§.§4#;§.Popups.Popup_Tutorial[0],ID);
         this.§`$D§ = param4;
         this.§-!K§ = param5;
         this.§2V§ = param6;
         §`!d§ = true;
         this.§;"e§ = param3;
         this.§;"e§.gotoAndStop(1);
         this.§;"e§.name = "MovieClip_TutorialClip";
      }
      
      public function get §,$1§() : String
      {
         return this.§`$D§;
      }
      
      public function get title() : String
      {
         return this.§-!K§.solve(this.§,$1§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §;#'§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §;#'§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§;"e§);
         this.§<$=§ = TextField(§;#'§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§<$=§.text = this.title;
         this.§&#N§ = §23§(§;#'§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §"!c§();
         §0#l§ = new §4"W§(param1,§;#'§.mClip.stage,1000 / 60);
         if(this.§2V§)
         {
            §0#l§.addEventListener(§4"W§.§3B§,this.§3#R§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§%#_§)
         {
            §%#_§ = § b§.playSound(§%#r§,§ b§.§1#-§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!AngryBirdsBase.singleton.popupManager.isPopupInQueueById(TutorialPopup.ID) && §%#_§)
         {
            §%#_§.stop();
            §%#_§.§[!p§();
            §%#_§ = null;
         }
         super.hide(param1);
      }
      
      protected function §3#R§(param1:Event) : void
      {
         if(§0#l§)
         {
            §0#l§.removeEventListener(§4"W§.§3B§,this.§3#R§);
         }
         this.§2V§ = false;
         this.§&#N§.visible = !this.§2V§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §;#'§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §7$<§.§3"4§)
         {
            this.§&#N§.visible = !this.§2V§;
            _loc2_.visible = true;
         }
         if(param1 == §7$<§.§=#C§)
         {
            this.§&#N§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §7$<§.§']§)
         {
            this.§&#N§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§2V§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§0#l§)
         {
            §0#l§.removeEventListener(§4"W§.§3B§,this.§3#R§);
         }
         this.§;"e§.gotoAndStop(this.§;"e§.totalFrames);
         super.dispose();
      }
   }
}
