package §@!P§
{
   import § !9§.§'!U§;
   import §!!L§.§&!R§;
   import §!!a§.§9G§;
   import §+R§.§0O§;
   import §,f§.§=!0§;
   import §-?§.§?Q§;
   import §1!'§.HighscoreSidebar;
   import §2!a§.§?O§;
   import §3!`§.§8h§;
   import §3!`§.§]&§;
   import §6l§.§#!Z§;
   import §8S§.§%!>§;
   import §=F§.§"n§;
   import §>!8§.§4!0§;
   import §>!8§.§71§;
   
   public class §;"§ extends §3!%§
   {
      
      public static const §'2§:String = "ChapterSelectionState";
       
      
      private var §5!7§:§%!>§ = null;
      
      private var mChapterTween0:§]&§ = null;
      
      private var mChapterTween2:§]&§ = null;
      
      public function §;"§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#j§ = new §?O§(75,0,0,1);
         §+!`§ = new §4!0§(this);
         §+!`§.init(§71§.§#X§.Views.View_ChapterSelection[0]);
         this.§5!7§ = new §=!0§(§"n§.§[b§,"INGAME_THEME_3",false,3);
      }
      
      override public function activate() : void
      {
         super.activate();
         §@<§.enableHighScoreTab(true);
         if(§0O§.§=&§)
         {
            §0O§.§=&§.start();
         }
         §"n§.§[b§.§+!U§(true);
         §"n§.§[b§.§9'§(true);
         §"n§.§[b§.clearLevel();
         §"n§.§51§(this.§5!7§);
         this.§5!7§.init();
         §=i§.§ !A§();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§<!C§();
         §+!`§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §+!`§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §+!`§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §+!`§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         §@<§.changeState(HighscoreSidebar.§-!G§);
         §@<§.loadScoreTable(HighscoreSidebar.§7!I§);
         §@<§.enableLogOutButton(true);
      }
      
      private function §<!C§() : void
      {
         if(this.mChapterTween0 != null)
         {
            this.mChapterTween0.stop();
            this.mChapterTween0 = null;
         }
         if(this.mChapterTween2 != null)
         {
            this.mChapterTween2.stop();
            this.mChapterTween2 = null;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&!R§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §"n§.§5]§.update(param1);
         if(mNextState.length > 0)
         {
            return §&!R§.STATE_STATUS_COMPLETED;
         }
         return §&!R§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §&m§.§'2§;
               break;
            case "CHAPTER2":
               §'!U§.playSound("Menu_Confirm");
               §9G§.§=!1§ = 1;
               mNextState = §!7§.§'2§;
               break;
            case "CHAPTER0":
               §'!U§.playSound("Menu_Confirm");
               §9G§.§=!1§ = 0;
               mNextState = §2>§.§'2§;
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §8h§.§`G§.§[O§(§+!`§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween2.play();
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §8h§.§`G§.§[O§(§+!`§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween0.play();
               break;
            case "CHAPTER2OUT":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §8h§.§`G§.§[O§(§+!`§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§8h§.§]!#§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER0OUT":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §8h§.§`G§.§[O§(§+!`§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§8h§.§]!#§);
               this.mChapterTween0.play();
               break;
            case "VIDEOLINK":
               §=i§.§<!?§(false);
               §+!`§.getItemByName("MovieClip_SoundOff").setVisibility(!§=i§.§&!c§());
               this.§76§();
         }
      }
      
      private function §76§() : void
      {
         §?Q§.§'Y§("openURL","html/video.jsp?v=XNDAzOTA0MzA0");
      }
   }
}
