package §9%§
{
   import §%"%§.§2Z§;
   import §1!k§.§2!^§;
   import §1!k§.§6!I§;
   import §1!k§.ColorFadeLayerEvent;
   import §1z§.§^!@§;
   import §3>§.§[8§;
   import §4u§.§!H§;
   import §="<§.§#`§;
   import §="<§.§'!j§;
   import §>!x§.HighscoreSidebar;
   
   public class §]!F§ extends §@!?§
   {
       
      
      protected var §[H§:§2!^§ = null;
      
      private var §#!p§:Boolean;
      
      public function §]!F§(param1:§^!@§, param2:§2Z§, param3:§[8§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§[H§ = new §2!^§(0,0,0,0);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§6!I§ = null;
         if(this.§[H§ && this.§[H§.parent == §%!A§.container.mClip)
         {
            §%!A§.container.mClip.removeChild(this.§[H§);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.§#!p§ = false;
         if((§2&§.§6o§ as §@T§).§56§.§,1§())
         {
            (§2&§.§6o§ as §@T§).§56§.§,j§(false);
         }
         else
         {
            (§2&§.§6o§ as §@T§).§56§.§&"C§(false);
         }
         for each(_loc2_ in (§2&§.§6o§ as §@T§).§56§.§5§)
         {
            (§%!A§.getItemByName("MovieClip_ChapterSelectionBG") as §'!j§).mClip.addChild(_loc2_);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§6!I§ = null;
         for each(_loc1_ in (§2&§.§6o§ as §@T§).§56§.§5§)
         {
            (§%!A§.getItemByName("MovieClip_ChapterSelectionBG") as §'!j§).mClip.removeChild(_loc1_);
         }
         super.deActivate();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §!H§.§3R§.updateTextFields(§%!A§.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         if(§#"=§.currentLevel != null)
         {
            _loc1_ = (§%!A§.getItemByName("TextField_LevelLoading") as §#`§).§';§.text;
            _loc2_ = int(§#"=§.currentLevel.charAt(0)) - 1;
            _loc3_ = int(§#"=§.currentLevel.substring(2));
            _loc4_ = _loc3_ + HighscoreSidebar.§72§ * _loc2_ - 1;
            _loc5_ = HighscoreSidebar.§9p§[_loc4_];
            §%!A§.setText(_loc1_ + " " + _loc5_,"TextField_LevelLoading");
         }
      }
      
      override public function onLevelLoadReady() : void
      {
         this.§?<§();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§5!z§(param1);
      }
      
      private function §5!z§(param1:Number) : void
      {
         var _loc2_:§6!I§ = null;
         for each(_loc2_ in (§2&§.§6o§ as §@T§).§56§.§5§)
         {
            _loc2_.update(param1);
            if(!_loc2_.isAlive)
            {
               (§2&§.§6o§ as §@T§).§56§.§5§.splice((§2&§.§6o§ as §@T§).§56§.§5§.indexOf(_loc2_),1);
               (§%!A§.getItemByName("MovieClip_ChapterSelectionBG") as §'!j§).mClip.removeChild(_loc2_);
            }
         }
      }
      
      protected function §?<§() : void
      {
         if(this.§[H§ && !this.§#!p§)
         {
            this.§#!p§ = true;
            this.§[H§.§6f§(0);
            if(this.§[H§.parent == §%!A§.container.mClip)
            {
               §%!A§.container.mClip.removeChild(this.§[H§);
               §%!A§.container.mClip.addChild(this.§[H§);
            }
            else
            {
               §%!A§.container.mClip.addChild(this.§[H§);
            }
            this.§[H§.§[!1§(1,0.25);
            this.§[H§.addEventListener(ColorFadeLayerEvent.§4,§,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§[H§.removeEventListener(ColorFadeLayerEvent.§4,§,this.onFadeComplete);
         § !I§(§3P§());
      }
   }
}
