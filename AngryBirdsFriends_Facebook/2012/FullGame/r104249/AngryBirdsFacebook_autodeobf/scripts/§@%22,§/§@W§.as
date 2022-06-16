package §@",§
{
   import §2J§.§]H§;
   import §5!G§.§&2§;
   import §@!4§.§^C§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   import com.AngryBirds.friendsbar.§=!7§;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §@W§ extends §,!z§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
       
      
      private var §9!5§:uint;
      
      private var §]!H§:uint = 5000;
      
      private var §0!h§:int = 10;
      
      protected var §3!z§:MovieClip;
      
      private var §,!N§:Vector.<§]H§>;
      
      public function §@W§(param1:Boolean = false, param2:String = "GoldenEggsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         super.initView();
         this.§3!z§ = new §>"5§.§6s§("GoldenEggsLevelSelection")();
         §]y§.mClip.addChild(this.§3!z§);
         this.§2!;§();
      }
      
      private function §2!;§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§]H§ = null;
         this.§,!N§ = new Vector.<§]H§>(this.§0!h§);
         var _loc1_:int = 1;
         while(_loc1_ <= this.§0!h§)
         {
            _loc2_ = "1000-" + _loc1_;
            _loc3_ = this.§3!z§["egg" + _loc1_];
            (_loc4_ = new §]H§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§=!k§);
            this.§,!N§[_loc1_] = _loc4_;
            _loc1_++;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:§=!-§ = LevelManager.§6!6§();
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.name != "1000")
         {
            §2!K§.visible = false;
            mNextState = §[2§.STATE_NAME;
            return;
         }
         §2!K§.visible = true;
         (§&2§.§5!k§ as §,"I§).§=_§.§3_§ = false;
         (§&2§.§5!k§ as §,"I§).§'"'§("");
         (§&2§.§5!k§ as §,"I§).§'!e§(§=!7§.§&"5§);
         if(§&2§.§],§.background)
         {
            §&2§.§],§.background.§#"§();
         }
         var _loc2_:String = LevelManager.§6!6§().writtenName;
         §2!K§.setText(_loc2_,"TextField_LevelName");
         §2!K§.setText(AngryBirdsFP11.sUserProgress.§9!C§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§!5§(_loc1_),"Textfield_CollectedStars");
         §2!K§.setText(AngryBirdsFP11.sUserProgress.§8!;§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§+"1§(_loc1_),"Textfield_ME_Score");
         §2!K§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
         §2!K§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
         §2!K§.getItemByName("Button_Prev").setVisibility(false);
         §2!K§.getItemByName("Button_Next").setVisibility(false);
         §2!K§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
         var _loc3_:Object = _loc1_.§"?§(0);
         §!F§ = new §^C§(_loc3_.red,_loc3_.green,_loc3_.blue,1);
         §2!K§.getItemByName("MovieClip_ColorFade").changeMovieClip(§!F§);
         this.§0"5§();
         this.§9!5§ = getTimer();
         §&2§.§5!k§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override public function deActivate() : void
      {
         §&2§.§5!k§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(getTimer() - this.§9!5§ >= this.§]!H§)
         {
            this.§9!5§ = getTimer();
            this.§0"5§();
         }
      }
      
      private function §0"5§() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= this.§0!h§)
         {
            this.updateEgg(_loc1_);
            _loc1_++;
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         this.§,!N§[param1].updateEgg();
      }
      
      protected function §=!k§(param1:MouseEvent) : void
      {
         var _loc2_:String = §]H§(param1.currentTarget).§'"B§;
         §,"I§.§&q§.§7-§(_loc2_);
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
