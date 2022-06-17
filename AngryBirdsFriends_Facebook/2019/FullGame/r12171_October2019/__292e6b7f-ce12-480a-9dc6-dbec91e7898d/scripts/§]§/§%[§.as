package §]§
{
   import § $0§.§5R§;
   import §#"4§.§<"G§;
   import §'"b§.§ #F§;
   import §+`§.§%"q§;
   import §,#,§.§#t§;
   import §,#,§.§7Y§;
   import §,#,§.§=#o§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §7#$§.§8$%§;
   import §7#$§.§?# §;
   import §7#$§.§]#q§;
   import §8#K§.§'#_§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.ErrorPopup;
   import §?Q§.WarningPopup;
   import §`!Z§.§=!7§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   
   public class §%[§ extends §8$C§
   {
       
      
      protected var §9!-§:§-$C§;
      
      protected var §7"Z§:§'#_§;
      
      public function §%[§(param1:§]#q§, param2:§'#_§, param3:§%"q§, param4:Boolean = false, param5:String = "LevelLoadStateClassic")
      {
         this.§7"Z§ = param2;
         super(param1,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§!!l§();
      }
      
      protected function §!!l§() : void
      {
         §;!w§.movieClip.graphics.beginFill(0);
         §;!w§.movieClip.graphics.drawRect(0,0,4000,4000);
         §;!w§.movieClip.graphics.endFill();
         if(mLevelManager.currentLevel != null)
         {
            §;!w§.setText(this.getLoadingText(),"TextField_LevelLoading");
         }
      }
      
      protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + (mLevelManager as §8$%§).§0"<§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§?# §) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initPackageManager() : §7Y§
      {
         return new §#t§(mLevelManager,this.§7"Z§);
      }
      
      protected function §5+§() : void
      {
         (§]$?§.§;u§ as §@z§).§`L§.§8#P§ = false;
         (§]$?§.§;u§ as §@z§).§`L§.§8#P§ = true;
         if(this.§9!-§)
         {
            this.§9!-§.removeEventListener(Event.COMPLETE,this.§9#A§);
            this.§9!-§ = null;
         }
         if(mLevelManager.currentLevel)
         {
            this.§9!-§ = new §-$C§();
            this.§9!-§.addEventListener(Event.COMPLETE,this.§9#A§);
            this.§9!-§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§9!-§.load(§?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/startLevel?levelId=" + mLevelManager.currentLevel));
            return;
         }
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Level not found."));
         throw new Error("AngryBirdsBase.mLevelManager.currentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      override protected function initLevelLoad() : void
      {
         this.§5+§();
         super.initLevelLoad();
      }
      
      protected function §4!0§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§@#D§.§,"4§,§5R§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §9#A§(param1:Event) : void
      {
         var _loc2_:§=!7§ = null;
         § "F§.§2O§ = this.§9!-§.data;
         this.§9!-§ = null;
         if(§ #F§.§+!,§.§1#@§())
         {
            _loc2_ = § #F§.§+!,§.§4#P§() as §=!7§;
            if(_loc2_)
            {
               if(param1 && param1.target && param1.target.data)
               {
                  _loc2_.§8#y§(param1.target.data.userEvent);
               }
            }
         }
      }
      
      override public function get isReady() : Boolean
      {
         if(this.§9!-§)
         {
            return false;
         }
         return super.isReady;
      }
      
      override public function isLoadingReady() : Boolean
      {
         if(this.§9!-§)
         {
            return false;
         }
         return super.isLoadingReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + mLevelManager.currentLevel;
         §<"G§.§+"r§(_loc1_);
         this.§4!0§();
         (§]$?§.§;u§ as §@z§).§@#U§();
      }
      
      public function get dataModel() : §=#o§
      {
         return §=#o§(§@z§.§ !D§.dataModel);
      }
   }
}
