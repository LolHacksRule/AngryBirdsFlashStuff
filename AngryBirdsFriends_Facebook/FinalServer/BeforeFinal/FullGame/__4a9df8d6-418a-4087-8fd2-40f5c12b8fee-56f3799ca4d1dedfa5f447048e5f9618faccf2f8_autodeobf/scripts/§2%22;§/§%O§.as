package §2";§
{
   import § !j§.§4#c§;
   import §!#C§.§4!Q§;
   import §!#C§.§4j§;
   import §!#C§.§^!z§;
   import §&!_§.§0I§;
   import §&n§.§]"%§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §,"v§.§;#A§;
   import §0!s§.§]"Y§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §9$2§.§7"L§;
   import §>z§.§#"l§;
   import §>z§.ErrorPopup;
   import §>z§.WarningPopup;
   import §?$<§.§]#A§;
   import §`#@§.§7n§;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   
   public class §%O§ extends §9!R§
   {
       
      
      protected var §+#N§:§!!o§;
      
      protected var §!#J§:§]#A§;
      
      public function §%O§(param1:§;"n§, param2:§]#A§, param3:§4#c§, param4:Boolean = false, param5:String = "LevelLoadStateClassic")
      {
         this.§!#J§ = param2;
         super(param1,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§=$,§();
      }
      
      protected function §=$,§() : void
      {
         §[$5§.movieClip.graphics.beginFill(0);
         §[$5§.movieClip.graphics.drawRect(0,0,4000,4000);
         §[$5§.movieClip.graphics.endFill();
         if(mLevelManager.currentLevel != null)
         {
            §[$5§.setText(this.getLoadingText(),"TextField_LevelLoading");
         }
      }
      
      protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + (mLevelManager as §;#A§).§`!-§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§7!J§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initPackageManager() : §^!z§
      {
         return new §4j§(mLevelManager,this.§!#J§);
      }
      
      protected function §!"n§() : void
      {
         (§7n§.§-$<§ as § #v§).§?"_§.§=$<§ = false;
         (§7n§.§-$<§ as § #v§).§?"_§.§=$<§ = true;
         if(this.§+#N§)
         {
            this.§+#N§.removeEventListener(Event.COMPLETE,this.§&"M§);
            this.§+#N§ = null;
         }
         if(mLevelManager.currentLevel)
         {
            this.§+#N§ = new §!!o§();
            this.§+#N§.addEventListener(Event.COMPLETE,this.§&"M§);
            this.§+#N§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§+#N§.load(§;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/startLevel?levelId=" + mLevelManager.currentLevel));
            return;
         }
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Level not found."));
         throw new Error("AngryBirdsBase.mLevelManager.currentLevel was null in initLevelLoad() in StateFacebookLevelLoad.");
      }
      
      override protected function initLevelLoad() : void
      {
         this.§!"n§();
         super.initLevelLoad();
      }
      
      protected function §;%§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §&"M§(param1:Event) : void
      {
         var _loc2_:§]"%§ = null;
         §#$"§.§9#,§ = this.§+#N§.data;
         this.§+#N§ = null;
         if(§7"L§.§`"H§.§58§())
         {
            _loc2_ = §7"L§.§`"H§.§9'§() as §]"%§;
            if(_loc2_)
            {
               if(param1 && param1.target && param1.target.data)
               {
                  _loc2_.§`#[§(param1.target.data.userEvent);
               }
            }
         }
      }
      
      override public function get isReady() : Boolean
      {
         if(this.§+#N§)
         {
            return false;
         }
         return super.isReady;
      }
      
      override public function isLoadingReady() : Boolean
      {
         if(this.§+#N§)
         {
            return false;
         }
         return super.isLoadingReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + mLevelManager.currentLevel;
         §0I§.§?j§(_loc1_);
         this.§;%§();
         (§7n§.§-$<§ as § #v§).§7"a§();
      }
      
      public function get dataModel() : §4!Q§
      {
         return §4!Q§(§ #v§.§1!!§.dataModel);
      }
   }
}
