package §&#k§
{
   import §'!U§.§0!?§;
   import §1#T§.§ #<§;
   import §6"r§.§0"<§;
   import §8§.§#$+§;
   import §8§.§@!"§;
   import §<!O§.§@#`§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      protected static const §^k§:String = "bird_tutorial_1";
      
      public static const ID:String = "TutorialPopup";
      
      private static var §&$&§:§@!"§;
       
      
      protected var §4!J§:MovieClip;
      
      protected var §+"!§:String;
      
      protected var §3! §:§@X§;
      
      protected var §+#]§:Boolean;
      
      protected var §,#D§:§0"<§;
      
      protected var §[Z§:TextField;
      
      private var §"e§:Boolean = false;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§@X§, param6:Boolean = true)
      {
         super(param1,param2,§@#`§.§#!c§.Popups.Popup_Tutorial[0],ID);
         this.§+"!§ = param4;
         this.§3! § = param5;
         this.§+#]§ = param6;
         §9D§ = true;
         this.§4!J§ = param3;
         this.§4!J§.gotoAndStop(1);
         this.§4!J§.name = "MovieClip_TutorialClip";
      }
      
      public function get §<"$§() : String
      {
         return this.§+"!§;
      }
      
      public function get title() : String
      {
         return this.§3! §.solve(this.§<"$§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §7!j§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §7!j§.getItemByName("Container_Animation").mClip;
         _loc2_.addChild(this.§4!J§);
         this.§[Z§ = TextField(§7!j§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
         this.§[Z§.text = this.title;
         this.§,#D§ = §0"<§(§7!j§.getItemByName("Container_CloseButton"));
         _loc2_.mask = _loc1_;
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §@!<§();
         §]!g§ = new §0#R§(param1,§7!j§.mClip.stage,1000 / 60);
         if(this.§+#]§)
         {
            §]!g§.addEventListener(§0#R§.§;"T§,this.§`"e§);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         if(!§&$&§)
         {
            §&$&§ = §#$+§.playSound(§^k§,§#$+§.§#"k§,int.MAX_VALUE);
         }
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!AngryBirdsBase.singleton.popupManager.isPopupInQueueById(TutorialPopup.ID) && §&$&§)
         {
            §&$&§.stop();
            §&$&§.§+Z§();
            §&$&§ = null;
         }
         super.hide(param1);
      }
      
      protected function §`"e§(param1:Event) : void
      {
         if(§]!g§)
         {
            §]!g§.removeEventListener(§0#R§.§;"T§,this.§`"e§);
         }
         this.§+#]§ = false;
         this.§,#D§.visible = !this.§+#]§;
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc2_:MovieClip = §7!j§.getItemByName("MovieClip_Title").mClip;
         if(param1 == § #<§.§8#9§)
         {
            this.§,#D§.visible = !this.§+#]§;
            _loc2_.visible = true;
         }
         if(param1 == § #<§.§ #§)
         {
            this.§,#D§.visible = false;
            _loc2_.visible = false;
         }
         if(param1 == § #<§.§+"r§)
         {
            this.§,#D§.visible = false;
            _loc2_.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         if(param2.toUpperCase() == "CLOSE" && this.§+#]§)
         {
            return;
         }
         super.onUIInteraction(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(§]!g§)
         {
            §]!g§.removeEventListener(§0#R§.§;"T§,this.§`"e§);
         }
         this.§4!J§.gotoAndStop(this.§4!J§.totalFrames);
         super.dispose();
      }
   }
}
