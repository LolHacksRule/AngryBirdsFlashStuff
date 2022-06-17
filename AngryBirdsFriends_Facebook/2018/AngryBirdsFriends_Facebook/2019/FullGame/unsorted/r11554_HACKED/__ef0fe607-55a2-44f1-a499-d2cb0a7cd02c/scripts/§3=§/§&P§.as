package §3=§
{
   import §!"e§.§#E§;
   import §"$=§.§'![§;
   import §"$=§.§[§;
   import §#M§.§<"c§;
   import §3"G§.§16§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §>#O§.§]U§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §&P§ extends §%"#§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
       
      
      private var §<$8§:uint;
      
      private var § #4§:uint = 5000;
      
      private var §<!7§:int = 10;
      
      protected var §%#M§:MovieClip;
      
      private var §1"@§:Vector.<§#E§>;
      
      public function §&P§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "GoldenEggsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         super.initView();
         this.§%#M§ = new §2"O§.§`>§("GoldenEggsLevelSelection")();
         §[q§.mClip.addChild(this.§%#M§);
         this.§,$=§();
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
      
      private function §,$=§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§#E§ = null;
         this.§1"@§ = new Vector.<§#E§>(this.§<!7§);
         var _loc1_:int = 1;
         while(_loc1_ <= this.§<!7§)
         {
            _loc2_ = "1000-" + _loc1_;
            _loc3_ = this.§%#M§["egg" + _loc1_];
            (_loc4_ = new §#E§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§^!L§);
            this.§1"@§[_loc1_] = _loc4_;
            _loc1_++;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§[#5§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name != "1000")
         {
            §<"`§.visible = false;
            §%D§(§8$8§.STATE_NAME);
            return;
         }
         §<"`§.visible = true;
         (§%"T§.§>$<§ as §'"a§).§ !g§.§8"N§ = false;
         (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§'#r§);
         if(§%"T§.§;`§.background)
         {
            §%"T§.§;`§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §<"`§.setText(_loc3_,"TextField_LevelName");
         §<"`§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§=! §(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§8!`§(_loc2_),"Textfield_CollectedStars");
         §<"`§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§8#C§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]-§(_loc2_),"Textfield_ME_Score");
         §<"`§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
         §<"`§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
         §<"`§.getItemByName("Button_Prev").setVisibility(false);
         §<"`§.getItemByName("Button_Next").setVisibility(false);
         §<"`§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
         var _loc4_:Object = _loc2_.§3P§(0);
         §>5§ = new §]U§(_loc4_.red,_loc4_.green,_loc4_.blue,1);
         §<"`§.getItemByName("MovieClip_ColorFade").changeMovieClip(§>5§);
         this.§2!B§();
         this.§<$8§ = getTimer();
         §%"T§.§>$<§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §?$ §();
      }
      
      override public function deActivate() : void
      {
         §%"T§.§>$<§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.deActivate();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(getTimer() - this.§<$8§ >= this.§ #4§)
         {
            this.§<$8§ = getTimer();
            this.§2!B§();
         }
      }
      
      private function §2!B§() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= this.§<!7§)
         {
            this.updateEgg(_loc1_);
            _loc1_++;
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         this.§1"@§[param1].updateEgg();
      }
      
      protected function §^!L§(param1:MouseEvent) : void
      {
         §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
         var _loc2_:String = §#E§(param1.currentTarget).§7#G§;
         §'"a§.§!!8§.§7!%§(_loc2_);
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
