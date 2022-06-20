package §3=§
{
   import §!!T§.§1"9§;
   import §"$=§.§'![§;
   import §"$=§.§,-§;
   import §"$=§.§=$&§;
   import §+#B§.§5"w§;
   import §3"G§.§16§;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.§%#§;
   import §?!N§.ErrorPopup;
   import §?!N§.WarningPopup;
   import §?§.§?!e§;
   import §[";§.§8!n§;
   import §]"'§.§&$!§;
   import §]"'§.§5$$§;
   import §]"'§.§@"%§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   
   public class §6#g§ extends §#$@§
   {
       
      
      protected var §^6§:§'!n§;
      
      protected var §`!2§:§?!e§;
      
      public function §6#g§(param1:§'![§, param2:§?!e§, param3:§16§, param4:Boolean = false, param5:String = "LevelLoadStateClassic")
      {
         this.§`!2§ = param2;
         super(param1,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§5!E§();
      }
      
      protected function §5!E§() : void
      {
         §<"`§.movieClip.graphics.beginFill(0);
         §<"`§.movieClip.graphics.drawRect(0,0,4000,4000);
         §<"`§.movieClip.graphics.endFill();
         if(mLevelManager.currentLevel != null)
         {
            §<"`§.setText(this.getLoadingText(),"TextField_LevelLoading");
         }
      }
      
      protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + (mLevelManager as §,-§).§#6§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§=$&§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initPackageManager() : §5$$§
      {
         return new §&$!§(mLevelManager,this.§`!2§);
      }
      
      protected function §9>§() : void
      {
         (§%"T§.§>$<§ as §'"a§).§ !g§.§8"N§ = false;
         (§%"T§.§>$<§ as §'"a§).§ !g§.§8"N§ = true;
         if(this.§^6§)
         {
            this.§^6§.removeEventListener(Event.COMPLETE,this.§9!P§);
            this.§^6§ = null;
         }
         if(mLevelManager.currentLevel)
         {
            this.§^6§ = new §'!n§();
            this.§^6§.addEventListener(Event.COMPLETE,this.§9!P§);
            this.§^6§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§^6§.load(§2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/startLevel?levelId=" + mLevelManager.currentLevel));
            return;
         }
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Level not found."));
         throw new Error("AngryBirdsBase.mLevelManager.currentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      override protected function initLevelLoad() : void
      {
         this.§9>§();
         super.initLevelLoad();
      }
      
      protected function §^!c§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§%#§.§3t§,§9#5§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §9!P§(param1:Event) : void
      {
         var _loc2_:§8!n§ = null;
         §0!e§.§?#s§ = this.§^6§.data;
         this.§^6§ = null;
         if(§1"9§.§?q§.§-"?§())
         {
            _loc2_ = §1"9§.§?q§.§[!8§() as §8!n§;
            if(_loc2_)
            {
               if(param1 && param1.target && param1.target.data)
               {
                  _loc2_.§%6§(param1.target.data.userEvent);
               }
            }
         }
      }
      
      override public function get isReady() : Boolean
      {
         if(this.§^6§)
         {
            return false;
         }
         return super.isReady;
      }
      
      override public function isLoadingReady() : Boolean
      {
         if(this.§^6§)
         {
            return false;
         }
         return super.isLoadingReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + mLevelManager.currentLevel;
         §5"w§.§0""§(_loc1_);
         this.§^!c§();
         (§%"T§.§>$<§ as §'"a§).§[$8§();
      }
      
      public function get dataModel() : §@"%§
      {
         return §@"%§(§'"a§.§!!8§.dataModel);
      }
   }
}
