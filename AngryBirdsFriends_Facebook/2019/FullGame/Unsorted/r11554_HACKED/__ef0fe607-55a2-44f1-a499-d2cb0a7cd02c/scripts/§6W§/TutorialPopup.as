package §6W§
{
   import § "q§.§@!'§;
   import §%#v§.§0"j§;
   import §4!n§.§'!,§;
   import §5!$§.§<c§;
   import §;$5§.AbstractPopup;
   import §>"9§.§1"T§;
   import §>"9§.§[#%§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const § &§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §2#1§:§1"T§;
       
      
      protected var §>!,§:MovieClip;
      
      protected var §+!H§:String;
      
      protected var §"#f§:§0"5§;
      
      protected var §>"T§:Boolean;
      
      protected var §@##§:§<c§;
      
      protected var §2!g§:TextField;
      
      private var §6#_§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§0"5§, param6:Boolean = true)
      {
         super(param1,param2,§0"j§.§-i§.Popups.Popup_Tutorial[0],ID);
         this.§+!H§ = param4;
         this.§"#f§ = param5;
         this.§>"T§ = param6;
         §'#h§ = true;
         this.§>!,§ = param3;
         this.§>!,§.gotoAndStop(1);
         this.§>!,§.name = "MovieClip_TutorialClip";
      }
      
      public function get §`#K§() : String
      {
         return this.§+!H§;
      }
      
      public function get title() : String
      {
         return this.§"#f§.solve(this.§`#K§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §8#Y§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §8#Y§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§>!,§);
         this.§2!g§ = TextField(§8#Y§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§2!g§.text = this.title;
         this.§@##§ = §<c§(§8#Y§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §-#q§();
         §[$2§ = new §>#@§(param1,§8#Y§.mClip.stage,1000 / 60);
         if(this.§>"T§)
         {
            §[$2§.addEventListener(§>#@§.§]q§,this.§`"m§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§2#1§)
         {
            §2#1§ = §[#%§.playSound(§ &§,§[#%§.§0"f§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!AngryBirdsBase.singleton.popupManager.isPopupInQueueById(TutorialPopup.ID) && §2#1§)
         {
            §2#1§.stop();
            §2#1§.§<"^§();
            §2#1§ = null;
         }
         super.hide(param1);
      }
      
      protected function §`"m§(param1:Event) : void
      {
         if(§[$2§)
         {
            §[$2§.removeEventListener(§>#@§.§]q§,this.§`"m§);
         }
         this.§>"T§ = false;
         this.§@##§.visible = !this.§>"T§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §8#Y§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §@!'§.§ F§)
         {
            this.§@##§.visible = !this.§>"T§;
            _loc2_.visible = true;
         }
         if(param1 == §@!'§.§ !H§)
         {
            this.§@##§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §@!'§.§1"V§)
         {
            this.§@##§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§>"T§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§[$2§)
         {
            §[$2§.removeEventListener(§>#@§.§]q§,this.§`"m§);
         }
         this.§>!,§.gotoAndStop(this.§>!,§.totalFrames);
         super.dispose();
      }
   }
}
