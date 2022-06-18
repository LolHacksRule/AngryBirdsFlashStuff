package §^1§
{
   import § #_§.§?!>§;
   import § h§.§-!S§;
   import § h§.ErrorPopup;
   import § h§.WarningPopup;
   import §+!n§.§+!p§;
   import §+"_§.§>"%§;
   import §-!j§.§,"!§;
   import §2E§.§'@§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §9!6§.§## §;
   import §>#Y§.§"1§;
   import §>#Y§.§,#b§;
   import §>#Y§.§@K§;
   import §?o§.§ ^§;
   import §?o§.§4#?§;
   import §?o§.§?"m§;
   import §]M§.§=!a§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   
   public class §3"o§ extends §2t§
   {
       
      
      protected var §[#!§:§5"f§;
      
      protected var §+#D§:§,"!§;
      
      public function §3"o§(param1:§4#?§, param2:§,"!§, param3:§?!>§, param4:Boolean = false, param5:String = "LevelLoadStateClassic")
      {
         this.§+#D§ = param2;
         super(param1,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§ [§();
      }
      
      protected function § [§() : void
      {
         §@!D§.movieClip.graphics.beginFill(0);
         §@!D§.movieClip.graphics.drawRect(0,0,4000,4000);
         §@!D§.movieClip.graphics.endFill();
         if(mLevelManager.currentLevel != null)
         {
            §@!D§.setText(this.getLoadingText(),"TextField_LevelLoading");
         }
      }
      
      protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + (mLevelManager as §?"m§).§&#W§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§ ^§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initPackageManager() : §"1§
      {
         return new §@K§(mLevelManager,this.§+#D§);
      }
      
      protected function §!#c§() : void
      {
         (§+!p§.§;"-§ as §^"a§).§""G§.§%"E§ = false;
         (§+!p§.§;"-§ as §^"a§).§""G§.§%"E§ = true;
         if(this.§[#!§)
         {
            this.§[#!§.removeEventListener(Event.COMPLETE,this.§]f§);
            this.§[#!§ = null;
         }
         if(mLevelManager.currentLevel)
         {
            this.§[#!§ = new §5"f§();
            this.§[#!§.addEventListener(Event.COMPLETE,this.§]f§);
            this.§[#!§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§[#!§.load(§!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/startLevel?levelId=" + mLevelManager.currentLevel));
            return;
         }
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Level not found."));
         throw new Error("AngryBirdsBase.mLevelManager.currentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      override protected function initLevelLoad() : void
      {
         this.§!#c§();
         super.initLevelLoad();
      }
      
      protected function §[T§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§-!S§.§ !^§,§## §.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §]f§(param1:Event) : void
      {
         var _loc2_:§>"%§ = null;
         §2#u§.§7#>§ = this.§[#!§.data;
         this.§[#!§ = null;
         if(§=!a§.§3"1§.§#"P§())
         {
            _loc2_ = §=!a§.§3"1§.§>"Q§() as §>"%§;
            if(_loc2_)
            {
               if(param1 && param1.target && param1.target.data)
               {
                  _loc2_.§@$§(param1.target.data.userEvent);
               }
            }
         }
      }
      
      override public function get isReady() : Boolean
      {
         if(this.§[#!§)
         {
            return false;
         }
         return super.isReady;
      }
      
      override public function isLoadingReady() : Boolean
      {
         if(this.§[#!§)
         {
            return false;
         }
         return super.isLoadingReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + mLevelManager.currentLevel;
         §'@§.§&"g§(_loc1_);
         this.§[T§();
         (§+!p§.§;"-§ as §^"a§).§7"D§();
      }
      
      public function get dataModel() : §,#b§
      {
         return §,#b§(§^"a§.§9!h§.dataModel);
      }
   }
}
