package §94§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § o§.§%"!§;
   import § o§.ErrorPopup;
   import § o§.WarningPopup;
   import §&"J§.§4b§;
   import §&"J§.§`"v§;
   import §&"J§.§`]§;
   import §&$!§.§+#!§;
   import §6"r§.§!#A§;
   import §6V§.§`"5§;
   import §7"&§.§2>§;
   import §<#m§.§^#o§;
   import §<u§.§ "a§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   import §@#§.§`!Q§;
   import §]#K§.§>#x§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   
   public class §5!"§ extends §9#P§
   {
       
      
      protected var §6"F§:§4"v§;
      
      protected var § "G§:§2>§;
      
      public function §5!"§(param1:§^#Q§, param2:§2>§, param3:§+#!§, param4:Boolean = false, param5:String = "LevelLoadStateClassic")
      {
         this.§ "G§ = param2;
         super(param1,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§ !-§();
      }
      
      protected function § !-§() : void
      {
         §?Q§.movieClip.graphics.beginFill(0);
         §?Q§.movieClip.graphics.drawRect(0,0,4000,4000);
         §?Q§.movieClip.graphics.endFill();
         if(mLevelManager.currentLevel != null)
         {
            §?Q§.setText(this.getLoadingText(),"TextField_LevelLoading");
         }
      }
      
      protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + (mLevelManager as §`!Q§).§+#O§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§]#B§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initPackageManager() : §4b§
      {
         return new §`"v§(mLevelManager,this.§ "G§);
      }
      
      protected function §<#z§() : void
      {
         (§!#A§.§>q§ as §-#+§).§[#G§.§''§ = false;
         (§!#A§.§>q§ as §-#+§).§[#G§.§''§ = true;
         if(this.§6"F§)
         {
            this.§6"F§.removeEventListener(Event.COMPLETE,this.§6!,§);
            this.§6"F§ = null;
         }
         if(mLevelManager.currentLevel)
         {
            this.§6"F§ = new §4"v§();
            this.§6"F§.addEventListener(Event.COMPLETE,this.§6!,§);
            this.§6"F§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§6"F§.load(§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/startLevel?levelId=" + mLevelManager.currentLevel));
            return;
         }
         this.§[#U§(ErrorPopup.§^#c§);
         throw new Error("AngryBirdsBase.mLevelManager.currentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      override protected function initLevelLoad() : void
      {
         this.§<#z§();
         super.initLevelLoad();
      }
      
      protected function §[#U§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§%"!§.§4!P§,§^#o§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §=!,§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§%"!§.§4!P§,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §6!,§(param1:Event) : void
      {
         var _loc2_:§>#x§ = null;
         §&I§.§4#X§ = this.§6"F§.data;
         this.§6"F§ = null;
         if(§ "a§.§ "D§.§ #b§())
         {
            _loc2_ = § "a§.§ "D§.§^W§() as §>#x§;
            if(_loc2_)
            {
               if(param1 && param1.target && param1.target.data)
               {
                  _loc2_.§5a§(param1.target.data.userEvent);
               }
            }
         }
      }
      
      override public function get isReady() : Boolean
      {
         if(this.§6"F§)
         {
            return false;
         }
         return super.isReady;
      }
      
      override public function isLoadingReady() : Boolean
      {
         if(this.§6"F§)
         {
            return false;
         }
         return super.isLoadingReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + mLevelManager.currentLevel;
         §`"5§.§8s§(_loc1_);
         this.§=!,§();
         (§!#A§.§>q§ as §-#+§).§9"9§();
      }
      
      public function get dataModel() : §`]§
      {
         return §`]§(§-#+§.§;!$§.dataModel);
      }
   }
}
