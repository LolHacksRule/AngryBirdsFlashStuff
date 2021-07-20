package §,!=§
{
   import § P§.§;v§;
   import §#v§.§#!?§;
   import §#v§.§=!Z§;
   import §'U§.§]#[§;
   import §0#d§.§<#u§;
   import §8§.§#$+§;
   import §<!=§.§;§;
   import §?§.§>"$§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §!a§ extends §=!-§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
       
      
      private var §]!q§:uint;
      
      private var §2$3§:uint = 5000;
      
      private var §5#<§:int = 10;
      
      protected var §"Z§:MovieClip;
      
      private var §0!Y§:Vector.<§;v§>;
      
      public function §!a§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "GoldenEggsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         super.initView();
         this.§"Z§ = new §@`§.§4!i§("GoldenEggsLevelSelection")();
         §[">§.mClip.addChild(this.§"Z§);
         this.§]%§();
      }
      
      override protected function moveToPage(param1:int, param2:Boolean = false) : void
      {
      }
      
      override protected function gotoNextPage() : void
      {
      }
      
      override protected function gotoPrevPage() : void
      {
      }
      
      private function §]%§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§;v§ = null;
         this.§0!Y§ = new Vector.<§;v§>(this.§5#<§);
         var _loc1_:int = 1;
         while(_loc1_ <= this.§5#<§)
         {
            _loc2_ = "1000-" + _loc1_;
            _loc3_ = this.§"Z§["egg" + _loc1_];
            (_loc4_ = new §;v§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§+"c§);
            this.§0!Y§[_loc1_] = _loc4_;
            _loc1_++;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§=!Z§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name != "1000")
         {
            §!$§.visible = false;
            §7P§(§<!B§.STATE_NAME);
            return;
         }
         §!$§.visible = true;
         (§>"$§.§<_§ as §8G§).§0"n§.§'"C§ = false;
         (§>"$§.§<_§ as §8G§).§?"0§(§<#u§.§4$&§);
         if(§>"$§.§3#'§.background)
         {
            §>"$§.§3#'§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §!$§.setText(_loc3_,"TextField_LevelName");
         §!$§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§1#N§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§5#A§(_loc2_),"Textfield_CollectedStars");
         §!$§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§;]§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§ !m§(_loc2_),"Textfield_ME_Score");
         §!$§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
         §!$§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
         §!$§.getItemByName("Button_Prev").setVisibility(false);
         §!$§.getItemByName("Button_Next").setVisibility(false);
         §!$§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
         var _loc4_:Object = _loc2_.§?p§(0);
         §"?§ = new §;#1§(_loc4_.red,_loc4_.green,_loc4_.blue,1);
         §!$§.getItemByName("MovieClip_ColorFade").changeMovieClip(§"?§);
         this.§3#`§();
         this.§]!q§ = getTimer();
         §>"$§.§<_§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §9"m§();
      }
      
      override public function deActivate() : void
      {
         §>"$§.§<_§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(getTimer() - this.§]!q§ >= this.§2$3§)
         {
            this.§]!q§ = getTimer();
            this.§3#`§();
         }
      }
      
      private function §3#`§() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= this.§5#<§)
         {
            this.updateEgg(_loc1_);
            _loc1_++;
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         this.§0!Y§[param1].updateEgg();
      }
      
      protected function §+"c§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         var _loc2_:String = §;v§(param1.currentTarget).§,"2§;
         §8G§.§%#S§.§<#m§(_loc2_);
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
