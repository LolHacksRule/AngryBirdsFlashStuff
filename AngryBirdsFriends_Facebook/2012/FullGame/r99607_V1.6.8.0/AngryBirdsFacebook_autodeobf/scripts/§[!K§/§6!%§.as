package §[!K§
{
   import §#""§.§+!J§;
   import §+I§.§9!%§;
   import §;^§.§""3§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import com.AngryBirds.friendsbar.§2!h§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §6!%§ extends §%!_§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
       
      
      private var §`!u§:uint;
      
      private var § true§:uint = 5000;
      
      private var §;T§:int = 10;
      
      protected var §2!<§:MovieClip;
      
      private var §8h§:Vector.<§""3§>;
      
      public function §6!%§(param1:Boolean = false, param2:String = "GoldenEggsState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         super.initView();
         this.§2!<§ = new §#!J§.§1!Y§("GoldenEggsLevelSelection")();
         §?Z§.mClip.addChild(this.§2!<§);
         this.§^4§();
      }
      
      private function §^4§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§""3§ = null;
         this.§8h§ = new Vector.<§""3§>(this.§;T§);
         var _loc1_:int = 1;
         while(_loc1_ <= this.§;T§)
         {
            _loc2_ = "1000-" + _loc1_;
            _loc3_ = this.§2!<§["egg" + _loc1_];
            (_loc4_ = new §""3§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§?T§);
            this.§8h§[_loc1_] = _loc4_;
            _loc1_++;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:§]f§ = LevelManager.§8!§();
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.name != "1000")
         {
            §2"-§.visible = false;
            mNextState = §=B§.STATE_NAME;
            return;
         }
         §2"-§.visible = true;
         (§9!%§.§ !W§ as § W§).§""B§.§0!o§ = false;
         (§9!%§.§ !W§ as § W§).§+!9§("");
         (§9!%§.§ !W§ as § W§).§+"#§(§2!h§.§if §);
         if(§9!%§.§!!M§.background)
         {
            §9!%§.§!!M§.background.§+!3§();
         }
         var _loc2_:String = LevelManager.§8!§().writtenName;
         §2"-§.setText(_loc2_,"TextField_LevelName");
         §2"-§.setText(AngryBirdsFP11.sUserProgress.§@y§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§56§(_loc1_),"Textfield_CollectedStars");
         §2"-§.setText(AngryBirdsFP11.sUserProgress.§8!^§(_loc1_) + "/" + AngryBirdsFP11.sUserProgress.§6!X§(_loc1_),"Textfield_ME_Score");
         §2"-§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
         §2"-§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
         §2"-§.getItemByName("Button_Prev").setVisibility(false);
         §2"-§.getItemByName("Button_Next").setVisibility(false);
         §2"-§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
         var _loc3_:Object = _loc1_.§2!u§(0);
         §#!i§ = new §+!J§(_loc3_.red,_loc3_.green,_loc3_.blue,1);
         §2"-§.getItemByName("MovieClip_ColorFade").changeMovieClip(§#!i§);
         this.§#@§();
         this.§`!u§ = getTimer();
         §9!%§.§ !W§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override public function deActivate() : void
      {
         §9!%§.§ !W§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(getTimer() - this.§`!u§ >= this.§ true§)
         {
            this.§`!u§ = getTimer();
            this.§#@§();
         }
      }
      
      private function §#@§() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= this.§;T§)
         {
            this.updateEgg(_loc1_);
            _loc1_++;
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         this.§8h§[param1].updateEgg();
      }
      
      protected function §?T§(param1:MouseEvent) : void
      {
         var _loc2_:String = §""3§(param1.currentTarget).§8!e§;
         § W§.§%!y§.§!!Z§(_loc2_);
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
