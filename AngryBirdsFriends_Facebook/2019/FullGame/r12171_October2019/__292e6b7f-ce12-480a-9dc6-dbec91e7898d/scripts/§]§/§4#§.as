package §]§
{
   import §+`§.§%"q§;
   import §-!W§.§#l§;
   import §-#;§.§5#J§;
   import §3"V§.§ b§;
   import §7#$§.§3!,§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import §^"G§.§2+§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §4#§ extends §!=§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
       
      
      private var §75§:uint;
      
      private var §7"G§:uint = 5000;
      
      private var §5b§:int = 10;
      
      protected var §,"B§:MovieClip;
      
      private var §^m§:Vector.<§#l§>;
      
      public function §4#§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "GoldenEggsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         super.initView();
         this.§,"B§ = new §[a§.§8#k§("GoldenEggsLevelSelection")();
         §`"s§.mClip.addChild(this.§,"B§);
         this.§5#@§();
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
      
      private function §5#@§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§#l§ = null;
         this.§^m§ = new Vector.<§#l§>(this.§5b§);
         var _loc1_:int = 1;
         while(_loc1_ <= this.§5b§)
         {
            _loc2_ = "1000-" + _loc1_;
            _loc3_ = this.§,"B§["egg" + _loc1_];
            (_loc4_ = new §#l§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§=!o§);
            this.§^m§[_loc1_] = _loc4_;
            _loc1_++;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§3!,§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name != "1000")
         {
            §;!w§.visible = false;
            §3#§(§#!$§.STATE_NAME);
            return;
         }
         §;!w§.visible = true;
         (§]$?§.§;u§ as §@z§).§`L§.§8#P§ = false;
         (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§ <§);
         if(§]$?§.§2#§.background)
         {
            §]$?§.§2#§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §;!w§.setText(_loc3_,"TextField_LevelName");
         §;!w§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§`!t§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§<!S§(_loc2_),"Textfield_CollectedStars");
         §;!w§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§#!r§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§=#[§(_loc2_),"Textfield_ME_Score");
         §;!w§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
         §;!w§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
         §;!w§.getItemByName("Button_Prev").setVisibility(false);
         §;!w§.getItemByName("Button_Next").setVisibility(false);
         §;!w§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
         var _loc4_:Object = _loc2_.§^"H§(0);
         §##h§ = new §5#J§(_loc4_.red,_loc4_.green,_loc4_.blue,1);
         §;!w§.getItemByName("MovieClip_ColorFade").changeMovieClip(§##h§);
         this.§^!j§();
         this.§75§ = getTimer();
         §]$?§.§;u§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §<!J§();
      }
      
      override public function deActivate() : void
      {
         §]$?§.§;u§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.deActivate();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(getTimer() - this.§75§ >= this.§7"G§)
         {
            this.§75§ = getTimer();
            this.§^!j§();
         }
      }
      
      private function §^!j§() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= this.§5b§)
         {
            this.updateEgg(_loc1_);
            _loc1_++;
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         this.§^m§[param1].updateEgg();
      }
      
      protected function §=!o§(param1:MouseEvent) : void
      {
         § b§.playSound("Menu_Confirm",§ b§.§;$5§);
         var _loc2_:String = §#l§(param1.currentTarget).§5"&§;
         §@z§.§ !D§.§"#g§(_loc2_);
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
