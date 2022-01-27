package §=" §
{
   import §'!n§.§[!I§;
   import §,!7§.§2a§;
   import §,!7§.§8,§;
   import §4",§.§,!j§;
   import §6!M§.§3Y§;
   import §6"A§.HighscoreSidebar;
   import §71§.§;l§;
   import §9!L§.§8u§;
   import §9!L§.§="!§;
   import §9!L§.ColorFadeLayerEvent;
   
   public class §-k§ extends §3",§
   {
       
      
      protected var §@!3§:§8u§ = null;
      
      private var §"8§:Boolean;
      
      public function §-k§(param1:§,!j§, param2:§;l§, param3:§3Y§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§@!3§ = new §8u§(0,0,0,0);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§="!§ = null;
         if(this.§@!3§ && this.§@!3§.parent == §6!J§.container.mClip)
         {
            §6!J§.container.mClip.removeChild(this.§@!3§);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.§"8§ = false;
         if((§&"<§.§<!7§ as §["!§).§^"<§.§<<§())
         {
            (§&"<§.§<!7§ as §["!§).§^"<§.§^"@§(false);
         }
         else
         {
            (§&"<§.§<!7§ as §["!§).§^"<§.§@R§(false);
         }
         for each(_loc2_ in (§&"<§.§<!7§ as §["!§).§^"<§.§%"=§)
         {
            (§6!J§.getItemByName("MovieClip_ChapterSelectionBG") as §8,§).mClip.addChild(_loc2_);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§="!§ = null;
         for each(_loc1_ in (§&"<§.§<!7§ as §["!§).§^"<§.§%"=§)
         {
            (§6!J§.getItemByName("MovieClip_ChapterSelectionBG") as §8,§).mClip.removeChild(_loc1_);
         }
         super.deActivate();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §[!I§.§8!J§.updateTextFields(§6!J§.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         if(§]m§.currentLevel != null)
         {
            _loc1_ = (§6!J§.getItemByName("TextField_LevelLoading") as §2a§).§%!%§.text;
            _loc2_ = int(§]m§.currentLevel.charAt(0)) - 1;
            _loc3_ = int(§]m§.currentLevel.substring(2));
            _loc4_ = _loc3_ + HighscoreSidebar.§>U§ * _loc2_ - 1;
            _loc5_ = HighscoreSidebar.§-!-§[_loc4_];
            §6!J§.setText(_loc1_ + " " + _loc5_,"TextField_LevelLoading");
         }
      }
      
      override public function onLevelLoadReady() : void
      {
         this.§'H§();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§5&§(param1);
      }
      
      private function §5&§(param1:Number) : void
      {
         var _loc2_:§="!§ = null;
         for each(_loc2_ in (§&"<§.§<!7§ as §["!§).§^"<§.§%"=§)
         {
            _loc2_.update(param1);
            if(!_loc2_.isAlive)
            {
               (§&"<§.§<!7§ as §["!§).§^"<§.§%"=§.splice((§&"<§.§<!7§ as §["!§).§^"<§.§%"=§.indexOf(_loc2_),1);
               (§6!J§.getItemByName("MovieClip_ChapterSelectionBG") as §8,§).mClip.removeChild(_loc2_);
            }
         }
      }
      
      protected function §'H§() : void
      {
         if(this.§@!3§ && !this.§"8§)
         {
            this.§"8§ = true;
            this.§@!3§.§"!i§(0);
            if(this.§@!3§.parent == §6!J§.container.mClip)
            {
               §6!J§.container.mClip.removeChild(this.§@!3§);
               §6!J§.container.mClip.addChild(this.§@!3§);
            }
            else
            {
               §6!J§.container.mClip.addChild(this.§@!3§);
            }
            this.§@!3§.§<"&§(1,0.25);
            this.§@!3§.addEventListener(ColorFadeLayerEvent.§+[§,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§@!3§.removeEventListener(ColorFadeLayerEvent.§+[§,this.onFadeComplete);
         §'Q§(§2q§());
      }
   }
}
