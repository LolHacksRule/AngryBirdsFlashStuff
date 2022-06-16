package §"!@§
{
   import §'",§.§6#s§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §6#z§.§@D§;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §@!M§.§!"p§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class § !v§ extends §false§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
       
      
      private var §36§:uint;
      
      private var §=$>§:uint = 5000;
      
      private var §9#o§:int = 10;
      
      protected var §9#j§:MovieClip;
      
      private var §^"W§:Vector.<§@D§>;
      
      public function § !v§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "GoldenEggsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         super.initView();
         this.§9#j§ = new §!"f§.§##?§("GoldenEggsLevelSelection")();
         § #h§.mClip.addChild(this.§9#j§);
         this.§ #[§();
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
      
      private function § #[§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§@D§ = null;
         this.§^"W§ = new Vector.<§@D§>(this.§9#o§);
         var _loc1_:int = 1;
         while(_loc1_ <= this.§9#o§)
         {
            _loc2_ = "1000-" + _loc1_;
            _loc3_ = this.§9#j§["egg" + _loc1_];
            (_loc4_ = new §@D§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§'"p§);
            this.§^"W§[_loc1_] = _loc4_;
            _loc1_++;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§"m§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name != "1000")
         {
            §`!H§.visible = false;
            §1"h§(§1S§.STATE_NAME);
            return;
         }
         §`!H§.visible = true;
         (§3#U§.§9#^§ as §,A§).§%#@§.§"!m§ = false;
         (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§6"'§);
         if(§3#U§.§#$4§.background)
         {
            §3#U§.§#$4§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §`!H§.setText(_loc3_,"TextField_LevelName");
         §`!H§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§1n§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]!u§(_loc2_),"Textfield_CollectedStars");
         §`!H§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§2!1§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§&#c§(_loc2_),"Textfield_ME_Score");
         §`!H§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
         §`!H§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
         §`!H§.getItemByName("Button_Prev").setVisibility(false);
         §`!H§.getItemByName("Button_Next").setVisibility(false);
         §`!H§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
         var _loc4_:Object = _loc2_.§!#A§(0);
         §"!7§ = new §6#s§(_loc4_.red,_loc4_.green,_loc4_.blue,1);
         §`!H§.getItemByName("MovieClip_ColorFade").changeMovieClip(§"!7§);
         this.§ ;§();
         this.§36§ = getTimer();
         §3#U§.§9#^§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §,"j§();
      }
      
      override public function deActivate() : void
      {
         §3#U§.§9#^§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.deActivate();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(getTimer() - this.§36§ >= this.§=$>§)
         {
            this.§36§ = getTimer();
            this.§ ;§();
         }
      }
      
      private function § ;§() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= this.§9#o§)
         {
            this.updateEgg(_loc1_);
            _loc1_++;
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         this.§^"W§[param1].updateEgg();
      }
      
      protected function §'"p§(param1:MouseEvent) : void
      {
         §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
         var _loc2_:String = §@D§(param1.currentTarget).§=$$§;
         §,A§.§2#O§.§&#!§(_loc2_);
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
