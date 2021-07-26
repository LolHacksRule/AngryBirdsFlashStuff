package §2";§
{
   import § !j§.§4#c§;
   import §&0§.§1!Y§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import §1"l§.§`""§;
   import §5"t§.§<#r§;
   import §8#K§.§3Z§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §8!N§ extends §`"A§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
       
      
      private var § !0§:uint;
      
      private var §6"2§:uint = 5000;
      
      private var §@#M§:int = 10;
      
      protected var §3!]§:MovieClip;
      
      private var §2#k§:Vector.<§1!Y§>;
      
      public function §8!N§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "GoldenEggsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         super.initView();
         this.§3!]§ = new §6$A§.§1!m§("GoldenEggsLevelSelection")();
         §&!5§.mClip.addChild(this.§3!]§);
         this.§1"H§();
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
      
      private function §1"H§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§1!Y§ = null;
         this.§2#k§ = new Vector.<§1!Y§>(this.§@#M§);
         var _loc1_:int = 1;
         while(_loc1_ <= this.§@#M§)
         {
            _loc2_ = "1000-" + _loc1_;
            _loc3_ = this.§3!]§["egg" + _loc1_];
            (_loc4_ = new §1!Y§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§!"$§);
            this.§2#k§[_loc1_] = _loc4_;
            _loc1_++;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§ T§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name != "1000")
         {
            §[$5§.visible = false;
            §1!L§(§9#7§.STATE_NAME);
            return;
         }
         §[$5§.visible = true;
         (§7n§.§-$<§ as § #v§).§?"_§.§=$<§ = false;
         (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§"!V§);
         if(§7n§.§6#K§.background)
         {
            §7n§.§6#K§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §[$5§.setText(_loc3_,"TextField_LevelName");
         §[$5§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§ $3§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§["B§(_loc2_),"Textfield_CollectedStars");
         §[$5§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§`c§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]""§(_loc2_),"Textfield_ME_Score");
         §[$5§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
         §[$5§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
         §[$5§.getItemByName("Button_Prev").setVisibility(false);
         §[$5§.getItemByName("Button_Next").setVisibility(false);
         §[$5§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
         var _loc4_:Object = _loc2_.§,$?§(0);
         §4!§ = new §<#r§(_loc4_.red,_loc4_.green,_loc4_.blue,1);
         §[$5§.getItemByName("MovieClip_ColorFade").changeMovieClip(§4!§);
         this.§#!8§();
         this.§ !0§ = getTimer();
         §7n§.§-$<§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §4"7§();
      }
      
      override public function deActivate() : void
      {
         §7n§.§-$<§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.deActivate();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(getTimer() - this.§ !0§ >= this.§6"2§)
         {
            this.§ !0§ = getTimer();
            this.§#!8§();
         }
      }
      
      private function §#!8§() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= this.§@#M§)
         {
            this.updateEgg(_loc1_);
            _loc1_++;
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         this.§2#k§[param1].updateEgg();
      }
      
      protected function §!"$§(param1:MouseEvent) : void
      {
         §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
         var _loc2_:String = §1!Y§(param1.currentTarget).§[#`§;
         § #v§.§1!!§.§+!r§(_loc2_);
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
