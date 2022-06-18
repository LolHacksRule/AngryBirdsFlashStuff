package §`!u§
{
   import § "v§.§+o§;
   import § "v§.§4$4§;
   import §2$;§.§!"e§;
   import §9!6§.AbstractPopup;
   import §<8§.§8!g§;
   import §>#s§.§@^§;
   import §[#A§.§&n§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §8#b§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §9N§:§+o§;
       
      
      protected var §!#p§:MovieClip;
      
      protected var §3! §:String;
      
      protected var §!"c§:§-"w§;
      
      protected var §#R§:Boolean;
      
      protected var §@$@§:§!"e§;
      
      protected var §="-§:TextField;
      
      private var §4!y§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§-"w§, param6:Boolean = true)
      {
         super(param1,param2,§&n§.§7a§.Popups.Popup_Tutorial[0],ID);
         this.§3! § = param4;
         this.§!"c§ = param5;
         this.§#R§ = param6;
         §"$3§ = true;
         this.§!#p§ = param3;
         this.§!#p§.gotoAndStop(1);
         this.§!#p§.name = "MovieClip_TutorialClip";
      }
      
      public function get §@$>§() : String
      {
         return this.§3! §;
      }
      
      public function get title() : String
      {
         return this.§!"c§.solve(this.§@$>§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §'o§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §'o§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§!#p§);
         this.§="-§ = TextField(§'o§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§="-§.text = this.title;
         this.§@$@§ = §!"e§(§'o§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §!!B§();
         §]"I§ = new §4!U§(param1,§'o§.mClip.stage,1000 / 60);
         if(this.§#R§)
         {
            §]"I§.addEventListener(§4!U§.§6#z§,this.§]#T§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§9N§)
         {
            §9N§ = §4$4§.playSound(§8#b§,§4$4§.§6!H§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!AngryBirdsBase.singleton.popupManager.isPopupInQueueById(TutorialPopup.ID) && §9N§)
         {
            §9N§.stop();
            §9N§.§%'§();
            §9N§ = null;
         }
         super.hide(param1);
      }
      
      protected function §]#T§(param1:Event) : void
      {
         if(§]"I§)
         {
            §]"I§.removeEventListener(§4!U§.§6#z§,this.§]#T§);
         }
         this.§#R§ = false;
         this.§@$@§.visible = !this.§#R§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §'o§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §@^§.§=z§)
         {
            this.§@$@§.visible = !this.§#R§;
            _loc2_.visible = true;
         }
         if(param1 == §@^§.§0K§)
         {
            this.§@$@§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §@^§.§1!A§)
         {
            this.§@$@§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§#R§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§]"I§)
         {
            §]"I§.removeEventListener(§4!U§.§6#z§,this.§]#T§);
         }
         this.§!#p§.gotoAndStop(this.§!#p§.totalFrames);
         super.dispose();
      }
   }
}
