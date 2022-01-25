package §>I§
{
   import § !C§.§6!W§;
   import § ]§.HighscoreSidebar;
   import §"!_§.§%4§;
   import §"m§.§#e§;
   import §%!^§.§"=§;
   import §&"§.§!!_§;
   import §&V§.§9t§;
   import §+&§.§?y§;
   import §+x§.§-6§;
   import §0!_§.§>!'§;
   import §0!b§.§#!=§;
   import §7H§.§'!Y§;
   import §7H§.§8Q§;
   import §^6§.§5@§;
   import §^6§.§;l§;
   
   public class §91§ extends §for §
   {
      
      public static const § !P§:String = "ChapterSelectionState";
       
      
      private var §5t§:§#e§ = null;
      
      private var mChapterTween0:§'!Y§ = null;
      
      private var mChapterTween2:§'!Y§ = null;
      
      public function §91§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]Z§ = new §>!'§(75,0,0,1);
         §^!;§ = new §;l§(this);
         §^!;§.init(§5@§.§^!1§.Views.View_ChapterSelection[0]);
         this.§5t§ = new §!!_§(§#!=§.§&![§,"INGAME_THEME_3",false,3);
      }
      
      override public function activate() : void
      {
         super.activate();
         §^c§.enableHighScoreTab(true);
         if(§?y§.§,u§)
         {
            §?y§.§,u§.start();
         }
         §#!=§.§&![§.§[!&§(true);
         §#!=§.§&![§.§0!D§(true);
         §#!=§.§&![§.clearLevel();
         §#!=§.§5!7§(this.§5t§);
         this.§5t§.init();
         §-!#§.§each §();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§#A§();
         §^!;§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §^!;§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §^!;§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §^!;§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         §^c§.changeState(HighscoreSidebar.§7!3§);
         §^c§.loadScoreTable(HighscoreSidebar.§5!<§);
         §^c§.enableLogOutButton(true);
      }
      
      private function §#A§() : void
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
         if(_loc2_ != §6!W§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §#!=§.§3!W§.update(param1);
         if(mNextState.length > 0)
         {
            return §6!W§.STATE_STATUS_COMPLETED;
         }
         return §6!W§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "showCredits":
               mNextState = §;!X§.§ !P§;
               break;
            case "CHAPTER2":
               §-6§.§6!#§("Menu_Confirm");
               §"=§.§<q§ = 1;
               mNextState = § o§.§ !P§;
               break;
            case "CHAPTER0":
               §-6§.§6!#§("Menu_Confirm");
               §"=§.§<q§ = 0;
               mNextState = §<-§.§ !P§;
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §8Q§.§]!D§.§^w§(§^!;§.getItemByName("Container_Chapter2").mClip,{
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
               this.mChapterTween0 = §8Q§.§]!D§.§^w§(§^!;§.getItemByName("Container_Chapter0").mClip,{
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
               this.mChapterTween2 = §8Q§.§]!D§.§^w§(§^!;§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§8Q§.§6^§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER0OUT":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §8Q§.§]!D§.§^w§(§^!;§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§8Q§.§6^§);
               this.mChapterTween0.play();
               break;
            case "VIDEOLINK":
               §-!#§.§#+§(false);
               §^!;§.getItemByName("MovieClip_SoundOff").setVisibility(!§-!#§.§'M§());
               this.§34§();
         }
      }
      
      private function §34§() : void
      {
         §%4§.§5!3§("openURL","html/video.jsp?v=XNDAzOTA0MzA0");
      }
   }
}
