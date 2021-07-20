package §<#o§
{
   import §#,§.§]$+§;
   import §%!-§.§?l§;
   import §,!Q§.§6"n§;
   import §0!s§.AbstractPopup;
   import §8#K§.§-!o§;
   import §8#K§.§3Z§;
   import §?"Q§.§2!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §,!L§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §5$?§:§-!o§;
       
      
      protected var §&s§:MovieClip;
      
      protected var §0e§:String;
      
      protected var §%#]§:§3"3§;
      
      protected var §4!M§:Boolean;
      
      protected var §=!+§:§]$+§;
      
      protected var §@"v§:TextField;
      
      private var §##%§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§3"3§, param6:Boolean = true)
      {
         super(param1,param2,§?l§.§3m§.Popups.Popup_Tutorial[0],ID);
         this.§0e§ = param4;
         this.§%#]§ = param5;
         this.§4!M§ = param6;
         §6!^§ = true;
         this.§&s§ = param3;
         this.§&s§.gotoAndStop(1);
         this.§&s§.name = "MovieClip_TutorialClip";
      }
      
      public function get §7!;§() : String
      {
         return this.§0e§;
      }
      
      public function get title() : String
      {
         return this.§%#]§.solve(this.§7!;§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §&!M§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §&!M§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§&s§);
         this.§@"v§ = TextField(§&!M§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§@"v§.text = this.title;
         this.§=!+§ = §]$+§(§&!M§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §6'§();
         §5!?§ = new §#!D§(param1,§&!M§.mClip.stage,1000 / 60);
         if(this.§4!M§)
         {
            §5!?§.addEventListener(§#!D§.§4"y§,this.§5$0§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§5$?§)
         {
            §5$?§ = §3Z§.playSound(§,!L§,§3Z§.§8#R§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!AngryBirdsBase.singleton.popupManager.isPopupInQueueById(TutorialPopup.ID) && §5$?§)
         {
            §5$?§.stop();
            §5$?§.§9#b§();
            §5$?§ = null;
         }
         super.hide(param1);
      }
      
      protected function §5$0§(param1:Event) : void
      {
         if(§5!?§)
         {
            §5!?§.removeEventListener(§#!D§.§4"y§,this.§5$0§);
         }
         this.§4!M§ = false;
         this.§=!+§.visible = !this.§4!M§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §&!M§.getItemByName("MovieClip_Title").mClip;
         if(param1 == §2!Z§.§1M§)
         {
            this.§=!+§.visible = !this.§4!M§;
            _loc2_.visible = true;
         }
         if(param1 == §2!Z§.§@K§)
         {
            this.§=!+§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == §2!Z§.§%$§)
         {
            this.§=!+§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§4!M§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§5!?§)
         {
            §5!?§.removeEventListener(§#!D§.§4"y§,this.§5$0§);
         }
         this.§&s§.gotoAndStop(this.§&s§.totalFrames);
         super.dispose();
      }
   }
}
