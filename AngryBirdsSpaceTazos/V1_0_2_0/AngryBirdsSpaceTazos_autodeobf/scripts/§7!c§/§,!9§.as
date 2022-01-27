package §7!c§
{
   import §!i§.§?"%§;
   import §!i§.§^!d§;
   import §"!>§.§<!o§;
   import §'#§.§^4§;
   import §7!s§.HighscoreSidebar;
   import §;!0§.;
   import §;"=§.§6!<§;
   import §]!O§.§,"1§;
   import §]!O§.ColorFadeLayerEvent;
   import §]!O§.§^!j§;
   
   public class §,!9§ extends §3!<§
   {
       
      
      protected var §=!#§:§^!j§ = null;
      
      private var § !w§:Boolean;
      
      public function §,!9§(param1:§#2§, param2:§<!o§, param3:§6!<§, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§=!#§ = new §^!j§(0,0,0,0);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§,"1§ = null;
         if(this.§=!#§ && this.§=!#§.parent == §4§.container.mClip)
         {
            §4§.container.mClip.removeChild(this.§=!#§);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.§ !w§ = false;
         if((§&!h§.§ u§ as §^"=§).§?P§.§`!t§())
         {
            (§&!h§.§ u§ as §^"=§).§?P§.§;j§(false);
         }
         else
         {
            (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(false);
         }
         for each(_loc2_ in (§&!h§.§ u§ as §^"=§).§?P§.§[";§)
         {
            (§4§.getItemByName("MovieClip_ChapterSelectionBG") as §^!d§).mClip.addChild(_loc2_);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§,"1§ = null;
         for each(_loc1_ in (§&!h§.§ u§ as §^"=§).§?P§.§[";§)
         {
            (§4§.getItemByName("MovieClip_ChapterSelectionBG") as §^!d§).mClip.removeChild(_loc1_);
         }
         super.deActivate();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §^4§.§<"B§.updateTextFields(§4§.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         if(§,W§.currentLevel != null)
         {
            _loc1_ = (§4§.getItemByName("TextField_LevelLoading") as §?"%§).§8!o§.text;
            _loc2_ = int(§,W§.currentLevel.charAt(0)) - 1;
            _loc3_ = int(§,W§.currentLevel.substring(2));
            _loc4_ = _loc3_ + HighscoreSidebar.§'w§ * _loc2_ - 1;
            _loc5_ = HighscoreSidebar.§3!i§[_loc4_];
            §4§.setText(_loc1_ + " " + _loc5_,"TextField_LevelLoading");
         }
      }
      
      override public function onLevelLoadReady() : void
      {
         this.§^j§();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         this.§9"G§(param1);
      }
      
      private function §9"G§(param1:Number) : void
      {
         var _loc2_:§,"1§ = null;
         for each(_loc2_ in (§&!h§.§ u§ as §^"=§).§?P§.§[";§)
         {
            _loc2_.update(param1);
            if(!_loc2_.isAlive)
            {
               (§&!h§.§ u§ as §^"=§).§?P§.§[";§.splice((§&!h§.§ u§ as §^"=§).§?P§.§[";§.indexOf(_loc2_),1);
               (§4§.getItemByName("MovieClip_ChapterSelectionBG") as §^!d§).mClip.removeChild(_loc2_);
            }
         }
      }
      
      protected function §^j§() : void
      {
         if(this.§=!#§ && !this.§ !w§)
         {
            this.§ !w§ = true;
            this.§=!#§.§8!j§(0);
            if(this.§=!#§.parent == §4§.container.mClip)
            {
               §4§.container.mClip.removeChild(this.§=!#§);
               §4§.container.mClip.addChild(this.§=!#§);
            }
            else
            {
               §4§.container.mClip.addChild(this.§=!#§);
            }
            this.§=!#§.§#A§(1,0.25);
            this.§=!#§.addEventListener(ColorFadeLayerEvent.§9"?§,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.§=!#§.removeEventListener(ColorFadeLayerEvent.§9"?§,this.onFadeComplete);
         §2g§(§'"-§());
      }
   }
}
