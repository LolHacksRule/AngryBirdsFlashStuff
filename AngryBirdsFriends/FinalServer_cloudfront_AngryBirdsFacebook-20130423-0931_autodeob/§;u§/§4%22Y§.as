package §;u§
{
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §>0§.§3"K§;
   import §@!"§.§?l§;
   import §`!6§.§!D§;
   import com.AngryBirds.friendsbar.§]a§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §4"Y§ extends §7D§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
       
      
      private var §%"M§:uint;
      
      private var §&!L§:uint = 5000;
      
      private var §6!s§:int = 10;
      
      protected var §0!I§:MovieClip;
      
      private var §@"G§:Vector.<§!D§>;
      
      public function §4"Y§(param1:Boolean = false, param2:String = "GoldenEggsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         super.initView();
         this.§0!I§ = new §?q§.§ q§("GoldenEggsLevelSelection")();
         §4W§.mClip.addChild(this.§0!I§);
         this.§3[§();
      }
      
      private function §3[§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§!D§ = null;
         this.§@"G§ = new Vector.<§!D§>(this.§6!s§);
         var _loc1_:int = 1;
         while(_loc1_ <= this.§6!s§)
         {
            _loc2_ = "1000-" + _loc1_;
            _loc3_ = this.§0!I§["egg" + _loc1_];
            (_loc4_ = new §!D§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§9c§);
            this.§@"G§[_loc1_] = _loc4_;
            _loc1_++;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:§3-§ = null;
         super.activate();
         _loc1_ = LevelManager.§`"Q§();
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.name != "1000")
         {
            §2"@§.visible = false;
            mNextState = §9"@§.STATE_NAME;
            return;
         }
         §2"@§.visible = true;
         (§?l§.§ "G§ as §%"S§).§96§.§<!J§ = false;
         (§?l§.§ "G§ as §%"S§).§!n§("");
         (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§^!r§);
         if(§?l§.§'h§.background)
         {
            §?l§.§'h§.background.§!!K§();
         }
         var _loc2_:String = LevelManager.§`"Q§().writtenName;
         §2"@§.setText(_loc2_,"TextField_LevelName");
         §2"@§.setText(AngryBirdsFP11.sUserProgress.§[!a§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§3W§(_loc1_),"Textfield_CollectedStars");
         §2"@§.setText(AngryBirdsFP11.sUserProgress.§]L§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§="'§(_loc1_),"Textfield_ME_Score");
         §2"@§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
         §2"@§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
         §2"@§.getItemByName("Button_Prev").setVisibility(false);
         §2"@§.getItemByName("Button_Next").setVisibility(false);
         §2"@§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
         var _loc3_:Object = _loc1_.§-D§(0);
         §;!@§ = new §3"K§(_loc3_.red,_loc3_.green,_loc3_.blue,1);
         §2"@§.getItemByName("MovieClip_ColorFade").changeMovieClip(§;!@§);
         this.§3"P§();
         this.§%"M§ = getTimer();
         §?l§.§ "G§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override public function deActivate() : void
      {
         §?l§.§ "G§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(getTimer() - this.§%"M§ >= this.§&!L§)
         {
            this.§%"M§ = getTimer();
            this.§3"P§();
         }
      }
      
      private function §3"P§() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= this.§6!s§)
         {
            this.updateEgg(_loc1_);
            _loc1_++;
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         this.§@"G§[param1].updateEgg();
      }
      
      protected function §9c§(param1:MouseEvent) : void
      {
         var _loc2_:String = §!D§(param1.currentTarget).§4^§;
         §%"S§.§!C§.§5!N§(_loc2_);
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
