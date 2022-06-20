package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import §+!n§.§+!p§;
   import §,!m§.§;$1§;
   import §-"Y§.§"!1§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class §[!=§ extends § "g§
   {
      
      public static const STATE_NAME:String = "GoldenEggsState";
       
      
      private var §6"p§:uint;
      
      private var §&#v§:uint = 5000;
      
      private var §"#9§:int = 10;
      
      protected var §[#z§:MovieClip;
      
      private var §&"@§:Vector.<§;$1§>;
      
      public function §[!=§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "GoldenEggsState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override protected function initView() : void
      {
         super.initView();
         this.§[#z§ = new §=@§.§9!x§("GoldenEggsLevelSelection")();
         §<!_§.mClip.addChild(this.§[#z§);
         this.§[#J§();
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
      
      private function §[#J§() : void
      {
         var _loc2_:String = null;
         var _loc3_:MovieClip = null;
         var _loc4_:§;$1§ = null;
         this.§&"@§ = new Vector.<§;$1§>(this.§"#9§);
         var _loc1_:int = 1;
         while(_loc1_ <= this.§"#9§)
         {
            _loc2_ = "1000-" + _loc1_;
            _loc3_ = this.§[#z§["egg" + _loc1_];
            (_loc4_ = new §;$1§(_loc3_,_loc2_)).addEventListener(MouseEvent.CLICK,this.§3[§);
            this.§&"@§[_loc1_] = _loc4_;
            _loc1_++;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§79§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name != "1000")
         {
            §@!D§.visible = false;
            §%!?§(§;O§.STATE_NAME);
            return;
         }
         §@!D§.visible = true;
         (§+!p§.§;"-§ as §^"a§).§""G§.§%"E§ = false;
         (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§4$D§);
         if(§+!p§.§`?§.background)
         {
            §+!p§.§`?§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §@!D§.setText(_loc3_,"TextField_LevelName");
         §@!D§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§2#2§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§@r§(_loc2_),"Textfield_CollectedStars");
         §@!D§.setText(AngryBirdsBase.singleton.dataModel.userProgress.§72§(_loc2_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§2$4§(_loc2_),"Textfield_ME_Score");
         §@!D§.getItemByName("MovieClip_ThemeLeft").setVisibility(false);
         §@!D§.getItemByName("MovieClip_ThemeRight").setVisibility(false);
         §@!D§.getItemByName("Button_Prev").setVisibility(false);
         §@!D§.getItemByName("Button_Next").setVisibility(false);
         §@!D§.getItemByName("TextField_LevelNumberSmall").setVisibility(false);
         var _loc4_:Object = _loc2_.§@!S§(0);
         §#"?§ = new §"!1§(_loc4_.red,_loc4_.green,_loc4_.blue,1);
         §@!D§.getItemByName("MovieClip_ColorFade").changeMovieClip(§#"?§);
         this.§2"W§();
         this.§6"p§ = getTimer();
         §+!p§.§;"-§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §1!y§();
      }
      
      override public function deActivate() : void
      {
         §+!p§.§;"-§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.deActivate();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(getTimer() - this.§6"p§ >= this.§&#v§)
         {
            this.§6"p§ = getTimer();
            this.§2"W§();
         }
      }
      
      private function §2"W§() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= this.§"#9§)
         {
            this.updateEgg(_loc1_);
            _loc1_++;
         }
      }
      
      private function updateEgg(param1:int) : void
      {
         this.§&"@§[param1].updateEgg();
      }
      
      protected function §3[§(param1:MouseEvent) : void
      {
         §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
         var _loc2_:String = §;$1§(param1.currentTarget).§-#>§;
         §^"a§.§9!h§.§[5§(_loc2_);
      }
      
      override public function initLevelsRepeater() : void
      {
      }
   }
}
