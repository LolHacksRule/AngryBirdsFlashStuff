package §#"H§
{
   import §%#A§.§]!_§;
   import §1#W§.§!#&§;
   import §1#W§.§="D§;
   import §8#D§.§=>§;
   import §<"1§.§'"S§;
   import §<#m§.AbstractPopup;
   import §]@§.§8"A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §[T§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §%#5§:§="D§;
       
      
      protected var §#§:MovieClip;
      
      protected var §%"2§:String;
      
      protected var §'#s§:§6#T§;
      
      protected var §6#Z§:Boolean;
      
      protected var §9#_§:§]!_§;
      
      protected var §"#s§:TextField;
      
      private var §%K§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§6#T§, param6:Boolean = true)
      {
         super(param1,param2,§=>§.§%" §.Popups.Popup_Tutorial[0],ID);
         this.§%"2§ = param4;
         this.§'#s§ = param5;
         this.§6#Z§ = param6;
         §9<§ = true;
         this.§#§ = param3;
         this.§#§.gotoAndStop(1);
         this.§#§.name = "MovieClip_TutorialClip";
      }
      
      public function get § !?§() : String
      {
         return this.§%"2§;
      }
      
      public function get title() : String
      {
         return this.§'#s§.solve(this.§ !?§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §1"6§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §1"6§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§#§);
         this.§"#s§ = TextField(§1"6§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§"#s§.text = this.title;
         this.§9#_§ = §]!_§(§1"6§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §@$&§();
         § !t§ = new §=#5§(param1,§1"6§.mClip.stage,1000 / 60);
         if(this.§6#Z§)
         {
            § !t§.addEventListener(§=#5§.§5$%§,this.§@#l§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§%#5§)
         {
            §%#5§ = §!#&§.playSound(§[T§,§!#&§.§>#c§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!AngryBirdsBase.singleton.popupManager.isPopupInQueueById(TutorialPopup.ID) && §%#5§)
         {
            §%#5§.stop();
            §%#5§.§[#S§();
            §%#5§ = null;
         }
         super.hide(param1);
      }
      
      protected function §@#l§(param1:Event) : void
      {
         if(§ !t§)
         {
            § !t§.removeEventListener(§=#5§.§5$%§,this.§@#l§);
         }
         this.§6#Z§ = false;
         this.§9#_§.visible = !this.§6#Z§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §1"6§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §8"A§.§+!f§)
         {
            this.§9#_§.visible = !this.§6#Z§;
            _loc2_.visible = true;
         }
         if(param1 == §8"A§.§7?§)
         {
            this.§9#_§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §8"A§.§+"Z§)
         {
            this.§9#_§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§6#Z§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§ !t§)
         {
            § !t§.removeEventListener(§=#5§.§5$%§,this.§@#l§);
         }
         this.§#§.gotoAndStop(this.§#§.totalFrames);
         super.dispose();
      }
   }
}
