package §"!@§
{
   import §'#d§.§5!Z§;
   import §1!=§.§^"U§;
   import §2G§.§#"8§;
   import §2G§.§2!2§;
   import §2G§.§?§;
   import §5P§.§""C§;
   import §8"L§.§[t§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   import §;$3§.§?!0§;
   import §="h§.§`"O§;
   import §?P§.ErrorPopup;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import §`7§.§`"x§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   
   public class §4<§ extends §8"o§
   {
       
      
      protected var §9Z§:§1"V§;
      
      protected var §<"a§:§[t§;
      
      public function §4<§(param1:§8=§, param2:§[t§, param3:§""C§, param4:Boolean = false, param5:String = "LevelLoadStateClassic")
      {
         this.§<"a§ = param2;
         super(param1,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§8#v§();
      }
      
      protected function §8#v§() : void
      {
         §`!H§.movieClip.graphics.beginFill(0);
         §`!H§.movieClip.graphics.drawRect(0,0,4000,4000);
         §`!H§.movieClip.graphics.endFill();
         if(mLevelManager.currentLevel != null)
         {
            §`!H§.setText(this.getLoadingText(),"TextField_LevelLoading");
         }
      }
      
      protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + (mLevelManager as §?!0§).§7#J§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§>f§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initPackageManager() : §2!2§
      {
         return new §?#2§(mLevelManager,this.§<"a§);
      }
      
      protected function §!r§() : void
      {
         (§3#U§.§9#^§ as §,A§).§%#@§.§"!m§ = false;
         (§3#U§.§9#^§ as §,A§).§%#@§.§"!m§ = true;
         if(this.§9Z§)
         {
            this.§9Z§.removeEventListener(Event.COMPLETE,this.§6#e§);
            this.§9Z§ = null;
         }
         if(mLevelManager.currentLevel)
         {
            this.§9Z§ = new §1"V§();
            this.§9Z§.addEventListener(Event.COMPLETE,this.§6#e§);
            this.§9Z§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§9Z§.load(§["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/startLevel?levelId=" + mLevelManager.currentLevel));
            return;
         }
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Level not found."));
         throw new Error("AngryBirdsBase.mLevelManager.currentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      override protected function initLevelLoad() : void
      {
         this.§!r§();
         super.initLevelLoad();
      }
      
      protected function §<#Y§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §6#e§(param1:Event) : void
      {
         var _loc2_:§5!Z§ = null;
         §6!+§.§0$8§ = this.§9Z§.data;
         this.§9Z§ = null;
         if(§`"O§.§6!§.§8!>§())
         {
            _loc2_ = §`"O§.§6!§.§!!I§() as §5!Z§;
            if(_loc2_)
            {
               if(param1 && param1.target && param1.target.data)
               {
                  _loc2_.§>#<§(param1.target.data.userEvent);
               }
            }
         }
      }
      
      override public function get isReady() : Boolean
      {
         if(this.§9Z§)
         {
            return false;
         }
         return super.isReady;
      }
      
      override public function isLoadingReady() : Boolean
      {
         if(this.§9Z§)
         {
            return false;
         }
         return super.isLoadingReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + mLevelManager.currentLevel;
         §`"x§.§#E§(_loc1_);
         this.§<#Y§();
         (§3#U§.§9#^§ as §,A§).§[#g§();
      }
      
      public function get dataModel() : §#"8§
      {
         return §#"8§(§,A§.§2#O§.dataModel);
      }
   }
}
