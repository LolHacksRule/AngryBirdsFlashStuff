package §,!=§
{
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §#v§.§6^§;
   import §%$!§.§!#$§;
   import §%$!§.§+3§;
   import §%$!§.§2#§;
   import §'U§.§]#[§;
   import §>!#§.§,"W§;
   import §?"R§.ErrorPopup;
   import §?"R§.WarningPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import §^!,§.§<d§;
   import §`#C§.§3Z§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   
   public class §9!"§ extends §@#j§
   {
       
      
      protected var §4#,§:§5$!§;
      
      protected var §#o§:§3Z§;
      
      public function §9!"§(param1:§#!?§, param2:§3Z§, param3:§]#[§, param4:Boolean = false, param5:String = "LevelLoadStateClassic")
      {
         this.§#o§ = param2;
         super(param1,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§?!+§();
      }
      
      protected function §?!+§() : void
      {
         §!$§.movieClip.graphics.beginFill(0);
         §!$§.movieClip.graphics.drawRect(0,0,4000,4000);
         §!$§.movieClip.graphics.endFill();
         if(mLevelManager.currentLevel != null)
         {
            §!$§.setText(this.getLoadingText(),"TextField_LevelLoading");
         }
      }
      
      protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + (mLevelManager as §6^§).§[!2§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§-"R§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initPackageManager() : §2#§
      {
         return new §!#$§(mLevelManager,this.§#o§);
      }
      
      protected function §?"9§() : void
      {
         (§>"$§.§<_§ as §8G§).§0"n§.§'"C§ = false;
         (§>"$§.§<_§ as §8G§).§0"n§.§'"C§ = true;
         if(this.§4#,§)
         {
            this.§4#,§.removeEventListener(Event.COMPLETE,this.§4"L§);
            this.§4#,§ = null;
         }
         if(mLevelManager.currentLevel)
         {
            this.§=!J§();
            this.§4#,§ = new §5$!§();
            this.§4#,§.addEventListener(Event.COMPLETE,this.§4"L§);
            this.§4#,§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§4#,§.load(§>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/startLevel?levelId=" + mLevelManager.currentLevel));
            return;
         }
         this.§@!w§(ErrorPopup.§^#x§);
         throw new Error("AngryBirdsBase.mLevelManager.currentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      override protected function initLevelLoad() : void
      {
         this.§?"9§();
         super.initLevelLoad();
      }
      
      private function §=!J§() : void
      {
         if(this.dataModel.§&!?§.§=#t§())
         {
            this.dataModel.§&!?§.§`$$§(mLevelManager.currentLevel,true);
         }
      }
      
      protected function §@!w§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§[W§.§5Z§,§<d§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §=#r§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§[W§.§5Z§,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §4"L§(param1:Event) : void
      {
         §,#?§.§2!0§ = this.§4#,§.data;
         this.§4#,§ = null;
      }
      
      override public function get isReady() : Boolean
      {
         if(this.§4#,§)
         {
            return false;
         }
         return super.isReady;
      }
      
      override public function isLoadingReady() : Boolean
      {
         if(this.§4#,§)
         {
            return false;
         }
         return super.isLoadingReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + mLevelManager.currentLevel;
         §,"W§.§?"L§(_loc1_);
         this.§=#r§();
         (§>"$§.§<_§ as §8G§).§7#8§();
      }
      
      public function get dataModel() : §+3§
      {
         return §+3§(§8G§.§%#S§.dataModel);
      }
   }
}
